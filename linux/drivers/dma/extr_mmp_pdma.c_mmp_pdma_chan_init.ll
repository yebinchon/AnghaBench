; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_device = type { %struct.TYPE_4__, i32, i32, %struct.mmp_pdma_phy* }
%struct.TYPE_4__ = type { i32 }
%struct.mmp_pdma_phy = type { i32, i32 }
%struct.mmp_pdma_chan = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mmp_pdma_chan_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pdma\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"channel request irq fail!\0A\00", align 1
@dma_do_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_pdma_device*, i32, i32)* @mmp_pdma_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_chan_init(%struct.mmp_pdma_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmp_pdma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmp_pdma_phy*, align 8
  %9 = alloca %struct.mmp_pdma_chan*, align 8
  %10 = alloca i32, align 4
  store %struct.mmp_pdma_device* %0, %struct.mmp_pdma_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %12 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %11, i32 0, i32 3
  %13 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %13, i64 %15
  store %struct.mmp_pdma_phy* %16, %struct.mmp_pdma_phy** %8, align 8
  %17 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %18 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mmp_pdma_chan* @devm_kzalloc(i32 %19, i32 40, i32 %20)
  store %struct.mmp_pdma_chan* %21, %struct.mmp_pdma_chan** %9, align 8
  %22 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %23 = icmp eq %struct.mmp_pdma_chan* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %8, align 8
  %30 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %32 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %8, align 8
  %35 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %27
  %39 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %40 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @mmp_pdma_chan_handler, align 4
  %44 = load i32, i32* @IRQF_SHARED, align 4
  %45 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %8, align 8
  %46 = call i32 @devm_request_irq(i32 %41, i32 %42, i32 %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.mmp_pdma_phy* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %51 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %89

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %58 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %57, i32 0, i32 5
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %61 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %64 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %66 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %65, i32 0, i32 0
  %67 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %68 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %71 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %70, i32 0, i32 3
  %72 = load i32, i32* @dma_do_tasklet, align 4
  %73 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %74 = ptrtoint %struct.mmp_pdma_chan* %73 to i64
  %75 = call i32 @tasklet_init(i32* %71, i32 %72, i64 %74)
  %76 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %77 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %76, i32 0, i32 2
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %80 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %79, i32 0, i32 1
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %9, align 8
  %83 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %5, align 8
  %86 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @list_add_tail(i32* %84, i32* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %56, %49, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mmp_pdma_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.mmp_pdma_phy*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
