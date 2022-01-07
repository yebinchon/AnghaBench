; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_dvbt2_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_dvbt2_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32 }
%struct.cxd2880_dvbt2_tune_param = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_BW_1_7_MHZ = common dso_local global i64 0, align 8
@CXD2880_DTV_BW_5_MHZ = common dso_local global i64 0, align 8
@CXD2880_DTV_BW_6_MHZ = common dso_local global i64 0, align 8
@CXD2880_DTV_BW_7_MHZ = common dso_local global i64 0, align 8
@CXD2880_DTV_BW_8_MHZ = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@CXD2880_DVBT2_PROFILE_BASE = common dso_local global i64 0, align 8
@CXD2880_DVBT2_PROFILE_LITE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_WAIT_AGC_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt2_tune_param*)* @cxd2880_dvbt2_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_dvbt2_tune(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_tune_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_tune_param*, align 8
  %6 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_tune_param* %1, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %11 = icmp ne %struct.cxd2880_dvbt2_tune_param* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %108

15:                                               ; preds = %9
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %108

24:                                               ; preds = %15
  %25 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %108

39:                                               ; preds = %30, %24
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 2
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %44 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CXD2880_DTV_BW_1_7_MHZ, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %39
  %49 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %50 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CXD2880_DTV_BW_5_MHZ, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %56 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CXD2880_DTV_BW_6_MHZ, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %62 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CXD2880_DTV_BW_7_MHZ, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %68 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CXD2880_DTV_BW_8_MHZ, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOTTY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %108

75:                                               ; preds = %66, %60, %54, %48, %39
  %76 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %77 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CXD2880_DVBT2_PROFILE_BASE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %83 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CXD2880_DVBT2_PROFILE_LITE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %108

90:                                               ; preds = %81, %75
  %91 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %92 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %93 = call i32 @cxd2880_tnrdmd_dvbt2_tune1(%struct.cxd2880_tnrdmd* %91, %struct.cxd2880_dvbt2_tune_param* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %108

98:                                               ; preds = %90
  %99 = load i32, i32* @CXD2880_TNRDMD_WAIT_AGC_STABLE, align 4
  %100 = mul nsw i32 %99, 10000
  %101 = load i32, i32* @CXD2880_TNRDMD_WAIT_AGC_STABLE, align 4
  %102 = mul nsw i32 %101, 10000
  %103 = add nsw i32 %102, 1000
  %104 = call i32 @usleep_range(i32 %100, i32 %103)
  %105 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %106 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %107 = call i32 @cxd2880_tnrdmd_dvbt2_tune2(%struct.cxd2880_tnrdmd* %105, %struct.cxd2880_dvbt2_tune_param* %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %98, %96, %87, %72, %36, %21, %12
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt2_tune_param*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(%struct.cxd2880_tnrdmd*, %struct.cxd2880_dvbt2_tune_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
