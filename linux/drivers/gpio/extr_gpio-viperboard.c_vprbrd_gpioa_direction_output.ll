; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vprbrd_gpio = type { i32, i32, %struct.vprbrd* }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_gpioa_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VPRBRD_GPIOA_CMD_SETOUT = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_GPIOA = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @vprbrd_gpioa_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpioa_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vprbrd_gpio*, align 8
  %10 = alloca %struct.vprbrd*, align 8
  %11 = alloca %struct.vprbrd_gpioa_msg*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = call %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.vprbrd_gpio* %13, %struct.vprbrd_gpio** %9, align 8
  %14 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %15 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %14, i32 0, i32 2
  %16 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  store %struct.vprbrd* %16, %struct.vprbrd** %10, align 8
  %17 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %18 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vprbrd_gpioa_msg*
  store %struct.vprbrd_gpioa_msg* %20, %struct.vprbrd_gpioa_msg** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %24 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %33 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %41 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %46 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* @VPRBRD_GPIOA_CMD_SETOUT, align 4
  %49 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %50 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %52 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %55 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %57 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %59 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %61 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %60, i32 0, i32 4
  store i32 0, i32* %61, align 4
  %62 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %63 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %62, i32 0, i32 5
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %66 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %68 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %67, i32 0, i32 7
  store i32 0, i32* %68, align 4
  %69 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %70 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %69, i32 0, i32 8
  store i32 0, i32* %70, align 4
  %71 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %72 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %71, i32 0, i32 9
  store i32 0, i32* %72, align 4
  %73 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %74 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %77 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_sndctrlpipe(i32 %78, i32 0)
  %80 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOA, align 4
  %81 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %82 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %83 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %84 = call i32 @usb_control_msg(i32 %75, i32 %79, i32 %80, i32 %81, i32 0, i32 0, %struct.vprbrd_gpioa_msg* %82, i32 44, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %86 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ne i64 %89, 44
  br i1 %90, label %91, label %94

91:                                               ; preds = %44
  %92 = load i32, i32* @EREMOTEIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %4, align 4
  ret i32 %96
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
