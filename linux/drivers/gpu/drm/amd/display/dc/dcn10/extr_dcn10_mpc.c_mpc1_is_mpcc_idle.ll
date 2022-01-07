; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_is_mpcc_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_is_mpcc_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn10_mpc = type { i32 }

@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MPCC_STATUS = common dso_local global i32* null, align 8
@MPCC_IDLE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc1_is_mpcc_idle(%struct.mpc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcn10_mpc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mpc*, %struct.mpc** %4, align 8
  %11 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %10)
  store %struct.dcn10_mpc* %11, %struct.dcn10_mpc** %6, align 8
  %12 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %18 = call i32 @REG_GET(i32 %16, i32* %17, i32* %7)
  %19 = load i32*, i32** @MPCC_OPP_ID, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @MPCC_OPP_ID, align 8
  %25 = call i32 @REG_GET(i32 %23, i32* %24, i32* %8)
  %26 = load i32*, i32** @MPCC_STATUS, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @MPCC_IDLE, align 8
  %32 = call i32 @REG_GET(i32 %30, i32* %31, i32* %9)
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 15
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %38, %35, %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
