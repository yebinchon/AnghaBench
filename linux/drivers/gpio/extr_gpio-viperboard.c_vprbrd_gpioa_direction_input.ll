; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vprbrd_gpio = type { i32, %struct.vprbrd* }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_gpioa_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VPRBRD_GPIOA_CMD_SETIN = common dso_local global i32 0, align 4
@gpioa_clk = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_GPIOA = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vprbrd_gpioa_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpioa_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vprbrd_gpio*, align 8
  %8 = alloca %struct.vprbrd*, align 8
  %9 = alloca %struct.vprbrd_gpioa_msg*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.vprbrd_gpio* %11, %struct.vprbrd_gpio** %7, align 8
  %12 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %12, i32 0, i32 1
  %14 = load %struct.vprbrd*, %struct.vprbrd** %13, align 8
  store %struct.vprbrd* %14, %struct.vprbrd** %8, align 8
  %15 = load %struct.vprbrd*, %struct.vprbrd** %8, align 8
  %16 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vprbrd_gpioa_msg*
  store %struct.vprbrd_gpioa_msg* %18, %struct.vprbrd_gpioa_msg** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.vprbrd*, %struct.vprbrd** %8, align 8
  %27 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @VPRBRD_GPIOA_CMD_SETIN, align 4
  %30 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %31 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @gpioa_clk, align 4
  %33 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %34 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %37 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %39 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %41 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %40, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %43 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %45 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %44, i32 0, i32 4
  store i32 0, i32* %45, align 4
  %46 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %47 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  %48 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %49 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %48, i32 0, i32 6
  store i32 0, i32* %49, align 4
  %50 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %51 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %50, i32 0, i32 7
  store i32 0, i32* %51, align 4
  %52 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %53 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %52, i32 0, i32 8
  store i32 0, i32* %53, align 4
  %54 = load %struct.vprbrd*, %struct.vprbrd** %8, align 8
  %55 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vprbrd*, %struct.vprbrd** %8, align 8
  %58 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_sndctrlpipe(i32 %59, i32 0)
  %61 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOA, align 4
  %62 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %63 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %9, align 8
  %64 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %65 = call i32 @usb_control_msg(i32 %56, i32 %60, i32 %61, i32 %62, i32 0, i32 0, %struct.vprbrd_gpioa_msg* %63, i32 44, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.vprbrd*, %struct.vprbrd** %8, align 8
  %67 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 44
  br i1 %71, label %72, label %75

72:                                               ; preds = %2
  %73 = load i32, i32* @EREMOTEIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_gpioa_msg*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
