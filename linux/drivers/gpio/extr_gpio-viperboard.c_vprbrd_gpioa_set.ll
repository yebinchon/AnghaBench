; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_set.c"
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
@.str = private unnamed_addr constant [29 x i8] c"usb error setting pin value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @vprbrd_gpioa_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vprbrd_gpioa_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vprbrd_gpio*, align 8
  %9 = alloca %struct.vprbrd*, align 8
  %10 = alloca %struct.vprbrd_gpioa_msg*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
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
  %19 = inttoptr i64 %18 to %struct.vprbrd_gpioa_msg*
  store %struct.vprbrd_gpioa_msg* %19, %struct.vprbrd_gpioa_msg** %10, align 8
  %20 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %21 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %98

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %34 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %8, align 8
  %42 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %47 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i32, i32* @VPRBRD_GPIOA_CMD_SETOUT, align 4
  %50 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %51 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %53 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %56 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %58 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %60 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %62 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %61, i32 0, i32 4
  store i32 0, i32* %62, align 4
  %63 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %64 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %63, i32 0, i32 5
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %67 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %69 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %68, i32 0, i32 7
  store i32 0, i32* %69, align 4
  %70 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %71 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %70, i32 0, i32 8
  store i32 0, i32* %71, align 4
  %72 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %73 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %72, i32 0, i32 9
  store i32 0, i32* %73, align 4
  %74 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %75 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %78 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_sndctrlpipe(i32 %79, i32 0)
  %81 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOA, align 4
  %82 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %83 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %10, align 8
  %84 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %85 = call i32 @usb_control_msg(i32 %76, i32 %80, i32 %81, i32 %82, i32 0, i32 0, %struct.vprbrd_gpioa_msg* %83, i32 44, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load %struct.vprbrd*, %struct.vprbrd** %9, align 8
  %87 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %90, 44
  br i1 %91, label %92, label %97

92:                                               ; preds = %45
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %94 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %45
  br label %98

98:                                               ; preds = %97, %3
  ret void
}

declare dso_local %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_gpioa_msg*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
