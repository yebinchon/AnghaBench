; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_battery_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_drvdata = type { i32, i32 }

@BATTERY_REPORT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BATTERY_REPORT_ID = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_drvdata*)* @asus_battery_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_battery_query(%struct.asus_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_drvdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.asus_drvdata* %0, %struct.asus_drvdata** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @BATTERY_REPORT_SIZE, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc(i32 %6, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.asus_drvdata*, %struct.asus_drvdata** %3, align 8
  %16 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.asus_drvdata*, %struct.asus_drvdata** %3, align 8
  %18 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BATTERY_REPORT_ID, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @BATTERY_REPORT_SIZE, align 4
  %23 = load i32, i32* @HID_INPUT_REPORT, align 4
  %24 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %25 = call i32 @hid_hw_raw_request(i32 %19, i32 %20, i32* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.asus_drvdata*, %struct.asus_drvdata** %3, align 8
  %27 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @BATTERY_REPORT_SIZE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = load %struct.asus_drvdata*, %struct.asus_drvdata** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @BATTERY_REPORT_SIZE, align 4
  %35 = call i32 @asus_parse_battery(%struct.asus_drvdata* %32, i32* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %14
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @asus_parse_battery(%struct.asus_drvdata*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
