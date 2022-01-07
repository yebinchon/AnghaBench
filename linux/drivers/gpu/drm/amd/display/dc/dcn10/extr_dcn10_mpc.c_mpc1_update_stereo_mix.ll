; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_update_stereo_mix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_update_stereo_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpcc_sm_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_SM_CONTROL = common dso_local global i32* null, align 8
@MPCC_SM_EN = common dso_local global i32 0, align 4
@MPCC_SM_MODE = common dso_local global i32 0, align 4
@MPCC_SM_FRAME_ALT = common dso_local global i32 0, align 4
@MPCC_SM_FIELD_ALT = common dso_local global i32 0, align 4
@MPCC_SM_FORCE_NEXT_FRAME_POL = common dso_local global i32 0, align 4
@MPCC_SM_FORCE_NEXT_TOP_POL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_update_stereo_mix(%struct.mpc* %0, %struct.mpcc_sm_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca %struct.mpcc_sm_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store %struct.mpcc_sm_cfg* %1, %struct.mpcc_sm_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mpc*, %struct.mpc** %4, align 8
  %9 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %8)
  store %struct.dcn10_mpc* %9, %struct.dcn10_mpc** %7, align 8
  %10 = load i32*, i32** @MPCC_SM_CONTROL, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPCC_SM_EN, align 4
  %16 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MPCC_SM_MODE, align 4
  %20 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPCC_SM_FRAME_ALT, align 4
  %24 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPCC_SM_FIELD_ALT, align 4
  %28 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPCC_SM_FORCE_NEXT_FRAME_POL, align 4
  %32 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPCC_SM_FORCE_NEXT_TOP_POL, align 4
  %36 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.mpcc_sm_cfg, %struct.mpcc_sm_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_UPDATE_6(i32 %14, i32 %15, i32 %18, i32 %19, i32 %22, i32 %23, i32 %26, i32 %27, i32 %30, i32 %31, i32 %34, i32 %35, i32 %38)
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_UPDATE_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
