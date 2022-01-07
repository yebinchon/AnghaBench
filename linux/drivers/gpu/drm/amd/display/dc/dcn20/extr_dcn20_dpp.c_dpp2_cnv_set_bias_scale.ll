; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_set_bias_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp.c_dpp2_cnv_set_bias_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_bias_and_scale = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_dpp = type { i32 }

@FCNV_FP_BIAS_R = common dso_local global i32 0, align 4
@FCNV_FP_BIAS_G = common dso_local global i32 0, align 4
@FCNV_FP_BIAS_B = common dso_local global i32 0, align 4
@FCNV_FP_SCALE_R = common dso_local global i32 0, align 4
@FCNV_FP_SCALE_G = common dso_local global i32 0, align 4
@FCNV_FP_SCALE_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp2_cnv_set_bias_scale(%struct.dpp* %0, %struct.dc_bias_and_scale* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.dc_bias_and_scale*, align 8
  %5 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.dc_bias_and_scale* %1, %struct.dc_bias_and_scale** %4, align 8
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %6)
  store %struct.dcn20_dpp* %7, %struct.dcn20_dpp** %5, align 8
  %8 = load i32, i32* @FCNV_FP_BIAS_R, align 4
  %9 = load i32, i32* @FCNV_FP_BIAS_R, align 4
  %10 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %11 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  %14 = load i32, i32* @FCNV_FP_BIAS_G, align 4
  %15 = load i32, i32* @FCNV_FP_BIAS_G, align 4
  %16 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %17 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* @FCNV_FP_BIAS_B, align 4
  %21 = load i32, i32* @FCNV_FP_BIAS_B, align 4
  %22 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %23 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* @FCNV_FP_SCALE_R, align 4
  %27 = load i32, i32* @FCNV_FP_SCALE_R, align 4
  %28 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %29 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 %30)
  %32 = load i32, i32* @FCNV_FP_SCALE_G, align 4
  %33 = load i32, i32* @FCNV_FP_SCALE_G, align 4
  %34 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %35 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 %36)
  %38 = load i32, i32* @FCNV_FP_SCALE_B, align 4
  %39 = load i32, i32* @FCNV_FP_SCALE_B, align 4
  %40 = load %struct.dc_bias_and_scale*, %struct.dc_bias_and_scale** %4, align 8
  %41 = getelementptr inbounds %struct.dc_bias_and_scale, %struct.dc_bias_and_scale* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %42)
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
