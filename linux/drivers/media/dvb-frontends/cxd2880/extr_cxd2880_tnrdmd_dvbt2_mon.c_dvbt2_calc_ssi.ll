; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_dvbt2_calc_ssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2_mon.c_dvbt2_calc_ssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PLP_DATA = common dso_local global i32 0, align 4
@CXD2880_DVBT2_R2_5 = common dso_local global i32 0, align 4
@CXD2880_DVBT2_QAM256 = common dso_local global i32 0, align 4
@ref_dbm_1000 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i32*)* @dvbt2_calc_ssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt2_calc_ssi(%struct.cxd2880_tnrdmd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %15
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %23 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %24 = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(%struct.cxd2880_tnrdmd* %22, i32 %23, i32* %8)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %31 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %32 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(%struct.cxd2880_tnrdmd* %30, i32 %31, i32* %9)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %105

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CXD2880_DVBT2_R2_5, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CXD2880_DVBT2_QAM256, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %105

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32**, i32*** @ref_dbm_1000, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %49, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, -15000
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %95

63:                                               ; preds = %48
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 15000
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 1500
  %71 = sdiv i32 %70, 3000
  store i32 %71, i32* %11, align 4
  br label %94

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 20000
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 4, %76
  %78 = add nsw i32 %77, 500
  %79 = sdiv i32 %78, 1000
  %80 = add nsw i32 %79, 10
  store i32 %80, i32* %11, align 4
  br label %93

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 35000
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 20000
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 1500
  %89 = sdiv i32 %88, 3000
  %90 = add nsw i32 %89, 90
  store i32 %90, i32* %11, align 4
  br label %92

91:                                               ; preds = %81
  store i32 100, i32* %11, align 4
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %11, align 4
  %97 = icmp sgt i32 %96, 100
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i32 [ 100, %98 ], [ %100, %99 ]
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %45, %35, %27, %18
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(%struct.cxd2880_tnrdmd*, i32, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(%struct.cxd2880_tnrdmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
