; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_tune2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd_dvbt2.c_cxd2880_tnrdmd_dvbt2_tune2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i64 }
%struct.cxd2880_dvbt2_tune_param = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i8* null, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_dvbt2_tune_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca %struct.cxd2880_dvbt2_tune_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store %struct.cxd2880_dvbt2_tune_param* %1, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %12 = icmp ne %struct.cxd2880_dvbt2_tune_param* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %125

16:                                               ; preds = %10
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %125

25:                                               ; preds = %16
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %125

40:                                               ; preds = %31, %25
  %41 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %42 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %65 [
    i32 129, label %44
    i32 128, label %48
    i32 130, label %52
  ]

44:                                               ; preds = %40
  %45 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %46 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %68

52:                                               ; preds = %40
  %53 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %64

63:                                               ; preds = %57, %52
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %68

65:                                               ; preds = %40
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %125

68:                                               ; preds = %64, %48, %44
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %70 = load i8*, i8** @CXD2880_DTV_SYS_DVBT2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @cxd2880_tnrdmd_common_tune_setting2(%struct.cxd2880_tnrdmd* %69, i8* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %125

77:                                               ; preds = %68
  %78 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %82 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load i8*, i8** @CXD2880_DTV_SYS_DVBT2, align 8
  %87 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %88 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %90 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %93 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %77
  %100 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %101 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %102 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  store i64 %100, i64* %104, align 8
  %105 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %106 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %109 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 8
  %112 = load i8*, i8** @CXD2880_DTV_SYS_DVBT2, align 8
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %112, i8** %116, align 8
  %117 = load %struct.cxd2880_dvbt2_tune_param*, %struct.cxd2880_dvbt2_tune_param** %5, align 8
  %118 = getelementptr inbounds %struct.cxd2880_dvbt2_tune_param, %struct.cxd2880_dvbt2_tune_param* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %121 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %120, i32 0, i32 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  br label %124

124:                                              ; preds = %99, %77
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %75, %65, %37, %22, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(%struct.cxd2880_tnrdmd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
