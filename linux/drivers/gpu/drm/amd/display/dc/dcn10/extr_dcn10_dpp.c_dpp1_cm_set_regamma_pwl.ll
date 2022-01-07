; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_cm_set_regamma_pwl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_cm_set_regamma_pwl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_params = type { i32, i32 }
%struct.dcn10_dpp = type { i32, %struct.pwl_params }

@CM_RGAM_CONTROL = common dso_local global i32 0, align 4
@CM_RGAM_LUT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, %struct.pwl_params*, i32)* @dpp1_cm_set_regamma_pwl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_cm_set_regamma_pwl(%struct.dpp* %0, %struct.pwl_params* %1, i32 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.pwl_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_dpp*, align 8
  %8 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dpp*, %struct.dpp** %4, align 8
  %10 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %9)
  store %struct.dcn10_dpp* %10, %struct.dcn10_dpp** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %76 [
    i32 131, label %12
    i32 130, label %13
    i32 128, label %14
    i32 129, label %15
  ]

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %77

13:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %77

14:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %17 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 4, i32 3
  store i32 %21, i32* %8, align 4
  %22 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %23 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %22, i32 0, i32 1
  %24 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %25 = call i32 @memcmp(%struct.pwl_params* %23, %struct.pwl_params* %24, i32 8)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %77

28:                                               ; preds = %15
  %29 = load %struct.dpp*, %struct.dpp** %4, align 8
  %30 = call i32 @dpp1_cm_power_on_regamma_lut(%struct.dpp* %29, i32 1)
  %31 = load %struct.dpp*, %struct.dpp** %4, align 8
  %32 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %33 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dpp1_cm_configure_regamma_lut(%struct.dpp* %31, i32 %34)
  %36 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %37 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.dpp*, %struct.dpp** %4, align 8
  %42 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %43 = call i32 @dpp1_cm_program_regamma_luta_settings(%struct.dpp* %41, %struct.pwl_params* %42)
  br label %48

44:                                               ; preds = %28
  %45 = load %struct.dpp*, %struct.dpp** %4, align 8
  %46 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %47 = call i32 @dpp1_cm_program_regamma_lutb_settings(%struct.dpp* %45, %struct.pwl_params* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.dpp*, %struct.dpp** %4, align 8
  %50 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %51 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %54 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dpp1_cm_program_regamma_lut(%struct.dpp* %49, i32 %52, i32 %55)
  %57 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %58 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %57, i32 0, i32 1
  %59 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %60 = bitcast %struct.pwl_params* %58 to i8*
  %61 = bitcast %struct.pwl_params* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  %62 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %63 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 3, i32 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %69 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %7, align 8
  %75 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %77

76:                                               ; preds = %3
  br label %77

77:                                               ; preds = %76, %48, %27, %14, %13, %12
  %78 = load i32, i32* @CM_RGAM_CONTROL, align 4
  %79 = load i32, i32* @CM_RGAM_LUT_MODE, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @REG_SET(i32 %78, i32 0, i32 %79, i32 %80)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @memcmp(%struct.pwl_params*, %struct.pwl_params*, i32) #1

declare dso_local i32 @dpp1_cm_power_on_regamma_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp1_cm_configure_regamma_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp1_cm_program_regamma_luta_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp1_cm_program_regamma_lutb_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp1_cm_program_regamma_lut(%struct.dpp*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
