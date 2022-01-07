; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/xilinx/extr_zynqmp.c_zynqmp_pm_get_api_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/xilinx/extr_zynqmp.c_zynqmp_pm_get_api_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pm_api_version = common dso_local global i64 0, align 8
@PM_GET_API_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @zynqmp_pm_get_api_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_get_api_version(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i64, i64* @pm_api_version, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @pm_api_version, align 8
  %22 = load i64*, i64** %3, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @PM_GET_API_VERSION, align 4
  %25 = call i32 @zynqmp_pm_invoke_fn(i32 %24, i32 0, i32 0, i32 0, i32 0, i64* %11)
  store i32 %25, i32* %6, align 4
  %26 = getelementptr inbounds i64, i64* %11, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %3, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %20, %14
  %31 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zynqmp_pm_invoke_fn(i32, i32, i32, i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
