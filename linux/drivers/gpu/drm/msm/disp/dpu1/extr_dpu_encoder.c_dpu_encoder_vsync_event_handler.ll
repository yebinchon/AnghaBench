; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vsync_event_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vsync_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_virt = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_drm_thread* }
%struct.msm_drm_thread = type { i32 }
%struct.timer_list = type { i32 }

@vsync_event_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid crtc index\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"event_thread not found for crtc:%d\0A\00", align 1
@dpu_enc = common dso_local global %struct.dpu_encoder_virt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dpu_encoder_vsync_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_vsync_event_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.msm_drm_thread*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %8 = ptrtoint %struct.dpu_encoder_virt* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @vsync_event_timer, align 4
  %11 = call %struct.dpu_encoder_virt* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.dpu_encoder_virt* %11, %struct.dpu_encoder_virt** %3, align 8
  %12 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %12, i32 0, i32 1
  store %struct.drm_encoder* %13, %struct.drm_encoder** %4, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  %24 = icmp ne %struct.msm_drm_private* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %27 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %18, %1
  %31 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %73

32:                                               ; preds = %25
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %34 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.msm_drm_private*, %struct.msm_drm_private** %36, align 8
  store %struct.msm_drm_private* %37, %struct.msm_drm_private** %5, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %39 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %44 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %43, i32 0, i32 0
  %45 = load %struct.msm_drm_thread*, %struct.msm_drm_thread** %44, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.msm_drm_thread* %45)
  %47 = icmp uge i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %73

50:                                               ; preds = %32
  %51 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %52 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %51, i32 0, i32 0
  %53 = load %struct.msm_drm_thread*, %struct.msm_drm_thread** %52, align 8
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %55 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.msm_drm_thread, %struct.msm_drm_thread* %53, i64 %58
  store %struct.msm_drm_thread* %59, %struct.msm_drm_thread** %6, align 8
  %60 = load %struct.msm_drm_thread*, %struct.msm_drm_thread** %6, align 8
  %61 = icmp ne %struct.msm_drm_thread* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %50
  %63 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %64 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  br label %73

69:                                               ; preds = %50
  %70 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %71 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %70, i32 0, i32 0
  %72 = call i32 @del_timer(i32* %71)
  br label %73

73:                                               ; preds = %69, %62, %48, %30
  ret void
}

declare dso_local %struct.dpu_encoder_virt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.msm_drm_thread*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
