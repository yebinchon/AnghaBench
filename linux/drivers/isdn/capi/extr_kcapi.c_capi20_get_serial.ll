; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_get_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_ctr = type { i64, i32 }

@driver_serial = common dso_local global i32 0, align 4
@CAPI_SERIAL_LEN = common dso_local global i32 0, align 4
@CAPI_NOERROR = common dso_local global i32 0, align 4
@capi_controller_lock = common dso_local global i32 0, align 4
@CAPI_CTR_RUNNING = common dso_local global i64 0, align 8
@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_get_serial(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.capi_ctr*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @driver_serial, align 4
  %13 = load i32, i32* @CAPI_SERIAL_LEN, align 4
  %14 = call i32 @strlcpy(i32* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @capi_controller_lock)
  %18 = load i64, i64* %4, align 8
  %19 = call %struct.capi_ctr* @get_capi_ctr_by_nr(i64 %18)
  store %struct.capi_ctr* %19, %struct.capi_ctr** %6, align 8
  %20 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %21 = icmp ne %struct.capi_ctr* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %24 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CAPI_CTR_RUNNING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %31 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CAPI_SERIAL_LEN, align 4
  %34 = call i32 @strlcpy(i32* %29, i32 %32, i32 %33)
  %35 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %22, %16
  %37 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = call i32 @mutex_unlock(i32* @capi_controller_lock)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.capi_ctr* @get_capi_ctr_by_nr(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
