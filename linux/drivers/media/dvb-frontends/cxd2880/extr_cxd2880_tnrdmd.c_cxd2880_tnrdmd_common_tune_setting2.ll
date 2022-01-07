; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_common_tune_setting2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_common_tune_setting2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.cxd2880_tnrdmd* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_common_tune_setting2(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %10 = icmp ne %struct.cxd2880_tnrdmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %75

14:                                               ; preds = %3
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %75

23:                                               ; preds = %14
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %31 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %29, %23
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @x_tune3(%struct.cxd2880_tnrdmd* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %75

47:                                               ; preds = %38
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %49 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %54, i32 0, i32 2
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @x_tune3(%struct.cxd2880_tnrdmd* %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %75

64:                                               ; preds = %53
  %65 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %66 = call i32 @x_tune4(%struct.cxd2880_tnrdmd* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %74 = call i32 @cxd2880_tnrdmd_set_ts_output(%struct.cxd2880_tnrdmd* %73, i32 1)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %69, %62, %45, %35, %20, %11
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @x_tune3(%struct.cxd2880_tnrdmd*, i32, i32) #1

declare dso_local i32 @x_tune4(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @cxd2880_tnrdmd_set_ts_output(%struct.cxd2880_tnrdmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
