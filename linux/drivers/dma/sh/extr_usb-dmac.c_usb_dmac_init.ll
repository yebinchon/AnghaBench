; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac = type { i32 }

@USB_DMAOR = common dso_local global i32 0, align 4
@USB_DMAOR_DME = common dso_local global i32 0, align 4
@USB_DMAOR_AE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DMAOR initialization failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dmac*)* @usb_dmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_init(%struct.usb_dmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_dmac*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_dmac* %0, %struct.usb_dmac** %3, align 8
  %5 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %6 = load i32, i32* @USB_DMAOR, align 4
  %7 = load i32, i32* @USB_DMAOR_DME, align 4
  %8 = call i32 @usb_dmac_write(%struct.usb_dmac* %5, i32 %6, i32 %7)
  %9 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %10 = load i32, i32* @USB_DMAOR, align 4
  %11 = call i32 @usb_dmac_read(%struct.usb_dmac* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @USB_DMAOR_AE, align 4
  %14 = load i32, i32* @USB_DMAOR_DME, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @USB_DMAOR_DME, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.usb_dmac*, %struct.usb_dmac** %3, align 8
  %21 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @usb_dmac_write(%struct.usb_dmac*, i32, i32) #1

declare dso_local i32 @usb_dmac_read(%struct.usb_dmac*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
