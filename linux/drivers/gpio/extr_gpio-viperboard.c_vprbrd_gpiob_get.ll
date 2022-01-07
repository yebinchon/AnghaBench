; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vprbrd_gpio = type { i32, i32, %struct.vprbrd* }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_gpiob_msg = type { i32 }

@VPRBRD_USB_REQUEST_GPIOB = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_IN = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vprbrd_gpiob_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpiob_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vprbrd_gpio*, align 8
  %9 = alloca %struct.vprbrd*, align 8
  %10 = alloca %struct.vprbrd_gpiob_msg*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.vprbrd_gpio* %12, %struct.vprbrd_gpio** %8, align 8
  %13 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %14 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %13, i32 0, i32 2
  %15 = load %struct.vprbrd*, %struct.vprbrd** %14, align 8
  store %struct.vprbrd* %15, %struct.vprbrd** %9, align 8
  %16 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %17 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.vprbrd_gpiob_msg*
  store %struct.vprbrd_gpiob_msg* %19, %struct.vprbrd_gpiob_msg** %10, align 8
  %20 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %21 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %29 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  store i32 %33, i32* %3, align 4
  br label %72

34:                                               ; preds = %2
  %35 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %36 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %39 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %42 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_rcvctrlpipe(i32 %43, i32 0)
  %45 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOB, align 4
  %46 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %47 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %10, align 8
  %48 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %49 = call i32 @usb_control_msg(i32 %40, i32 %44, i32 %45, i32 %46, i32 0, i32 0, %struct.vprbrd_gpiob_msg* %47, i32 4, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %10, align 8
  %51 = getelementptr inbounds %struct.vprbrd_gpiob_msg, %struct.vprbrd_gpiob_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %54 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %34
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %34
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @be16_to_cpu(i32 %62)
  %64 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %65 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %67 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = ashr i32 %68, %69
  %71 = and i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %59, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_gpiob_msg*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
