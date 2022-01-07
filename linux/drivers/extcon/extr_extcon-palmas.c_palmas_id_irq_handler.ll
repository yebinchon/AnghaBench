; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_id_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-palmas.c_palmas_id_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_usb = type { i64, i32, i32, %struct.extcon_dev* }
%struct.extcon_dev = type { i32 }

@PALMAS_USB_OTG_BASE = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_LATCH_SET = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_SRC = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_SRC_ID_GND = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_LATCH_CLR = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_EN_HI_CLR_ID_GND = common dso_local global i32 0, align 4
@PALMAS_USB_STATE_ID = common dso_local global i64 0, align 8
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"USB-HOST cable is attached\0A\00", align 1
@PALMAS_USB_ID_INT_SRC_ID_FLOAT = common dso_local global i32 0, align 4
@PALMAS_USB_ID_INT_EN_HI_CLR_ID_FLOAT = common dso_local global i32 0, align 4
@PALMAS_USB_STATE_DISCONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"USB-HOST cable is detached\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" USB-HOST cable is attached\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @palmas_id_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_id_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.palmas_usb*, align 8
  %8 = alloca %struct.extcon_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.palmas_usb*
  store %struct.palmas_usb* %10, %struct.palmas_usb** %7, align 8
  %11 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %12 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %11, i32 0, i32 3
  %13 = load %struct.extcon_dev*, %struct.extcon_dev** %12, align 8
  store %struct.extcon_dev* %13, %struct.extcon_dev** %8, align 8
  %14 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %15 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %18 = load i32, i32* @PALMAS_USB_ID_INT_LATCH_SET, align 4
  %19 = call i32 @palmas_read(i32 %16, i32 %17, i32 %18, i32* %5)
  %20 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %21 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %24 = load i32, i32* @PALMAS_USB_ID_INT_SRC, align 4
  %25 = call i32 @palmas_read(i32 %22, i32 %23, i32 %24, i32* %6)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_GND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_GND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %37 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %40 = load i32, i32* @PALMAS_USB_ID_INT_LATCH_CLR, align 4
  %41 = load i32, i32* @PALMAS_USB_ID_INT_EN_HI_CLR_ID_GND, align 4
  %42 = call i32 @palmas_write(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i64, i64* @PALMAS_USB_STATE_ID, align 8
  %44 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %45 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.extcon_dev*, %struct.extcon_dev** %8, align 8
  %47 = load i32, i32* @EXTCON_USB_HOST, align 4
  %48 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %46, i32 %47, i32 1)
  %49 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %50 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %128

53:                                               ; preds = %30, %2
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_FLOAT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_FLOAT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %65 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PALMAS_USB_OTG_BASE, align 4
  %68 = load i32, i32* @PALMAS_USB_ID_INT_LATCH_CLR, align 4
  %69 = load i32, i32* @PALMAS_USB_ID_INT_EN_HI_CLR_ID_FLOAT, align 4
  %70 = call i32 @palmas_write(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i64, i64* @PALMAS_USB_STATE_DISCONNECT, align 8
  %72 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %73 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.extcon_dev*, %struct.extcon_dev** %8, align 8
  %75 = load i32, i32* @EXTCON_USB_HOST, align 4
  %76 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %74, i32 %75, i32 0)
  %77 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %78 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %127

81:                                               ; preds = %58, %53
  %82 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %83 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PALMAS_USB_STATE_ID, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_GND, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load i64, i64* @PALMAS_USB_STATE_DISCONNECT, align 8
  %94 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %95 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.extcon_dev*, %struct.extcon_dev** %8, align 8
  %97 = load i32, i32* @EXTCON_USB_HOST, align 4
  %98 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %96, i32 %97, i32 0)
  %99 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %100 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_dbg(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %126

103:                                              ; preds = %87, %81
  %104 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %105 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PALMAS_USB_STATE_DISCONNECT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @PALMAS_USB_ID_INT_SRC_ID_GND, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i64, i64* @PALMAS_USB_STATE_ID, align 8
  %116 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %117 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.extcon_dev*, %struct.extcon_dev** %8, align 8
  %119 = load i32, i32* @EXTCON_USB_HOST, align 4
  %120 = call i32 @extcon_set_state_sync(%struct.extcon_dev* %118, i32 %119, i32 1)
  %121 = load %struct.palmas_usb*, %struct.palmas_usb** %7, align 8
  %122 = getelementptr inbounds %struct.palmas_usb, %struct.palmas_usb* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %125

125:                                              ; preds = %114, %109, %103
  br label %126

126:                                              ; preds = %125, %92
  br label %127

127:                                              ; preds = %126, %63
  br label %128

128:                                              ; preds = %127, %35
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %129
}

declare dso_local i32 @palmas_read(i32, i32, i32, i32*) #1

declare dso_local i32 @palmas_write(i32, i32, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(%struct.extcon_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
