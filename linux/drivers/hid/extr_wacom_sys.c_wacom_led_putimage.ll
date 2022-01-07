; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_putimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_putimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WAC_CMD_ICON_START = common dso_local global i8 0, align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@WAC_CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32, i8, i32, i8*)* @wacom_led_putimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_putimage(%struct.wacom* %0, i32 %1, i8 zeroext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 %16, 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = add i32 %18, 3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %103

27:                                               ; preds = %5
  %28 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 1, i8* %32, align 1
  %33 = load %struct.wacom*, %struct.wacom** %7, align 8
  %34 = getelementptr inbounds %struct.wacom, %struct.wacom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %39 = call i32 @wacom_set_report(i32 %35, i32 %36, i8* %37, i32 2, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %99

43:                                               ; preds = %27
  %44 = load i8, i8* %9, align 1
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 7
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %49, i8* %51, align 1
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %83, %43
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %57, i8* %59, align 1
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr i8, i8* %62, i64 %66
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @memcpy(i8* %61, i8* %67, i32 %68)
  %70 = load %struct.wacom*, %struct.wacom** %7, align 8
  %71 = getelementptr inbounds %struct.wacom, %struct.wacom* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add i32 %75, 3
  %77 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %78 = call i32 @wacom_set_report(i32 %72, i32 %73, i8* %74, i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %55
  br label %86

82:                                               ; preds = %55
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %52

86:                                               ; preds = %81, %52
  %87 = load i8, i8* @WAC_CMD_ICON_START, align 1
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 %87, i8* %89, align 1
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 0, i8* %91, align 1
  %92 = load %struct.wacom*, %struct.wacom** %7, align 8
  %93 = getelementptr inbounds %struct.wacom, %struct.wacom* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* @WAC_CMD_RETRIES, align 4
  %98 = call i32 @wacom_set_report(i32 %94, i32 %95, i8* %96, i32 2, i32 %97)
  br label %99

99:                                               ; preds = %86, %42
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @kfree(i8* %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %24
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @wacom_set_report(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
