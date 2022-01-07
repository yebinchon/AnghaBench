; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_mpc_init_single_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_mpc_init_single_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32* }
%struct.dcn10_mpc = type { i32 }

@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_BOT_SEL = common dso_local global i32* null, align 8
@MAX_OPP = common dso_local global i32 0, align 4
@MUX = common dso_local global i32* null, align 8
@MPC_OUT_MUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_mpc_init_single_inst(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_mpc*, align 8
  %6 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpc*, %struct.mpc** %3, align 8
  %8 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %7)
  store %struct.dcn10_mpc* %8, %struct.dcn10_mpc** %5, align 8
  %9 = load i32*, i32** @MPCC_OPP_ID, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @MPCC_OPP_ID, align 8
  %15 = call i32 @REG_GET(i32 %13, i32* %14, i32* %6)
  %16 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %22 = call i32 @REG_SET(i32 %20, i32 0, i32* %21, i32 15)
  %23 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %29 = call i32 @REG_SET(i32 %27, i32 0, i32* %28, i32 15)
  %30 = load i32*, i32** @MPCC_OPP_ID, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @MPCC_OPP_ID, align 8
  %36 = call i32 @REG_SET(i32 %34, i32 0, i32* %35, i32 15)
  %37 = load %struct.mpc*, %struct.mpc** %3, align 8
  %38 = getelementptr inbounds %struct.mpc, %struct.mpc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @mpc1_init_mpcc(i32* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MAX_OPP, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %2
  %49 = load i32*, i32** @MUX, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @REG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load i32*, i32** @MUX, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MPC_OUT_MUX, align 4
  %63 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 15)
  br label %64

64:                                               ; preds = %56, %48, %2
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

declare dso_local i32 @mpc1_init_mpcc(i32*, i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
