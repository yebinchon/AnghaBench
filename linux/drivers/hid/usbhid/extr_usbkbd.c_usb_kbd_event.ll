; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usb_kbd = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EV_LED = common dso_local global i32 0, align 4
@LED_KANA = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_submit_urb(leds) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @usb_kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_kbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.usb_kbd*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = call %struct.usb_kbd* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.usb_kbd* %13, %struct.usb_kbd** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @EV_LED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %131

18:                                               ; preds = %4
  %19 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %20 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %19, i32 0, i32 3
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @LED_KANA, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = shl i32 %31, 3
  %33 = load i32, i32* @LED_COMPOSE, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = shl i32 %41, 3
  %43 = or i32 %32, %42
  %44 = load i32, i32* @LED_SCROLLL, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @test_bit(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = shl i32 %52, 2
  %54 = or i32 %43, %53
  %55 = load i32, i32* @LED_CAPSL, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = shl i32 %63, 1
  %65 = or i32 %54, %64
  %66 = load i32, i32* @LED_NUML, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @test_bit(i32 %66, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = or i32 %65, %74
  %76 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %77 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %79 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %18
  %83 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %84 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %83, i32 0, i32 3
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  store i32 0, i32* %5, align 4
  br label %131

87:                                               ; preds = %18
  %88 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %89 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %93 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %98 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %97, i32 0, i32 3
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  store i32 0, i32* %5, align 4
  br label %131

101:                                              ; preds = %87
  %102 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %103 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %106 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  store i32 %104, i32* %107, align 4
  %108 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %109 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %112 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %116 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %115, i32 0, i32 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call i64 @usb_submit_urb(%struct.TYPE_2__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %101
  %122 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %126

123:                                              ; preds = %101
  %124 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %125 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = load %struct.usb_kbd*, %struct.usb_kbd** %11, align 8
  %128 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %127, i32 0, i32 3
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %96, %82, %17
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.usb_kbd* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
