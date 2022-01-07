; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/buffer/extr_industrialio-buffer-dmaengine.c_iio_dmaengine_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32* }
%struct.device = type { i32 }
%struct.dmaengine_buffer = type { i32, %struct.TYPE_4__, i32, %struct.dma_chan*, i32 }
%struct.TYPE_4__ = type { %struct.iio_buffer }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dma_slave_caps = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iio_dmaengine_default_ops = common dso_local global i32 0, align 4
@iio_dmaengine_buffer_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iio_buffer* @iio_dmaengine_buffer_alloc(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_buffer*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dmaengine_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_slave_caps, align 8
  %11 = alloca %struct.dma_chan*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dmaengine_buffer* @kzalloc(i32 40, i32 %13)
  store %struct.dmaengine_buffer* %14, %struct.dmaengine_buffer** %6, align 8
  %15 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %16 = icmp ne %struct.dmaengine_buffer* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.iio_buffer* @ERR_PTR(i32 %19)
  store %struct.iio_buffer* %20, %struct.iio_buffer** %3, align 8
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device* %22, i8* %23)
  store %struct.dma_chan* %24, %struct.dma_chan** %11, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %26 = call i64 @IS_ERR(%struct.dma_chan* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %30 = call i32 @PTR_ERR(%struct.dma_chan* %29)
  store i32 %30, i32* %12, align 4
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %33 = call i32 @dma_get_slave_caps(%struct.dma_chan* %32, %struct.dma_slave_caps* %10)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %91

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @__ffs(i64 %43)
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @__ffs(i64 %52)
  store i32 %53, i32* %9, align 4
  br label %55

54:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @max(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %59, i32 0, i32 4
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %63 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %63, i32 0, i32 3
  store %struct.dma_chan* %62, %struct.dma_chan** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %69 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dma_get_max_seg_size(i32 %72)
  %74 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %77 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %76, i32 0, i32 1
  %78 = load %struct.dma_chan*, %struct.dma_chan** %11, align 8
  %79 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iio_dma_buffer_init(%struct.TYPE_4__* %77, i32 %82, i32* @iio_dmaengine_default_ops)
  %84 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %86, i32 0, i32 0
  store i32* @iio_dmaengine_buffer_ops, i32** %87, align 8
  %88 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.dmaengine_buffer, %struct.dmaengine_buffer* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store %struct.iio_buffer* %90, %struct.iio_buffer** %3, align 8
  br label %96

91:                                               ; preds = %36, %28
  %92 = load %struct.dmaengine_buffer*, %struct.dmaengine_buffer** %6, align 8
  %93 = call i32 @kfree(%struct.dmaengine_buffer* %92)
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.iio_buffer* @ERR_PTR(i32 %94)
  store %struct.iio_buffer* %95, %struct.iio_buffer** %3, align 8
  br label %96

96:                                               ; preds = %91, %55, %17
  %97 = load %struct.iio_buffer*, %struct.iio_buffer** %3, align 8
  ret %struct.iio_buffer* %97
}

declare dso_local %struct.dmaengine_buffer* @kzalloc(i32, i32) #1

declare dso_local %struct.iio_buffer* @ERR_PTR(i32) #1

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dma_get_slave_caps(%struct.dma_chan*, %struct.dma_slave_caps*) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_get_max_seg_size(i32) #1

declare dso_local i32 @iio_dma_buffer_init(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.dmaengine_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
