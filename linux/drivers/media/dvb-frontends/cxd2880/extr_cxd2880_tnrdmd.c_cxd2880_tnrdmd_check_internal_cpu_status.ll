; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_check_internal_cpu_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_check_internal_cpu_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_SINGLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_check_internal_cpu_status(%struct.cxd2880_tnrdmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %9 = icmp ne %struct.cxd2880_tnrdmd* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %69

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
  br label %69

25:                                               ; preds = %16
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %27 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status(%struct.cxd2880_tnrdmd* %26, i64* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SINGLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  store i32 1, i32* %42, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %69

47:                                               ; preds = %32
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %47
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %55 = call i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(%struct.cxd2880_tnrdmd* %54, i64* %6)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  store i32 1, i32* %64, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32*, i32** %5, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %58, %50, %45, %30, %22, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status(%struct.cxd2880_tnrdmd*, i64*) #1

declare dso_local i32 @cxd2880_tnrdmd_mon_internal_cpu_status_sub(%struct.cxd2880_tnrdmd*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
