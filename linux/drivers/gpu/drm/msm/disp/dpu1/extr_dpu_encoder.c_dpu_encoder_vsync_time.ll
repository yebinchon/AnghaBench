; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vsync_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_vsync_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.dpu_encoder_virt = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }

@.str = private unnamed_addr constant [32 x i8] c"crtc/crtc state object is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"time to vsync should not be zero, vtotal=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"cur_line=%u vtotal=%u time_to_vsync=%u, cur_time=%lld, wakeup_time=%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpu_encoder_vsync_time(%struct.drm_encoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.dpu_encoder_virt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = call %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder* %13)
  store %struct.dpu_encoder_virt* %14, %struct.dpu_encoder_virt** %7, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19, %2
  %27 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %19
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %32 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %6, align 8
  %37 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = call i32 @_dpu_encoder_calculate_linetime(%struct.dpu_encoder_virt* %37, %struct.drm_display_mode* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %96

45:                                               ; preds = %30
  %46 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %47 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %50, align 8
  %52 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %53 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 %51(%struct.TYPE_8__* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %11, align 4
  br label %72

66:                                               ; preds = %45
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %96

80:                                               ; preds = %72
  %81 = call i32 (...) @ktime_get()
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ktime_add_ns(i32 %82, i32 %83)
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @ktime_to_ms(i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ktime_to_ms(i32 %93)
  %95 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %86, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %91, i32 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %80, %75, %42, %26
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.dpu_encoder_virt* @to_dpu_encoder_virt(%struct.drm_encoder*) #1

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @_dpu_encoder_calculate_linetime(%struct.dpu_encoder_virt*, %struct.drm_display_mode*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_to_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
