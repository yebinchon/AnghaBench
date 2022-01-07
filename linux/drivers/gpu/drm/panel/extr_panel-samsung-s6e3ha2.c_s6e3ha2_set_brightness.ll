; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e3ha2.c_s6e3ha2_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.s6e3ha2 = type { i32 }

@S6E3HA2_MIN_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid brightness: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_BLANK_NORMAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @s6e3ha2_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e3ha2_set_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.s6e3ha2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.s6e3ha2* @bl_get_data(%struct.backlight_device* %7)
  store %struct.s6e3ha2* %8, %struct.s6e3ha2** %4, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @S6E3HA2_MIN_BRIGHTNESS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %19 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %17, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16, %1
  %24 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %25 = getelementptr inbounds %struct.s6e3ha2, %struct.s6e3ha2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %16
  %32 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FB_BLANK_NORMAL, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %44 = call i32 @s6e3ha2_test_key_on_f0(%struct.s6e3ha2* %43)
  %45 = call i32 @s6e3ha2_call_write_func(i32 %42, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @s6e3ha2_update_gamma(%struct.s6e3ha2* %47, i32 %48)
  %50 = call i32 @s6e3ha2_call_write_func(i32 %46, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %53 = call i32 @s6e3ha2_aor_control(%struct.s6e3ha2* %52)
  %54 = call i32 @s6e3ha2_call_write_func(i32 %51, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %57 = call i32 @s6e3ha2_set_vint(%struct.s6e3ha2* %56)
  %58 = call i32 @s6e3ha2_call_write_func(i32 %55, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.s6e3ha2*, %struct.s6e3ha2** %4, align 8
  %61 = call i32 @s6e3ha2_test_key_off_f0(%struct.s6e3ha2* %60)
  %62 = call i32 @s6e3ha2_call_write_func(i32 %59, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %41, %38, %23
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.s6e3ha2* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @s6e3ha2_call_write_func(i32, i32) #1

declare dso_local i32 @s6e3ha2_test_key_on_f0(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_update_gamma(%struct.s6e3ha2*, i32) #1

declare dso_local i32 @s6e3ha2_aor_control(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_set_vint(%struct.s6e3ha2*) #1

declare dso_local i32 @s6e3ha2_test_key_off_f0(%struct.s6e3ha2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
