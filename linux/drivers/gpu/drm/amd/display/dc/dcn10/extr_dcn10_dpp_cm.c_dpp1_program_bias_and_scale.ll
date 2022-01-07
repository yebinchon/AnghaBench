; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_bias_and_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_bias_and_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_bias_and_scale = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_dpp = type { i32 }

@CM_BNS_VALUES_R = common dso_local global i32 0, align 4
@CM_BNS_SCALE_R = common dso_local global i32 0, align 4
@CM_BNS_BIAS_R = common dso_local global i32 0, align 4
@CM_BNS_VALUES_G = common dso_local global i32 0, align 4
@CM_BNS_SCALE_G = common dso_local global i32 0, align 4
@CM_BNS_BIAS_G = common dso_local global i32 0, align 4
@CM_BNS_VALUES_B = common dso_local global i32 0, align 4
@CM_BNS_SCALE_B = common dso_local global i32 0, align 4
@CM_BNS_BIAS_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_program_bias_and_scale(%struct.dpp* %0, %struct.dc_bias_and_scale* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dc_bias_and_scale*, align 8
  %5 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dc_bias_and_scale* %1, %struct.dc_bias_and_scale** %4, align 8
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %6)
  store %struct.dcn10_dpp* %7, %struct.dcn10_dpp** %5, align 8
  %8 = load i32, i32* @CM_BNS_VALUES_R, align 4
  %9 = load i32, i32* @CM_BNS_SCALE_R, align 4
  %10 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %11 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CM_BNS_BIAS_R, align 4
  %14 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %15 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @REG_SET_2(i32 %8, i32 0, i32 %9, i32 %12, i32 %13, i32 %16)
  %18 = load i32, i32* @CM_BNS_VALUES_G, align 4
  %19 = load i32, i32* @CM_BNS_SCALE_G, align 4
  %20 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %21 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CM_BNS_BIAS_G, align 4
  %24 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %25 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_SET_2(i32 %18, i32 0, i32 %19, i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @CM_BNS_VALUES_B, align 4
  %29 = load i32, i32* @CM_BNS_SCALE_B, align 4
  %30 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %31 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CM_BNS_BIAS_B, align 4
  %34 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %35 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REG_SET_2(i32 %28, i32 0, i32 %29, i32 %32, i32 %33, i32 %36)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
