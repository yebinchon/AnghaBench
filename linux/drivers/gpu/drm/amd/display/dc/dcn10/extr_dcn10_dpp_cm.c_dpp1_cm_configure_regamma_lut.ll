; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_configure_regamma_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_configure_regamma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn10_dpp = type { i32 }

@CM_RGAM_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@CM_RGAM_LUT_WRITE_SEL = common dso_local global i32 0, align 4
@CM_RGAM_LUT_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_cm_configure_regamma_lut(%struct.dpp* %0, i32 %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %6)
  store %struct.dcn10_dpp* %7, %struct.dcn10_dpp** %5, align 8
  %8 = load i32, i32* @CM_RGAM_LUT_WRITE_EN_MASK, align 4
  %9 = load i32, i32* @CM_RGAM_LUT_WRITE_EN_MASK, align 4
  %10 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 7)
  %11 = load i32, i32* @CM_RGAM_LUT_WRITE_EN_MASK, align 4
  %12 = load i32, i32* @CM_RGAM_LUT_WRITE_SEL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  %17 = call i32 @REG_UPDATE(i32 %11, i32 %12, i32 %16)
  %18 = load i32, i32* @CM_RGAM_LUT_INDEX, align 4
  %19 = load i32, i32* @CM_RGAM_LUT_INDEX, align 4
  %20 = call i32 @REG_SET(i32 %18, i32 0, i32 %19, i32 0)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
