; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_vbus_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_vbus_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_usb = type { i64, i32, i32, %struct.extcon_dev* }
%struct.extcon_dev = type { i32 }

@PALMAS_INTERRUPT_BASE = common dso_local global i32 0, align 4
@PALMAS_INT3_LINE_STATE = common dso_local global i32 0, align 4
@PALMAS_INT3_LINE_STATE_VBUS = common dso_local global i32 0, align 4
@PALMAS_USB_STATE_VBUS = common dso_local global i64 0, align 8
@EXTCON_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"USB cable is attached\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Spurious connect event detected\0A\00", align 1
@PALMAS_USB_STATE_DISCONNECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"USB cable is detached\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Spurious disconnect event detected\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @palmas_vbus_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_vbus_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.palmas_usb*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.palmas_usb*
  store %struct.palmas_usb* %9, %struct.palmas_usb** %5, align 8
  %10 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %11 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %10, i32 0, i32 3
  %12 = load %struct.extcon_dev*, %struct.extcon_dev** %11, align 8
  store %struct.extcon_dev* %12, %struct.extcon_dev** %6, align 8
  %13 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %14 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PALMAS_INTERRUPT_BASE, align 4
  %17 = load i32, i32* @PALMAS_INT3_LINE_STATE, align 4
  %18 = call i32 @palmas_read(i32 %15, i32 %16, i32 %17, i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PALMAS_INT3_LINE_STATE_VBUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %25 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PALMAS_USB_STATE_VBUS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i64, i64* @PALMAS_USB_STATE_VBUS, align 8
  %31 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %32 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %34 = load i32, i32* @EXTCON_USB, align 4
  %35 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %33, i32 %34, i32 1)
  %36 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %37 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

40:                                               ; preds = %23
  %41 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %42 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %29
  br label %75

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PALMAS_INT3_LINE_STATE_VBUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %46
  %52 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %53 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PALMAS_USB_STATE_VBUS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i64, i64* @PALMAS_USB_STATE_DISCONNECT, align 8
  %59 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %60 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %62 = load i32, i32* @EXTCON_USB, align 4
  %63 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %61, i32 %62, i32 0)
  %64 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %65 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %73

68:                                               ; preds = %51
  %69 = load %struct.palmas_usb*, %struct.palmas_usb** %5, align 8
  %70 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %57
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @palmas_read(i32, i32, i32, i32*) #1

declare dso_local i32 @extcon_set_state_sync(%struct.extcon_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
