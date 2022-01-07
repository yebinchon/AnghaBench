; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, %struct.TYPE_5__* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@CMD_REPORT_HEAD = common dso_local global i32 0, align 4
@I810_BUF_HARDWARE = common dso_local global i32 0, align 4
@I810_BUF_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reclaimed from HARDWARE\0A\00", align 1
@I810_BUF_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"still on client\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @i810_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_flush_queue(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.drm_device_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %4, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* @RING_LOCALS, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i32 @i810_kernel_lost_context(%struct.drm_device* %17)
  %19 = call i32 @BEGIN_LP_RING(i32 2)
  %20 = load i32, i32* @CMD_REPORT_HEAD, align 4
  %21 = call i32 @OUT_RING(i32 %20)
  %22 = call i32 @OUT_RING(i32 0)
  %23 = call i32 (...) @ADVANCE_LP_RING()
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 8
  %30 = call i32 @i810_wait_ring(%struct.drm_device* %24, i64 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %66, %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %34 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %38, i32 0, i32 1
  %40 = load %struct.drm_buf**, %struct.drm_buf*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %40, i64 %42
  %44 = load %struct.drm_buf*, %struct.drm_buf** %43, align 8
  store %struct.drm_buf* %44, %struct.drm_buf** %7, align 8
  %45 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %46 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %8, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @I810_BUF_HARDWARE, align 4
  %52 = load i32, i32* @I810_BUF_FREE, align 4
  %53 = call i32 @cmpxchg(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @I810_BUF_HARDWARE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @I810_BUF_CLIENT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

declare dso_local i32 @i810_wait_ring(%struct.drm_device*, i64) #1

declare dso_local i32 @cmpxchg(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
