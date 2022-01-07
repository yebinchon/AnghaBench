; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dpu_plane = type { i32 }
%struct.dpu_plane_state = type { i64 }
%struct.dpu_hw_fmt_layout = type { i32 }
%struct.dpu_kms = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"FB[%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to prepare framebuffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get format layout, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @dpu_plane_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_plane_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.dpu_plane*, align 8
  %8 = alloca %struct.dpu_plane_state*, align 8
  %9 = alloca %struct.dpu_hw_fmt_layout, align 4
  %10 = alloca %struct.dpu_kms*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %6, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %16 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %15)
  store %struct.dpu_plane* %16, %struct.dpu_plane** %7, align 8
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %18 = call %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state* %17)
  store %struct.dpu_plane_state* %18, %struct.dpu_plane_state** %8, align 8
  %19 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %20 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %19, i32 0, i32 0
  %21 = call %struct.dpu_kms* @_dpu_plane_get_kms(i32* %20)
  store %struct.dpu_kms* %21, %struct.dpu_kms** %10, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  %25 = icmp ne %struct.drm_framebuffer* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %30 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.dpu_kms*, %struct.dpu_kms** %10, align 8
  %35 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %8, align 8
  %39 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %41 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %42 = call i32 @drm_gem_fb_prepare_fb(%struct.drm_plane* %40, %struct.drm_plane_state* %41)
  %43 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %8, align 8
  %44 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %27
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 0
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %49, align 8
  %51 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %8, align 8
  %52 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @msm_framebuffer_prepare(%struct.drm_framebuffer* %50, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %77

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %27
  %62 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %8, align 8
  %63 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %66 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %65, i32 0, i32 0
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %66, align 8
  %68 = call i32 @dpu_format_populate_layout(i64 %64, %struct.drm_framebuffer* %67, %struct.dpu_hw_fmt_layout* %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @DPU_ERROR_PLANE(%struct.dpu_plane* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %71, %57, %26
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.dpu_kms* @_dpu_plane_get_kms(i32*) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*, i32) #1

declare dso_local i32 @drm_gem_fb_prepare_fb(%struct.drm_plane*, %struct.drm_plane_state*) #1

declare dso_local i32 @msm_framebuffer_prepare(%struct.drm_framebuffer*, i64) #1

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @dpu_format_populate_layout(i64, %struct.drm_framebuffer*, %struct.dpu_hw_fmt_layout*) #1

declare dso_local i32 @DPU_ERROR_PLANE(%struct.dpu_plane*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
