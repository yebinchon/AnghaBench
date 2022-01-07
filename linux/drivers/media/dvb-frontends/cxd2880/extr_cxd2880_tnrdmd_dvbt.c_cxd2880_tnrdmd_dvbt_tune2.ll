; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_cxd2880_tnrdmd_dvbt_tune2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt.c_cxd2880_tnrdmd_dvbt_tune2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.TYPE_2__*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i64 }
%struct.cxd2880_dvbt_tune_param = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT = common dso_local global i8* null, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt_tune2(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt_tune_param* %1) #0 {
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
  br label %95

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
  br label %95

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
  br label %95

39:                                               ; preds = %30, %24
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %41 = load i8*, i8** @CXD2880_DTV_SYS_DVBT, align 8
  %42 = call i32 @cxd2880_tnrdmd_common_tune_setting2(%struct.cxd2880_tnrdmd* %40, i8* %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %95

47:                                               ; preds = %39
  %48 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %52 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @CXD2880_DTV_SYS_DVBT, align 8
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %60 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %47
  %70 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %71 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %72 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i64 %70, i64* %74, align 8
  %75 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %76 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 8
  %82 = load i8*, i8** @CXD2880_DTV_SYS_DVBT, align 8
  %83 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %84 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = load %struct.cxd2880_dvbt_tune_param*, %struct.cxd2880_dvbt_tune_param** %5, align 8
  %88 = getelementptr inbounds %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt_tune_param* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %94

94:                                               ; preds = %69, %47
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %45, %36, %21, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(%struct.cxd2880_tnrdmd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
