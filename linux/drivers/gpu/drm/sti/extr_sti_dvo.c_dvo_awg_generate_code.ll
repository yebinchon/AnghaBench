; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_dvo_awg_generate_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_dvo_awg_generate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_dvo = type { %struct.dvo_config*, %struct.drm_display_mode }
%struct.dvo_config = type { i64 (%struct.awg_code_generation_params*, %struct.awg_timing*)* }
%struct.awg_code_generation_params = type opaque
%struct.awg_timing = type opaque
%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64 }
%struct.awg_code_generation_params.0 = type { i64, i32* }
%struct.awg_timing.1 = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@BLANKING_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"AWG firmware not properly generated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_dvo*, i64*, i32*)* @dvo_awg_generate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvo_awg_generate_code(%struct.sti_dvo* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_dvo*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.dvo_config*, align 8
  %10 = alloca %struct.awg_code_generation_params.0, align 8
  %11 = alloca %struct.awg_timing.1, align 8
  store %struct.sti_dvo* %0, %struct.sti_dvo** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sti_dvo*, %struct.sti_dvo** %5, align 8
  %13 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %12, i32 0, i32 1
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %8, align 8
  %14 = load %struct.sti_dvo*, %struct.sti_dvo** %5, align 8
  %15 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %14, i32 0, i32 0
  %16 = load %struct.dvo_config*, %struct.dvo_config** %15, align 8
  store %struct.dvo_config* %16, %struct.dvo_config** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds %struct.awg_code_generation_params.0, %struct.awg_code_generation_params.0* %10, i32 0, i32 1
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.awg_code_generation_params.0, %struct.awg_code_generation_params.0* %10, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 7
  store i64 %26, i64* %27, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 6
  store i64 %34, i64* %35, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 5
  store i64 %42, i64* %43, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 4
  store i64 %46, i64* %47, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 3
  store i64 %50, i64* %51, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 2
  store i64 %58, i64* %59, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* @BLANKING_LEVEL, align 4
  %69 = getelementptr inbounds %struct.awg_timing.1, %struct.awg_timing.1* %11, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.dvo_config*, %struct.dvo_config** %9, align 8
  %71 = getelementptr inbounds %struct.dvo_config, %struct.dvo_config* %70, i32 0, i32 0
  %72 = load i64 (%struct.awg_code_generation_params*, %struct.awg_timing*)*, i64 (%struct.awg_code_generation_params*, %struct.awg_timing*)** %71, align 8
  %73 = bitcast %struct.awg_code_generation_params.0* %10 to %struct.awg_code_generation_params*
  %74 = bitcast %struct.awg_timing.1* %11 to %struct.awg_timing*
  %75 = call i64 %72(%struct.awg_code_generation_params* %73, %struct.awg_timing* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %3
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.awg_code_generation_params.0, %struct.awg_code_generation_params.0* %10, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %6, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
