; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_line_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_line_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_cdc_line_coding = type { i32, i32 }

@USB_CDC_REQ_SET_LINE_CODING = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to set line coding, error: %d\0A\00", align 1
@USB_CDC_REQ_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to set line state, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*)* @ims_pcu_line_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_line_setup(%struct.ims_pcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ims_pcu*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_cdc_line_coding*, align 8
  %6 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %3, align 8
  %7 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %8 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  store %struct.usb_host_interface* %11, %struct.usb_host_interface** %4, align 8
  %12 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %13 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.usb_cdc_line_coding*
  store %struct.usb_cdc_line_coding* %16, %struct.usb_cdc_line_coding** %5, align 8
  %17 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %5, align 8
  %18 = call i32 @memset(%struct.usb_cdc_line_coding* %17, i32 0, i32 8)
  %19 = call i32 @cpu_to_le32(i32 57600)
  %20 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %5, align 8
  %21 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %5, align 8
  %23 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %22, i32 0, i32 0
  store i32 8, i32* %23, align 4
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %28 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_sndctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @USB_CDC_REQ_SET_LINE_CODING, align 4
  %32 = load i32, i32* @USB_TYPE_CLASS, align 4
  %33 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_cdc_line_coding*, %struct.usb_cdc_line_coding** %5, align 8
  %40 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %34, i32 0, i32 %38, %struct.usb_cdc_line_coding* %39, i32 8, i32 5000)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %45 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %1
  %51 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %52 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %55 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_sndctrlpipe(i32 %56, i32 0)
  %58 = load i32, i32* @USB_CDC_REQ_SET_CONTROL_LINE_STATE, align 4
  %59 = load i32, i32* @USB_TYPE_CLASS, align 4
  %60 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_control_msg(i32 %53, i32 %57, i32 %58, i32 %61, i32 3, i32 %65, %struct.usb_cdc_line_coding* null, i32 0, i32 5000)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %50
  %70 = load %struct.ims_pcu*, %struct.ims_pcu** %3, align 8
  %71 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %69, %43
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.usb_cdc_line_coding*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.usb_cdc_line_coding*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
