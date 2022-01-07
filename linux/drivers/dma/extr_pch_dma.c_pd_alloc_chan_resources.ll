; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pd_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.pch_dma_chan = type { i32, i32, i32 }
%struct.pch_dma_desc = type { i32 }

@tmp_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DMA channel not idle ?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@init_nr_desc_per_channel = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Only allocated %d initial descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @pd_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.pch_dma_chan*, align 8
  %5 = alloca %struct.pch_dma_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.pch_dma_chan* @to_pd_chan(%struct.dma_chan* %7)
  store %struct.pch_dma_chan* %8, %struct.pch_dma_chan** %4, align 8
  %9 = load i32, i32* @tmp_list, align 4
  %10 = call i32 @LIST_HEAD(i32 %9)
  %11 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %12 = call i32 @pdc_is_idle(%struct.pch_dma_chan* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %16 = call i32 @chan2dev(%struct.dma_chan* %15)
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %22 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %21, i32 0, i32 2
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %27 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  br label %72

29:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @init_nr_desc_per_channel, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.pch_dma_desc* @pdc_alloc_desc(%struct.dma_chan* %35, i32 %36)
  store %struct.pch_dma_desc* %37, %struct.pch_dma_desc** %5, align 8
  %38 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %5, align 8
  %39 = icmp ne %struct.pch_dma_desc* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %42 = call i32 @chan2dev(%struct.dma_chan* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %34
  %46 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %5, align 8
  %47 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %47, i32* @tmp_list)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %30

52:                                               ; preds = %40, %30
  %53 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_irq(i32* %54)
  %56 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %57 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %56, i32 0, i32 2
  %58 = call i32 @list_splice(i32* @tmp_list, i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %61 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %63 = call i32 @dma_cookie_init(%struct.dma_chan* %62)
  %64 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %65 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %68 = call i32 @pdc_enable_irq(%struct.dma_chan* %67, i32 1)
  %69 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %4, align 8
  %70 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %52, %25, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.pch_dma_chan* @to_pd_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @pdc_is_idle(%struct.pch_dma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.pch_dma_desc* @pdc_alloc_desc(%struct.dma_chan*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pdc_enable_irq(%struct.dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
