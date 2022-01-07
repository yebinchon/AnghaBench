; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, %struct.ims_pcu_backlight }
%struct.ims_pcu_backlight = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"pcu%d::kbd_backlight\00", align 1
@IMS_PCU_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@ims_pcu_backlight_get_brightness = common dso_local global i32 0, align 4
@ims_pcu_backlight_set_brightness = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to register backlight LED device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_setup_backlight(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca %struct.ims_pcu_backlight*, align 8
  %5 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %6 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %7 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %6, i32 0, i32 2
  store %struct.ims_pcu_backlight* %7, %struct.ims_pcu_backlight** %4, align 8
  %8 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %9 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %12 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snprintf(i32 %10, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %16 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %19 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @IMS_PCU_MAX_BRIGHTNESS, align 4
  %22 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %23 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ims_pcu_backlight_get_brightness, align 4
  %26 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %27 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ims_pcu_backlight_set_brightness, align 4
  %30 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %31 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %34 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ims_pcu_backlight*, %struct.ims_pcu_backlight** %4, align 8
  %37 = getelementptr inbounds %struct.ims_pcu_backlight, %struct.ims_pcu_backlight* %36, i32 0, i32 0
  %38 = call i32 @led_classdev_register(i32 %35, %struct.TYPE_2__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %43 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
