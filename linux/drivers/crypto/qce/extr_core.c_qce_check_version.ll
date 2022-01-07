; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_check_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_check_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_device = type { i32, i32, i32 }

@QCE_MAJOR_VERSION5 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@QCE_BAM_BURST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Crypto device found, version %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_device*)* @qce_check_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_check_version(%struct.qce_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qce_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qce_device* %0, %struct.qce_device** %3, align 8
  %7 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %8 = call i32 @qce_get_version(%struct.qce_device* %7, i64* %4, i64* %5, i64* %6)
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @QCE_MAJOR_VERSION5, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load i32, i32* @QCE_BAM_BURST_SIZE, align 4
  %20 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %21 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %23 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.qce_device*, %struct.qce_device** %3, align 8
  %25 = getelementptr inbounds %struct.qce_device, %struct.qce_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i64 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @qce_get_version(%struct.qce_device*, i64*, i64*, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
