; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpioa_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.vprbrd_gpio = type { i32, i32, %struct.vprbrd* }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_gpioa_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VPRBRD_GPIOA_CMD_GETIN = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_GPIOA = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vprbrd_gpioa_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpioa_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vprbrd_gpio*, align 8
  %10 = alloca %struct.vprbrd*, align 8
  %11 = alloca %struct.vprbrd_gpioa_msg*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
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
  %21 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %22 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.vprbrd_gpio*, %struct.vprbrd_gpio** %9, align 8
  %30 = getelementptr inbounds %struct.vprbrd_gpio, %struct.vprbrd_gpio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %118

39:                                               ; preds = %2
  %40 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %41 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* @VPRBRD_GPIOA_CMD_GETIN, align 4
  %44 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %45 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %47 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %50 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %52 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  %53 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %54 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  %55 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %56 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %55, i32 0, i32 4
  store i32 0, i32* %56, align 4
  %57 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %58 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %57, i32 0, i32 5
  store i32 0, i32* %58, align 4
  %59 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %60 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %59, i32 0, i32 6
  store i32 0, i32* %60, align 4
  %61 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %62 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %61, i32 0, i32 7
  store i32 0, i32* %62, align 4
  %63 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %64 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %63, i32 0, i32 8
  store i32 0, i32* %64, align 4
  %65 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %66 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %65, i32 0, i32 9
  store i32 0, i32* %66, align 4
  %67 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %68 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %71 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_sndctrlpipe(i32 %72, i32 0)
  %74 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOA, align 4
  %75 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %76 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %77 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %78 = call i32 @usb_control_msg(i32 %69, i32 %73, i32 %74, i32 %75, i32 0, i32 0, %struct.vprbrd_gpioa_msg* %76, i32 44, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 44
  br i1 %81, label %82, label %85

82:                                               ; preds = %39
  %83 = load i32, i32* @EREMOTEIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %39
  %86 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %87 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %90 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @usb_rcvctrlpipe(i32 %91, i32 0)
  %93 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOA, align 4
  %94 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %95 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %96 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %97 = call i32 @usb_control_msg(i32 %88, i32 %92, i32 %93, i32 %94, i32 0, i32 0, %struct.vprbrd_gpioa_msg* %95, i32 44, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.vprbrd_gpioa_msg*, %struct.vprbrd_gpioa_msg** %11, align 8
  %99 = getelementptr inbounds %struct.vprbrd_gpioa_msg, %struct.vprbrd_gpioa_msg* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %103 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %106, 44
  br i1 %107, label %108, label %111

108:                                              ; preds = %85
  %109 = load i32, i32* @EREMOTEIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %85
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %114, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.vprbrd_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_gpioa_msg*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
