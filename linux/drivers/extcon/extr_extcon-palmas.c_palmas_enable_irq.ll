; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_usb = type { i32, i64, i32, i64, i32 }

@PALMAS_USB_OTG_BASE = common dso_local global i32 0, align 4
@PALMAS_USB_VBUS_CTRL_SET = common dso_local global i32 0, align 4
@PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP = common dso_local global i32 0, align 4
@PALMAS_USB_ID_CTRL_SET = common dso_local global i32 0, align 4
@PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_EN_HI_SET = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_EN_HI_SET_ID_GND = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.palmas_usb*)* @palmas_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @palmas_enable_irq(%struct.palmas_usb* %0) #0 {
  %2 = alloca %struct.palmas_usb*, align 8
  store %struct.palmas_usb* %0, %struct.palmas_usb** %2, align 8
  %3 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %4 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %7 = load i32, i32* @PALMAS_USB_VBUS_CTRL_SET, align 4
  %8 = load i32, i32* @PALMAS_USB_VBUS_CTRL_SET_VBUS_ACT_COMP, align 4
  %9 = call i32 @palmas_write(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %11 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %16 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %19 = load i32, i32* @PALMAS_USB_ID_CTRL_SET, align 4
  %20 = load i32, i32* @PALMAS_USB_ID_CTRL_SET_ID_ACT_COMP, align 4
  %21 = call i32 @palmas_write(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %23 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %26 = load i32, i32* @PALMAS_USB_ID_INT_EN_HI_SET, align 4
  %27 = load i32, i32* @PALMAS_USB_ID_INT_EN_HI_SET_ID_GND, align 4
  %28 = load i32, i32* @PALMAS_USB_ID_INT_EN_HI_SET_ID_FLOAT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @palmas_write(i32 %24, i32 %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %14, %1
  %32 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %33 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %38 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %41 = call i32 @palmas_vbus_irq_handler(i32 %39, %struct.palmas_usb* %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %44 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = call i32 @msleep(i32 30)
  %49 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %50 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.palmas_usb*, %struct.palmas_usb** %2, align 8
  %53 = call i32 @palmas_id_irq_handler(i32 %51, %struct.palmas_usb* %52)
  br label %54

54:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @palmas_write(i32, i32, i32, i32) #1

declare dso_local i32 @palmas_vbus_irq_handler(i32, %struct.palmas_usb*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @palmas_id_irq_handler(i32, %struct.palmas_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
