; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_dvbt_calc_ssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt_mon.c_dvbt_calc_ssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i32 }
%struct.cxd2880_dvbt_tpsinfo = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_DVBT_CONSTELLATION_RESERVED_3 = common dso_local global i64 0, align 8
@CXD2880_DVBT_CODERATE_RESERVED_5 = common dso_local global i64 0, align 8
@ref_dbm_1000 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i32*)* @dvbt_calc_ssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbt_calc_ssi(%struct.cxd2880_tnrdmd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cxd2880_dvbt_tpsinfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %13 = icmp ne %struct.cxd2880_tnrdmd* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %97

20:                                               ; preds = %14
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %22 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd* %21, %struct.cxd2880_dvbt_tpsinfo* %8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %97

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CXD2880_DVBT_CONSTELLATION_RESERVED_3, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CXD2880_DVBT_CODERATE_RESERVED_5, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %97

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32**, i32*** @ref_dbm_1000, align 8
  %43 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %8, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %41, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, -15000
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %87

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 15000
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1500
  %63 = sdiv i32 %62, 3000
  store i32 %63, i32* %10, align 4
  br label %86

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 20000
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 4, %68
  %70 = add nsw i32 %69, 500
  %71 = sdiv i32 %70, 1000
  %72 = add nsw i32 %71, 10
  store i32 %72, i32* %10, align 4
  br label %85

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 35000
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 20000
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %79, 1500
  %81 = sdiv i32 %80, 3000
  %82 = add nsw i32 %81, 90
  store i32 %82, i32* %10, align 4
  br label %84

83:                                               ; preds = %73
  store i32 100, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %76
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %58
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %88, 100
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 100, %90 ], [ %92, %91 ]
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %37, %25, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt_tpsinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
