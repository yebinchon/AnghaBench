; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-creative-sb0540.c_creative_sb0540_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-creative-sb0540.c_creative_sb0540_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i32 }
%struct.creative_sb0540 = type { %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_QUIRK_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @creative_sb0540_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creative_sb0540_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.creative_sb0540*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.creative_sb0540* @devm_kzalloc(i32* %9, i32 8, i32 %10)
  store %struct.creative_sb0540* %11, %struct.creative_sb0540** %7, align 8
  %12 = load %struct.creative_sb0540*, %struct.creative_sb0540** %7, align 8
  %13 = icmp ne %struct.creative_sb0540* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = load %struct.creative_sb0540*, %struct.creative_sb0540** %7, align 8
  %20 = getelementptr inbounds %struct.creative_sb0540, %struct.creative_sb0540* %19, i32 0, i32 0
  store %struct.hid_device* %18, %struct.hid_device** %20, align 8
  %21 = load i32, i32* @HID_QUIRK_HIDINPUT_FORCE, align 4
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = load %struct.creative_sb0540*, %struct.creative_sb0540** %7, align 8
  %28 = call i32 @hid_set_drvdata(%struct.hid_device* %26, %struct.creative_sb0540* %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = call i32 @hid_parse(%struct.hid_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = call i32 @hid_err(%struct.hid_device* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %17
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %40 = call i32 @hid_hw_start(%struct.hid_device* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = call i32 @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %43, %33, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.creative_sb0540* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.creative_sb0540*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
