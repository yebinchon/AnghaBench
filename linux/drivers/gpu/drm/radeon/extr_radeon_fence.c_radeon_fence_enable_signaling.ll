; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_enable_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_enable_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.radeon_fence = type { i64, i64, i32, %struct.TYPE_4__, %struct.radeon_device* }
%struct.TYPE_4__ = type { i32, i32*, i64 }
%struct.radeon_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@radeon_fence_check_signaled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"armed on ring %i!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_fence*)* @radeon_fence_enable_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_fence_enable_signaling(%struct.dma_fence* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %6 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %7 = call %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence* %6)
  store %struct.radeon_fence* %7, %struct.radeon_fence** %4, align 8
  %8 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %8, i32 0, i32 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  store %struct.radeon_device* %10, %struct.radeon_device** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i64 @atomic64_read(i32* %18)
  %20 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

25:                                               ; preds = %1
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 2
  %28 = call i64 @down_read_trylock(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  %31 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %32 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device* %31, i64 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %37 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @radeon_fence_activity(%struct.radeon_device* %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = call i32 @wake_up_all_locked(i32* %44)
  br label %46

46:                                               ; preds = %42, %30
  %47 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = call i64 @atomic64_read(i32* %54)
  %56 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %46
  %61 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %62 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device* %61, i64 %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 2
  %68 = call i32 @up_read(i32* %67)
  store i32 0, i32* %2, align 4
  br label %119

69:                                               ; preds = %46
  %70 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 2
  %72 = call i32 @up_read(i32* %71)
  br label %95

73:                                               ; preds = %25
  %74 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %75 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %76 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @radeon_irq_kms_sw_irq_get_delayed(%struct.radeon_device* %74, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %85 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %73
  %90 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %91 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @radeon_fence_schedule_check(%struct.radeon_device* %90, i64 %93)
  br label %95

95:                                               ; preds = %89, %69
  %96 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %97 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %100 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load i32, i32* @radeon_fence_check_signaled, align 4
  %103 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %104 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %109 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %108, i32 0, i32 3
  %110 = call i32 @__add_wait_queue(i32* %107, %struct.TYPE_4__* %109)
  %111 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %112 = call i32 @dma_fence_get(%struct.dma_fence* %111)
  %113 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %114 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %113, i32 0, i32 2
  %115 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @DMA_FENCE_TRACE(i32* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %117)
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %95, %60, %24
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_get(%struct.radeon_device*, i64) #1

declare dso_local i64 @radeon_fence_activity(%struct.radeon_device*, i64) #1

declare dso_local i32 @wake_up_all_locked(i32*) #1

declare dso_local i32 @radeon_irq_kms_sw_irq_put(%struct.radeon_device*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @radeon_irq_kms_sw_irq_get_delayed(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_fence_schedule_check(%struct.radeon_device*, i64) #1

declare dso_local i32 @__add_wait_queue(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @DMA_FENCE_TRACE(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
