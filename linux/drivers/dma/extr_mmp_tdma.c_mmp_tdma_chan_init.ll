; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_tdma_device = type { %struct.TYPE_4__, %struct.mmp_tdma_chan**, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mmp_tdma_chan = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.gen_pool*, i64, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.gen_pool = type { i32 }

@TDMA_CHANNEL_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many channels for device!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@dma_do_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_tdma_device*, i32, i32, i32, %struct.gen_pool*)* @mmp_tdma_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_chan_init(%struct.mmp_tdma_device* %0, i32 %1, i32 %2, i32 %3, %struct.gen_pool* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmp_tdma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gen_pool*, align 8
  %12 = alloca %struct.mmp_tdma_chan*, align 8
  store %struct.mmp_tdma_device* %0, %struct.mmp_tdma_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.gen_pool* %4, %struct.gen_pool** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TDMA_CHANNEL_NUM, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %18 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %95

23:                                               ; preds = %5
  %24 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %25 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mmp_tdma_chan* @devm_kzalloc(i32 %26, i32 64, i32 %27)
  store %struct.mmp_tdma_chan* %28, %struct.mmp_tdma_chan** %12, align 8
  %29 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %30 = icmp ne %struct.mmp_tdma_chan* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %95

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %40 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %43 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %46 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %48 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %47, i32 0, i32 0
  %49 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %50 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %54 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %57 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %59 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %66 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %65, i32 0, i32 7
  store i64 %64, i64* %66, align 8
  %67 = load %struct.gen_pool*, %struct.gen_pool** %11, align 8
  %68 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %69 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %68, i32 0, i32 6
  store %struct.gen_pool* %67, %struct.gen_pool** %69, align 8
  %70 = load i32, i32* @DMA_COMPLETE, align 4
  %71 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %72 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %74 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %75 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %74, i32 0, i32 1
  %76 = load %struct.mmp_tdma_chan**, %struct.mmp_tdma_chan*** %75, align 8
  %77 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %78 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %76, i64 %80
  store %struct.mmp_tdma_chan* %73, %struct.mmp_tdma_chan** %81, align 8
  %82 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %83 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %82, i32 0, i32 4
  %84 = load i32, i32* @dma_do_tasklet, align 4
  %85 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %86 = ptrtoint %struct.mmp_tdma_chan* %85 to i64
  %87 = call i32 @tasklet_init(i32* %83, i32 %84, i64 %86)
  %88 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %12, align 8
  %89 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %7, align 8
  %92 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @list_add_tail(i32* %90, i32* %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %41, %31, %16
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.mmp_tdma_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
