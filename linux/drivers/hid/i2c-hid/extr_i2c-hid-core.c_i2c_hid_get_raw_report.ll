; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_get_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_get_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.i2c_hid = type { i32*, i64 }

@HID_OUTPUT_REPORT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8)* @i2c_hid_get_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_get_raw_report(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.i2c_hid*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %17 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %12, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %21 = call %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.i2c_hid* %21, %struct.i2c_hid** %13, align 8
  %22 = load i8, i8* %11, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @HID_OUTPUT_REPORT, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %89

30:                                               ; preds = %5
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, 2
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %34 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @min(i64 %32, i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @HID_FEATURE_REPORT, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 3, i32 1
  %45 = load i8, i8* %8, align 1
  %46 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %47 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @i2c_hid_get_report(%struct.i2c_client* %37, i32 %44, i8 zeroext %45, i32* %48, i64 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %30
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  br label %89

55:                                               ; preds = %30
  %56 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %57 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %62 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ule i64 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %89

72:                                               ; preds = %55
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @min(i64 %73, i64 %74)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %77, 2
  %79 = call i64 @min(i64 %76, i64 %78)
  store i64 %79, i64* %10, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.i2c_hid*, %struct.i2c_hid** %13, align 8
  %82 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @memcpy(i32* %80, i32* %84, i64 %85)
  %87 = load i64, i64* %10, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %72, %71, %53, %27
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @i2c_hid_get_report(%struct.i2c_client*, i32, i8 zeroext, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
