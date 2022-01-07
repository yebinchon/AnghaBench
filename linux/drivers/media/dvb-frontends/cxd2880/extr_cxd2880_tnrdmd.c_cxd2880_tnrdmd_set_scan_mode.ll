; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, %struct.cxd2880_tnrdmd*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_set_scan_mode(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %45

13:                                               ; preds = %3
  %14 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %19, %13
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %31 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %38, i32 0, i32 2
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cxd2880_tnrdmd_set_scan_mode(%struct.cxd2880_tnrdmd* %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %37, %25, %10
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
