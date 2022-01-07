; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.xgene_dma_chan = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Free all resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @xgene_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.xgene_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.xgene_dma_chan* @to_dma_chan(%struct.dma_chan* %4)
  store %struct.xgene_dma_chan* %5, %struct.xgene_dma_chan** %3, align 8
  %6 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %7 = call i32 @chan_dbg(%struct.xgene_dma_chan* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %15 = call i32 @xgene_dma_cleanup_descriptors(%struct.xgene_dma_chan* %14)
  %16 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %20 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %20, i32 0, i32 4
  %22 = call i32 @xgene_dma_free_desc_list(%struct.xgene_dma_chan* %19, i32* %21)
  %23 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %24 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %24, i32 0, i32 3
  %26 = call i32 @xgene_dma_free_desc_list(%struct.xgene_dma_chan* %23, i32* %25)
  %27 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %28 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %28, i32 0, i32 2
  %30 = call i32 @xgene_dma_free_desc_list(%struct.xgene_dma_chan* %27, i32* %29)
  %31 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dma_pool_destroy(i32* %36)
  %38 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.xgene_dma_chan* @to_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @chan_dbg(%struct.xgene_dma_chan*, i8*) #1

declare dso_local i32 @xgene_dma_cleanup_descriptors(%struct.xgene_dma_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xgene_dma_free_desc_list(%struct.xgene_dma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
