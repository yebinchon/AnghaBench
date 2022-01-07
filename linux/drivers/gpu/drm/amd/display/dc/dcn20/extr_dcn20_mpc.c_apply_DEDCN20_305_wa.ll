; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_apply_DEDCN20_305_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_apply_DEDCN20_305_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.dcn20_mpc = type { i32 }

@MPCC_OGAM_MODE = common dso_local global i32* null, align 8
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apply_DEDCN20_305_wa(%struct.mpc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mpc*, %struct.mpc** %5, align 8
  %11 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %10)
  store %struct.dcn20_mpc* %11, %struct.dcn20_mpc** %9, align 8
  %12 = load %struct.mpc*, %struct.mpc** %5, align 8
  %13 = getelementptr inbounds %struct.mpc, %struct.mpc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %28 = call i32 @REG_SET(i32 %26, i32 0, i32* %27, i32 0)
  br label %57

29:                                               ; preds = %4
  %30 = load %struct.mpc*, %struct.mpc** %5, align 8
  %31 = getelementptr inbounds %struct.mpc, %struct.mpc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %57

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LUT_BYPASS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @LUT_RAM_A, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 2
  %56 = call i32 @REG_SET(i32 %49, i32 0, i32* %50, i32 %55)
  br label %57

57:                                               ; preds = %21, %39, %44, %40
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
