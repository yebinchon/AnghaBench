; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_mpc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_mpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32* }
%struct.dcn10_mpc = type { i32, i64 }

@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_BOT_SEL = common dso_local global i32* null, align 8
@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MAX_OPP = common dso_local global i32 0, align 4
@MUX = common dso_local global i32* null, align 8
@MPC_OUT_MUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_mpc_init(%struct.mpc* %0) #0 {
  %2 = alloca %struct.mpc*, align 8
  %3 = alloca %struct.dcn10_mpc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %2, align 8
  %6 = load %struct.mpc*, %struct.mpc** %2, align 8
  %7 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %6)
  store %struct.dcn10_mpc* %7, %struct.dcn10_mpc** %3, align 8
  %8 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %3, align 8
  %9 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %46, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %3, align 8
  %13 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %23 = call i32 @REG_SET(i32 %21, i32 0, i32* %22, i32 15)
  %24 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %30 = call i32 @REG_SET(i32 %28, i32 0, i32* %29, i32 15)
  %31 = load i32*, i32** @MPCC_OPP_ID, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @MPCC_OPP_ID, align 8
  %37 = call i32 @REG_SET(i32 %35, i32 0, i32* %36, i32 15)
  %38 = load %struct.mpc*, %struct.mpc** %2, align 8
  %39 = getelementptr inbounds %struct.mpc, %struct.mpc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mpc1_init_mpcc(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %16
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %10

49:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAX_OPP, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i32*, i32** @MUX, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @REG(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32*, i32** @MUX, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MPC_OUT_MUX, align 4
  %69 = call i32 @REG_UPDATE(i32 %67, i32 %68, i32 15)
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %50

74:                                               ; preds = %50
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

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
