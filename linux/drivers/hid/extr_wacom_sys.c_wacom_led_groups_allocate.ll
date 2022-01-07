; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_groups_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_led_groups_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.wacom_group_leds* }
%struct.wacom_group_leds = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wacom_led_groups_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, i32)* @wacom_led_groups_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_led_groups_allocate(%struct.wacom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wacom_group_leds*, align 8
  %8 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wacom*, %struct.wacom** %4, align 8
  %10 = getelementptr inbounds %struct.wacom, %struct.wacom* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wacom_group_leds* @devm_kcalloc(%struct.device* %13, i32 %14, i32 4, i32 %15)
  store %struct.wacom_group_leds* %16, %struct.wacom_group_leds** %7, align 8
  %17 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %7, align 8
  %18 = icmp ne %struct.wacom_group_leds* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* @wacom_led_groups_release, align 4
  %25 = load %struct.wacom*, %struct.wacom** %4, align 8
  %26 = call i32 @devm_add_action_or_reset(%struct.device* %23, i32 %24, %struct.wacom* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.wacom_group_leds*, %struct.wacom_group_leds** %7, align 8
  %33 = load %struct.wacom*, %struct.wacom** %4, align 8
  %34 = getelementptr inbounds %struct.wacom, %struct.wacom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.wacom_group_leds* %32, %struct.wacom_group_leds** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.wacom*, %struct.wacom** %4, align 8
  %38 = getelementptr inbounds %struct.wacom, %struct.wacom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %29, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.wacom_group_leds* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
