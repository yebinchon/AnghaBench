; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_protocol_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_protocol_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.clock_info = type { i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_resp_clock_protocol_attributes* }
%struct.scmi_msg_resp_clock_protocol_attributes = type { i32, i32 }

@PROTOCOL_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.clock_info*)* @scmi_clock_protocol_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_protocol_attributes_get(%struct.scmi_handle* %0, %struct.clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.clock_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_xfer*, align 8
  %8 = alloca %struct.scmi_msg_resp_clock_protocol_attributes*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.clock_info* %1, %struct.clock_info** %5, align 8
  %9 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %10 = load i32, i32* @PROTOCOL_ATTRIBUTES, align 4
  %11 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %12 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %9, i32 %10, i32 %11, i32 0, i32 8, %struct.scmi_xfer** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %19 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scmi_msg_resp_clock_protocol_attributes*, %struct.scmi_msg_resp_clock_protocol_attributes** %20, align 8
  store %struct.scmi_msg_resp_clock_protocol_attributes* %21, %struct.scmi_msg_resp_clock_protocol_attributes** %8, align 8
  %22 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %23 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %24 = call i32 @scmi_do_xfer(%struct.scmi_handle* %22, %struct.scmi_xfer* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %17
  %28 = load %struct.scmi_msg_resp_clock_protocol_attributes*, %struct.scmi_msg_resp_clock_protocol_attributes** %8, align 8
  %29 = getelementptr inbounds %struct.scmi_msg_resp_clock_protocol_attributes, %struct.scmi_msg_resp_clock_protocol_attributes* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load %struct.clock_info*, %struct.clock_info** %5, align 8
  %33 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.scmi_msg_resp_clock_protocol_attributes*, %struct.scmi_msg_resp_clock_protocol_attributes** %8, align 8
  %35 = getelementptr inbounds %struct.scmi_msg_resp_clock_protocol_attributes, %struct.scmi_msg_resp_clock_protocol_attributes* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clock_info*, %struct.clock_info** %5, align 8
  %38 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %27, %17
  %40 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %41 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %42 = call i32 @scmi_xfer_put(%struct.scmi_handle* %40, %struct.scmi_xfer* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
