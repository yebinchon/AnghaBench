; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_kickoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_kickoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_encoder_virt = type { i32, i32, %struct.TYPE_8__, %struct.dpu_encoder_phys**, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.dpu_encoder_phys = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.dpu_encoder_phys*)* }

@.str = private unnamed_addr constant [16 x i8] c"encoder_kickoff\00", align 1
@DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DRM_MODE_ENCODER_DSI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_encoder_kickoff(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dpu_encoder_virt*, align 8
  %4 = alloca %struct.dpu_encoder_phys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %9)
  store %struct.dpu_encoder_virt* %10, %struct.dpu_encoder_virt** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call i32 @DRMID(%struct.drm_encoder* %11)
  %13 = call i32 @trace_dpu_enc_kickoff(i32 %12)
  %14 = load i32, i32* @DPU_ENCODER_FRAME_DONE_TIMEOUT_FRAMES, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @drm_mode_vrefresh(i32* %21)
  %23 = sdiv i32 %15, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %26 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %25, i32 0, i32 5
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @atomic_set(i32* %26, i64 %27)
  %29 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %29, i32 0, i32 4
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @msecs_to_jiffies(i64 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @mod_timer(i32* %30, i64 %34)
  %36 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %37 = call i32 @_dpu_encoder_kickoff_phys(%struct.dpu_encoder_virt* %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %68, %1
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %41 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %38
  %45 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %46 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %45, i32 0, i32 3
  %47 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %47, i64 %49
  %51 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %50, align 8
  store %struct.dpu_encoder_phys* %51, %struct.dpu_encoder_phys** %4, align 8
  %52 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %53 = icmp ne %struct.dpu_encoder_phys* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %56 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %57, align 8
  %59 = icmp ne i32 (%struct.dpu_encoder_phys*)* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.dpu_encoder_phys*)*, i32 (%struct.dpu_encoder_phys*)** %63, align 8
  %65 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %4, align 8
  %66 = call i32 %64(%struct.dpu_encoder_phys* %65)
  br label %67

67:                                               ; preds = %60, %54, %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %38

71:                                               ; preds = %38
  %72 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %73 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DRM_MODE_ENCODER_DSI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %71
  %79 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %80 = call i32 @dpu_encoder_vsync_time(%struct.drm_encoder* %79, i32* %5)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %84 = call i32 @DRMID(%struct.drm_encoder* %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ktime_to_ms(i32 %85)
  %87 = call i32 @trace_dpu_enc_early_kickoff(i32 %84, i32 %86)
  %88 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %3, align 8
  %89 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %88, i32 0, i32 1
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ktime_to_ns(i32 %90)
  %92 = call i64 @nsecs_to_jiffies(i32 %91)
  %93 = call i32 @mod_timer(i32* %89, i64 %92)
  br label %94

94:                                               ; preds = %82, %78, %71
  %95 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @trace_dpu_enc_kickoff(i32) #1

declare dso_local i32 @DRMID(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_vrefresh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @_dpu_encoder_kickoff_phys(%struct.dpu_encoder_virt*) #1

declare dso_local i32 @dpu_encoder_vsync_time(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @trace_dpu_enc_early_kickoff(i32, i32) #1

declare dso_local i32 @ktime_to_ms(i32) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
