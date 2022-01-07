; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_integ.c_cxd2880_integ_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_integ.c_cxd2880_integ_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_WAIT_INIT_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_WAIT_INIT_INTVL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_integ_init(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %14 = call i32 @cxd2880_tnrdmd_init1(%struct.cxd2880_tnrdmd* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %12
  %20 = call i32 (...) @ktime_get()
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %42
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %23 = call i32 @cxd2880_tnrdmd_check_internal_cpu_status(%struct.cxd2880_tnrdmd* %22, i64* %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %47

32:                                               ; preds = %28
  %33 = call i32 (...) @ktime_get()
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ktime_sub(i32 %33, i32 %34)
  %36 = call i64 @ktime_to_ms(i32 %35)
  %37 = load i64, i64* @CXD2880_TNRDMD_WAIT_INIT_TIMEOUT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load i64, i64* @CXD2880_TNRDMD_WAIT_INIT_INTVL, align 8
  %44 = load i64, i64* @CXD2880_TNRDMD_WAIT_INIT_INTVL, align 8
  %45 = add nsw i64 %44, 1000
  %46 = call i32 @usleep_range(i64 %43, i64 %45)
  br label %21

47:                                               ; preds = %31
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %49 = call i32 @cxd2880_tnrdmd_init2(%struct.cxd2880_tnrdmd* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %39, %26, %17, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @cxd2880_tnrdmd_init1(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @cxd2880_tnrdmd_check_internal_cpu_status(%struct.cxd2880_tnrdmd*, i64*) #1

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @cxd2880_tnrdmd_init2(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
