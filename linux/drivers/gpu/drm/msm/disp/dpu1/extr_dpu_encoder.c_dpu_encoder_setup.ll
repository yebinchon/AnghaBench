; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.msm_display_info = type { i64 }
%struct.dpu_kms = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dpu_encoder_frame_done_timeout = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i64 0, align 8
@dpu_encoder_vsync_event_handler = common dso_local global i32 0, align 4
@dpu_encoder_off_work = common dso_local global i32 0, align 4
@IDLE_TIMEOUT = common dso_local global i32 0, align 4
@dpu_encoder_vsync_event_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"created\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to create encoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_encoder_setup(%struct.drm_device* %0, %struct.drm_encoder* %1, %struct.msm_display_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.msm_display_info*, align 8
  %8 = alloca %struct.msm_drm_private*, align 8
  %9 = alloca %struct.dpu_kms*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca %struct.dpu_encoder_virt*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %6, align 8
  store %struct.msm_display_info* %2, %struct.msm_display_info** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %8, align 8
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %8, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dpu_kms* @to_dpu_kms(i32 %18)
  store %struct.dpu_kms* %19, %struct.dpu_kms** %9, align 8
  store %struct.drm_encoder* null, %struct.drm_encoder** %10, align 8
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %21 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %20)
  store %struct.dpu_encoder_virt* %21, %struct.dpu_encoder_virt** %11, align 8
  %22 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %23 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %22, i32 0, i32 8
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %26 = load %struct.dpu_kms*, %struct.dpu_kms** %9, align 8
  %27 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %28 = call i32 @dpu_encoder_setup_display(%struct.dpu_encoder_virt* %25, %struct.dpu_kms* %26, %struct.msm_display_info* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %72

32:                                               ; preds = %3
  %33 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %33, i32 0, i32 7
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %37 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %36, i32 0, i32 6
  %38 = load i32, i32* @dpu_encoder_frame_done_timeout, align 4
  %39 = call i32 @timer_setup(i32* %37, i32 %38, i32 0)
  %40 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %41 = getelementptr inbounds %struct.msm_display_info, %struct.msm_display_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DRM_MODE_ENCODER_DSI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %46, i32 0, i32 5
  %48 = load i32, i32* @dpu_encoder_vsync_event_handler, align 4
  %49 = call i32 @timer_setup(i32* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %52 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %51, i32 0, i32 4
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %55 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %54, i32 0, i32 3
  %56 = load i32, i32* @dpu_encoder_off_work, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load i32, i32* @IDLE_TIMEOUT, align 4
  %59 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %60 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %61, i32 0, i32 1
  %63 = load i32, i32* @dpu_encoder_vsync_event_work_handler, align 4
  %64 = call i32 @kthread_init_work(i32* %62, i32 %63)
  %65 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %66 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %65, i32 0, i32 0
  %67 = load %struct.msm_display_info*, %struct.msm_display_info** %7, align 8
  %68 = call i32 @memcpy(i32* %66, %struct.msm_display_info* %67, i32 8)
  %69 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %11, align 8
  %70 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %31
  %73 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %75 = icmp ne %struct.drm_encoder* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %78 = call i32 @dpu_encoder_destroy(%struct.drm_encoder* %77)
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %50
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dpu_encoder_setup_display(%struct.dpu_encoder_virt*, %struct.dpu_kms*, %struct.msm_display_info*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.msm_display_info*, i32) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @dpu_encoder_destroy(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
