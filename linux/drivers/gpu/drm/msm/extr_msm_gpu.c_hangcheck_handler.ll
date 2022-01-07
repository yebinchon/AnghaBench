; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_hangcheck_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_hangcheck_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, i32, %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { %struct.msm_ringbuffer* (%struct.msm_gpu*)* }
%struct.msm_ringbuffer = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.timer_list = type { i32 }

@hangcheck_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: hangcheck detected gpu lockup rb %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s:     completed fence: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s:     submitted fence: %u\0A\00", align 1
@gpu = common dso_local global %struct.msm_gpu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hangcheck_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangcheck_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.msm_ringbuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = ptrtoint %struct.msm_gpu* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @hangcheck_timer, align 4
  %12 = call %struct.msm_gpu* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.msm_gpu* %12, %struct.msm_gpu** %3, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 4
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  store %struct.msm_drm_private* %18, %struct.msm_drm_private** %5, align 8
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %20 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.msm_ringbuffer* (%struct.msm_gpu*)*, %struct.msm_ringbuffer* (%struct.msm_gpu*)** %22, align 8
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %25 = call %struct.msm_ringbuffer* %23(%struct.msm_gpu* %24)
  store %struct.msm_ringbuffer* %25, %struct.msm_ringbuffer** %6, align 8
  %26 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %27 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %33 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %39 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %85

40:                                               ; preds = %1
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %43 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %40
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %49 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %54 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %57 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %64 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @DRM_DEV_ERROR(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %66)
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %72 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %75 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DRM_DEV_ERROR(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %76)
  %78 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %79 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %82 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %81, i32 0, i32 1
  %83 = call i32 @queue_work(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %46, %40
  br label %85

85:                                               ; preds = %84, %36
  %86 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %87 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %6, align 8
  %90 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %95 = call i32 @hangcheck_timer_reset(%struct.msm_gpu* %94)
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %98 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %101 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %100, i32 0, i32 0
  %102 = call i32 @queue_work(i32 %99, i32* %101)
  ret void
}

declare dso_local %struct.msm_gpu* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hangcheck_timer_reset(%struct.msm_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
