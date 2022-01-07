; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_init_lcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_lcd.c_picolcd_init_lcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, %struct.lcd_device*, %struct.TYPE_4__* }
%struct.lcd_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unsupported CONTRAST report\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@picolcd_lcdops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to register LCD\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_init_lcd(%struct.picolcd_data* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.lcd_device*, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %8 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %9 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %13 = icmp ne %struct.hid_report* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %19 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %24 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %33 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %45

40:                                               ; preds = %31, %22, %17
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_name(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %50 = call %struct.lcd_device* @lcd_device_register(i32 %47, %struct.device* %48, %struct.picolcd_data* %49, i32* @picolcd_lcdops)
  store %struct.lcd_device* %50, %struct.lcd_device** %7, align 8
  %51 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %52 = call i64 @IS_ERR(%struct.lcd_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %58 = call i32 @PTR_ERR(%struct.lcd_device* %57)
  store i32 %58, i32* %3, align 4
  br label %70

59:                                               ; preds = %45
  %60 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %61 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 255, i32* %62, align 4
  %63 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %64 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %63, i32 0, i32 0
  store i32 229, i32* %64, align 8
  %65 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %66 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %67 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %66, i32 0, i32 1
  store %struct.lcd_device* %65, %struct.lcd_device** %67, align 8
  %68 = load %struct.lcd_device*, %struct.lcd_device** %7, align 8
  %69 = call i32 @picolcd_set_contrast(%struct.lcd_device* %68, i32 229)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %59, %54, %40, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.lcd_device* @lcd_device_register(i32, %struct.device*, %struct.picolcd_data*, i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.lcd_device*) #1

declare dso_local i32 @picolcd_set_contrast(%struct.lcd_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
