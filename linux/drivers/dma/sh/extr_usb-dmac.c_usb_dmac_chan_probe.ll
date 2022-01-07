; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_usb-dmac.c_usb_dmac_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_dmac = type { i32, i32, i64 }
%struct.usb_dmac_chan = type { i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ch%u\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_dmac_isr_channel = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to request IRQ %u (%d)\0A\00", align 1
@usb_dmac_virt_desc_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_dmac*, %struct.usb_dmac_chan*, i32)* @usb_dmac_chan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dmac_chan_probe(%struct.usb_dmac* %0, %struct.usb_dmac_chan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_dmac*, align 8
  %6 = alloca %struct.usb_dmac_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_dmac* %0, %struct.usb_dmac** %5, align 8
  store %struct.usb_dmac_chan* %1, %struct.usb_dmac_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %13 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.platform_device* @to_platform_device(i32 %14)
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %18 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %20 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @USB_DMAC_CHAN_OFFSET(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %26 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %25, i32 0, i32 5
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %32 = call i32 @platform_get_irq_byname(%struct.platform_device* %30, i8* %31)
  %33 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %34 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %36 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %3
  %43 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %44 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %48 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_name(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i8* @devm_kasprintf(i32 %45, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %98

58:                                               ; preds = %42
  %59 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %60 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %63 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @usb_dmac_isr_channel, align 4
  %66 = load i32, i32* @IRQF_SHARED, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %69 = call i32 @devm_request_irq(i32 %61, i32 %64, i32 %65, i32 %66, i8* %67, %struct.usb_dmac_chan* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %58
  %73 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %74 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %77 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %98

82:                                               ; preds = %58
  %83 = load i32, i32* @usb_dmac_virt_desc_free, align 4
  %84 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %85 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %88 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %87, i32 0, i32 3
  %89 = load %struct.usb_dmac*, %struct.usb_dmac** %5, align 8
  %90 = getelementptr inbounds %struct.usb_dmac, %struct.usb_dmac* %89, i32 0, i32 0
  %91 = call i32 @vchan_init(%struct.TYPE_2__* %88, i32* %90)
  %92 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %93 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %92, i32 0, i32 2
  %94 = call i32 @INIT_LIST_HEAD(i32* %93)
  %95 = load %struct.usb_dmac_chan*, %struct.usb_dmac_chan** %6, align 8
  %96 = getelementptr inbounds %struct.usb_dmac_chan, %struct.usb_dmac_chan* %95, i32 0, i32 1
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %82, %72, %55, %39
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i64 @USB_DMAC_CHAN_OFFSET(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.usb_dmac_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
