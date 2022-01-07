; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_cxd2880_tnrdmd_dvbt_tune1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_cxd2880_tnrdmd_dvbt_tune1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32, %struct.cxd2880_tnrdmd* }
%struct.cxd2880_dvbt_tune_param = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune1(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt_tune_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt_tune_param*, align 8
  %6 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt_tune_param* %1, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %11 = icmp ne %struct.cxd2880_dvbt_tune_param* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %96

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
  br label %96

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
  br label %96

39:                                               ; preds = %30, %24
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %41 = load i32, i32* @CXD2880_DTV_SYS_DVBT, align 4
  %42 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %43 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %46 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cxd2880_tnrdmd_common_tune_setting1(%struct.cxd2880_tnrdmd* %40, i32 %41, i32 %44, i32 %47, i32 0, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %96

53:                                               ; preds = %39
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %55 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %56 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @x_tune_dvbt_demod_setting(%struct.cxd2880_tnrdmd* %54, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %96

66:                                               ; preds = %53
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 3
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %74, align 8
  %76 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %77 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 3
  %81 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %80, align 8
  %82 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @x_tune_dvbt_demod_setting(%struct.cxd2880_tnrdmd* %75, i32 %78, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %96

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %92 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %93 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dvbt_set_profile(%struct.cxd2880_tnrdmd* %91, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %87, %64, %51, %36, %21, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting1(%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @x_tune_dvbt_demod_setting(%struct.cxd2880_tnrdmd*, i32, i32) #1

declare dso_local i32 @dvbt_set_profile(%struct.cxd2880_tnrdmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
