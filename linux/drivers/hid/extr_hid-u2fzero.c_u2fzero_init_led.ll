; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_init_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_init_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u2fzero_device = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@DRIVER_SHORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@LED_HW_PLUGGABLE = common dso_local global i32 0, align 4
@u2fzero_brightness_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u2fzero_device*, i32)* @u2fzero_init_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u2fzero_init_led(%struct.u2fzero_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.u2fzero_device*, align 8
  %5 = alloca i32, align 4
  store %struct.u2fzero_device* %0, %struct.u2fzero_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %7 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @DRIVER_SHORT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @devm_kasprintf(i32* %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %15 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %17 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %25 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %28 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32* %26, i32** %29, align 8
  %30 = load i32, i32* @LED_ON, align 4
  %31 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %32 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @LED_HW_PLUGGABLE, align 4
  %35 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %36 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @u2fzero_brightness_set, align 4
  %39 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %40 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %43 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.u2fzero_device*, %struct.u2fzero_device** %4, align 8
  %47 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %46, i32 0, i32 0
  %48 = call i32 @devm_led_classdev_register(i32* %45, %struct.TYPE_4__* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %23, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32* @devm_kasprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
