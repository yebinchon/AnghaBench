; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_read_mpcc_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_read_mpcc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpcc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_BOT_SEL = common dso_local global i32* null, align 8
@MPCC_CONTROL = common dso_local global i32* null, align 8
@MPCC_MODE = common dso_local global i32 0, align 4
@MPCC_ALPHA_BLND_MODE = common dso_local global i32 0, align 4
@MPCC_ALPHA_MULTIPLIED_MODE = common dso_local global i32 0, align 4
@MPCC_BLND_ACTIVE_OVERLAP_ONLY = common dso_local global i32 0, align 4
@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_IDLE = common dso_local global i32 0, align 4
@MPCC_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_read_mpcc_state(%struct.mpc* %0, i32 %1, %struct.mpcc_state* %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpcc_state*, align 8
  %7 = alloca %struct.dcn10_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mpcc_state* %2, %struct.mpcc_state** %6, align 8
  %8 = load %struct.mpc*, %struct.mpc** %4, align 8
  %9 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %8)
  store %struct.dcn10_mpc* %9, %struct.dcn10_mpc** %7, align 8
  %10 = load i32*, i32** @MPCC_OPP_ID, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @MPCC_OPP_ID, align 8
  %16 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %17 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %16, i32 0, i32 8
  %18 = call i32 @REG_GET(i32 %14, i32* %15, i32* %17)
  %19 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %25 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %26 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %25, i32 0, i32 7
  %27 = call i32 @REG_GET(i32 %23, i32* %24, i32* %26)
  %28 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %34 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %35 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %34, i32 0, i32 6
  %36 = call i32 @REG_GET(i32 %32, i32* %33, i32* %35)
  %37 = load i32*, i32** @MPCC_CONTROL, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MPCC_MODE, align 4
  %43 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %44 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %43, i32 0, i32 5
  %45 = load i32, i32* @MPCC_ALPHA_BLND_MODE, align 4
  %46 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %47 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %46, i32 0, i32 4
  %48 = load i32, i32* @MPCC_ALPHA_MULTIPLIED_MODE, align 4
  %49 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %50 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %49, i32 0, i32 3
  %51 = load i32, i32* @MPCC_BLND_ACTIVE_OVERLAP_ONLY, align 4
  %52 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %53 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %52, i32 0, i32 2
  %54 = call i32 @REG_GET_4(i32 %41, i32 %42, i32* %44, i32 %45, i32* %47, i32 %48, i32* %50, i32 %51, i32* %53)
  %55 = load i32*, i32** @MPCC_STATUS, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MPCC_IDLE, align 4
  %61 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %62 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %61, i32 0, i32 1
  %63 = load i32, i32* @MPCC_BUSY, align 4
  %64 = load %struct.mpcc_state*, %struct.mpcc_state** %6, align 8
  %65 = getelementptr inbounds %struct.mpcc_state, %struct.mpcc_state* %64, i32 0, i32 0
  %66 = call i32 @REG_GET_2(i32 %59, i32 %60, i32* %62, i32 %63, i32* %65)
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

declare dso_local i32 @REG_GET_4(i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
