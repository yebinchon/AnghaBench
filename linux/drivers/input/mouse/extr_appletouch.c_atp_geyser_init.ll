; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_geyser_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_geyser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp = type { %struct.TYPE_2__*, %struct.usb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_READ_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_REQUEST_VALUE = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_REQUEST_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"atp_geyser_init: read error\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"appletouch[%d]: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to read mode from device.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ATP_GEYSER_MODE_VENDOR_VALUE = common dso_local global i8 0, align 1
@ATP_GEYSER_MODE_WRITE_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"atp_geyser_init: write error\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to request geyser raw mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atp*)* @atp_geyser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_geyser_init(%struct.atp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atp*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atp* %0, %struct.atp** %3, align 8
  %9 = load %struct.atp*, %struct.atp** %3, align 8
  %10 = getelementptr inbounds %struct.atp, %struct.atp* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 8, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.atp*, %struct.atp** %3, align 8
  %18 = getelementptr inbounds %struct.atp, %struct.atp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %114

24:                                               ; preds = %1
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %26, i32 0)
  %28 = load i32, i32* @ATP_GEYSER_MODE_READ_REQUEST_ID, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_CLASS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_VALUE, align 4
  %35 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_INDEX, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @usb_control_msg(%struct.usb_device* %25, i32 %27, i32 %28, i32 %33, i32 %34, i32 %35, i8* %36, i32 8, i32 5000)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %65

40:                                               ; preds = %24
  %41 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %54, %40
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.atp*, %struct.atp** %3, align 8
  %59 = getelementptr inbounds %struct.atp, %struct.atp* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %110

65:                                               ; preds = %24
  %66 = load i8, i8* @ATP_GEYSER_MODE_VENDOR_VALUE, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  %69 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %70 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %71 = call i32 @usb_sndctrlpipe(%struct.usb_device* %70, i32 0)
  %72 = load i32, i32* @ATP_GEYSER_MODE_WRITE_REQUEST_ID, align 4
  %73 = load i32, i32* @USB_DIR_OUT, align 4
  %74 = load i32, i32* @USB_TYPE_CLASS, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_VALUE, align 4
  %79 = load i32, i32* @ATP_GEYSER_MODE_REQUEST_INDEX, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @usb_control_msg(%struct.usb_device* %69, i32 %71, i32 %72, i32 %77, i32 %78, i32 %79, i8* %80, i32 8, i32 5000)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 8
  br i1 %83, label %84, label %109

84:                                               ; preds = %65
  %85 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %98, %84
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 8
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load %struct.atp*, %struct.atp** %3, align 8
  %103 = getelementptr inbounds %struct.atp, %struct.atp* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %110

109:                                              ; preds = %65
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %109, %101, %57
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %16
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
