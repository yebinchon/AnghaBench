; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_flash_init_sysfs_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class-flash.c_led_flash_init_sysfs_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.led_classdev_flash = type { %struct.attribute_group**, %struct.led_flash_ops*, %struct.led_classdev }
%struct.led_flash_ops = type { i64, i64, i64 }
%struct.led_classdev = type { %struct.attribute_group** }

@led_flash_strobe_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@led_flash_brightness_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@led_flash_timeout_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@led_flash_fault_group = common dso_local global %struct.attribute_group zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev_flash*)* @led_flash_init_sysfs_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_flash_init_sysfs_groups(%struct.led_classdev_flash* %0) #0 {
  %2 = alloca %struct.led_classdev_flash*, align 8
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.led_flash_ops*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca i32, align 4
  store %struct.led_classdev_flash* %0, %struct.led_classdev_flash** %2, align 8
  %7 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %2, align 8
  %8 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %7, i32 0, i32 2
  store %struct.led_classdev* %8, %struct.led_classdev** %3, align 8
  %9 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %2, align 8
  %10 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %9, i32 0, i32 1
  %11 = load %struct.led_flash_ops*, %struct.led_flash_ops** %10, align 8
  store %struct.led_flash_ops* %11, %struct.led_flash_ops** %4, align 8
  %12 = load %struct.led_classdev_flash*, %struct.led_classdev_flash** %2, align 8
  %13 = getelementptr inbounds %struct.led_classdev_flash, %struct.led_classdev_flash* %12, i32 0, i32 0
  %14 = load %struct.attribute_group**, %struct.attribute_group*** %13, align 8
  store %struct.attribute_group** %14, %struct.attribute_group*** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %15, i64 %18
  store %struct.attribute_group* @led_flash_strobe_group, %struct.attribute_group** %19, align 8
  %20 = load %struct.led_flash_ops*, %struct.led_flash_ops** %4, align 8
  %21 = getelementptr inbounds %struct.led_flash_ops, %struct.led_flash_ops* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %25, i64 %28
  store %struct.attribute_group* @led_flash_brightness_group, %struct.attribute_group** %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.led_flash_ops*, %struct.led_flash_ops** %4, align 8
  %32 = getelementptr inbounds %struct.led_flash_ops, %struct.led_flash_ops* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %36, i64 %39
  store %struct.attribute_group* @led_flash_timeout_group, %struct.attribute_group** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.led_flash_ops*, %struct.led_flash_ops** %4, align 8
  %43 = getelementptr inbounds %struct.led_flash_ops, %struct.led_flash_ops* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %47, i64 %50
  store %struct.attribute_group* @led_flash_fault_group, %struct.attribute_group** %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %54 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %55 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %54, i32 0, i32 0
  store %struct.attribute_group** %53, %struct.attribute_group*** %55, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
