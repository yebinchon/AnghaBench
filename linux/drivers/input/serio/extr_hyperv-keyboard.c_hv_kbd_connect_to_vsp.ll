; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_connect_to_vsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_connect_to_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.hv_kbd_dev = type { %struct.synth_kbd_protocol_response, i32, %struct.synth_kbd_protocol_request }
%struct.synth_kbd_protocol_response = type { i32 }
%struct.synth_kbd_protocol_request = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@SYNTH_KBD_PROTOCOL_REQUEST = common dso_local global i32 0, align 4
@SYNTH_KBD_VERSION = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PROTOCOL_ACCEPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"synth_kbd protocol request failed (version %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_kbd_connect_to_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kbd_connect_to_vsp(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_kbd_dev*, align 8
  %5 = alloca %struct.synth_kbd_protocol_request*, align 8
  %6 = alloca %struct.synth_kbd_protocol_response*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.hv_kbd_dev* @hv_get_drvdata(%struct.hv_device* %9)
  store %struct.hv_kbd_dev* %10, %struct.hv_kbd_dev** %4, align 8
  %11 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %4, align 8
  %12 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %11, i32 0, i32 2
  store %struct.synth_kbd_protocol_request* %12, %struct.synth_kbd_protocol_request** %5, align 8
  %13 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %5, align 8
  %14 = call i32 @memset(%struct.synth_kbd_protocol_request* %13, i32 0, i32 16)
  %15 = load i32, i32* @SYNTH_KBD_PROTOCOL_REQUEST, align 4
  %16 = call i8* @__cpu_to_le32(i32 %15)
  %17 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %5, align 8
  %18 = getelementptr inbounds %struct.synth_kbd_protocol_request, %struct.synth_kbd_protocol_request* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @SYNTH_KBD_VERSION, align 4
  %21 = call i8* @__cpu_to_le32(i32 %20)
  %22 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %5, align 8
  %23 = getelementptr inbounds %struct.synth_kbd_protocol_request, %struct.synth_kbd_protocol_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %26 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %5, align 8
  %29 = load %struct.synth_kbd_protocol_request*, %struct.synth_kbd_protocol_request** %5, align 8
  %30 = ptrtoint %struct.synth_kbd_protocol_request* %29 to i64
  %31 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %32 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %33 = call i32 @vmbus_sendpacket(i32 %27, %struct.synth_kbd_protocol_request* %28, i32 16, i64 %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %1
  %39 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %4, align 8
  %40 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %39, i32 0, i32 1
  %41 = load i32, i32* @HZ, align 4
  %42 = mul nsw i32 10, %41
  %43 = call i32 @wait_for_completion_timeout(i32* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %38
  %49 = load %struct.hv_kbd_dev*, %struct.hv_kbd_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hv_kbd_dev, %struct.hv_kbd_dev* %49, i32 0, i32 0
  store %struct.synth_kbd_protocol_response* %50, %struct.synth_kbd_protocol_response** %6, align 8
  %51 = load %struct.synth_kbd_protocol_response*, %struct.synth_kbd_protocol_response** %6, align 8
  %52 = getelementptr inbounds %struct.synth_kbd_protocol_response, %struct.synth_kbd_protocol_response* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le32_to_cpu(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PROTOCOL_ACCEPTED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %48
  %60 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %61 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %60, i32 0, i32 0
  %62 = load i32, i32* @SYNTH_KBD_VERSION, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %59, %45, %36
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.hv_kbd_dev* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.synth_kbd_protocol_request*, i32, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.synth_kbd_protocol_request*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
