; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_denorm_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_denorm_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpc_denorm_clamp = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_mpc = type { i32 }

@DENORM_CONTROL = common dso_local global i32* null, align 8
@MPC_OUT_DENORM_CLAMP_MAX_R_CR = common dso_local global i32 0, align 4
@MPC_OUT_DENORM_CLAMP_MIN_R_CR = common dso_local global i32 0, align 4
@DENORM_CLAMP_G_Y = common dso_local global i32* null, align 8
@MPC_OUT_DENORM_CLAMP_MAX_G_Y = common dso_local global i32 0, align 4
@MPC_OUT_DENORM_CLAMP_MIN_G_Y = common dso_local global i32 0, align 4
@DENORM_CLAMP_B_CB = common dso_local global i32* null, align 8
@MPC_OUT_DENORM_CLAMP_MAX_B_CB = common dso_local global i32 0, align 4
@MPC_OUT_DENORM_CLAMP_MIN_B_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_set_denorm_clamp(%struct.mpc* %0, i32 %1, %struct.mpc_denorm_clamp* byval(%struct.mpc_denorm_clamp) align 8 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mpc*, %struct.mpc** %4, align 8
  %8 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %7)
  store %struct.dcn20_mpc* %8, %struct.dcn20_mpc** %6, align 8
  %9 = load i32*, i32** @DENORM_CONTROL, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MAX_R_CR, align 4
  %15 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MIN_R_CR, align 4
  %18 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @REG_UPDATE_2(i32 %13, i32 %14, i32 %16, i32 %17, i32 %19)
  %21 = load i32*, i32** @DENORM_CLAMP_G_Y, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MAX_G_Y, align 4
  %27 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MIN_G_Y, align 4
  %30 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @REG_UPDATE_2(i32 %25, i32 %26, i32 %28, i32 %29, i32 %31)
  %33 = load i32*, i32** @DENORM_CLAMP_B_CB, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MAX_B_CB, align 4
  %39 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MPC_OUT_DENORM_CLAMP_MIN_B_CB, align 4
  %42 = getelementptr inbounds %struct.mpc_denorm_clamp, %struct.mpc_denorm_clamp* %2, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @REG_UPDATE_2(i32 %37, i32 %38, i32 %40, i32 %41, i32 %43)
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
