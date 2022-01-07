; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_wistron_btns.c_wistron_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@cmos_address = common dso_local global i32 0, align 4
@have_wifi = common dso_local global i64 0, align 8
@WIFI = common dso_local global i32 0, align 4
@wifi_enabled = common dso_local global i32 0, align 4
@have_bluetooth = common dso_local global i32 0, align 4
@BLUETOOTH = common dso_local global i32 0, align 4
@bluetooth_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wistron_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wistron_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call i32 (...) @bios_attach()
  %8 = call i32 (...) @bios_get_cmos_address()
  store i32 %8, i32* @cmos_address, align 4
  %9 = load i64, i64* @have_wifi, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i32, i32* @WIFI, align 4
  %13 = call i32 @bios_get_default_setting(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 2
  store i32 %19, i32* @wifi_enabled, align 4
  br label %21

20:                                               ; preds = %11
  store i64 0, i64* @have_wifi, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i64, i64* @have_wifi, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @WIFI, align 4
  %26 = load i32, i32* @wifi_enabled, align 4
  %27 = call i32 @bios_set_state(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @have_bluetooth, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* @BLUETOOTH, align 4
  %34 = call i32 @bios_get_default_setting(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 2
  store i32 %40, i32* @bluetooth_enabled, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* @have_bluetooth, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* @have_bluetooth, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @BLUETOOTH, align 4
  %47 = load i32, i32* @bluetooth_enabled, align 4
  %48 = call i32 @bios_set_state(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @wistron_led_init(i32* %52)
  %54 = call i32 (...) @setup_input_dev()
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 (...) @bios_detach()
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @bios_attach(...) #1

declare dso_local i32 @bios_get_cmos_address(...) #1

declare dso_local i32 @bios_get_default_setting(i32) #1

declare dso_local i32 @bios_set_state(i32, i32) #1

declare dso_local i32 @wistron_led_init(i32*) #1

declare dso_local i32 @setup_input_dev(...) #1

declare dso_local i32 @bios_detach(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
