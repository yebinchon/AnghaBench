; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_output_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_output_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.i2c_hid = type { i32 }

@HID_INPUT_REPORT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i64, i8, i32)* @i2c_hid_output_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_output_raw_report(%struct.hid_device* %0, i32* %1, i64 %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.i2c_hid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %16 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %12, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %20 = call %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.i2c_hid* %20, %struct.i2c_hid** %13, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @HID_INPUT_REPORT, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %70

32:                                               ; preds = %5
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %34 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @HID_FEATURE_REPORT, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 3, i32 2
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @i2c_hid_set_or_send_report(%struct.i2c_client* %44, i32 %51, i32 %52, i32* %53, i64 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load i32, i32* %15, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %59, %43
  %66 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %67 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %29
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_hid_set_or_send_report(%struct.i2c_client*, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
