; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_revision_info* }
%struct.scmi_revision_info = type { i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_resp_base_attributes* }
%struct.scmi_msg_resp_base_attributes = type { i32, i32 }

@PROTOCOL_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*)* @scmi_base_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_base_attributes_get(%struct.scmi_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_xfer*, align 8
  %6 = alloca %struct.scmi_msg_resp_base_attributes*, align 8
  %7 = alloca %struct.scmi_revision_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  %8 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %9 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %8, i32 0, i32 0
  %10 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %9, align 8
  store %struct.scmi_revision_info* %10, %struct.scmi_revision_info** %7, align 8
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %12 = load i32, i32* @PROTOCOL_ATTRIBUTES, align 4
  %13 = load i32, i32* @SCMI_PROTOCOL_BASE, align 4
  %14 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %11, i32 %12, i32 %13, i32 0, i32 8, %struct.scmi_xfer** %5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %21 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %22 = call i32 @scmi_do_xfer(%struct.scmi_handle* %20, %struct.scmi_xfer* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %27 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.scmi_msg_resp_base_attributes*, %struct.scmi_msg_resp_base_attributes** %28, align 8
  store %struct.scmi_msg_resp_base_attributes* %29, %struct.scmi_msg_resp_base_attributes** %6, align 8
  %30 = load %struct.scmi_msg_resp_base_attributes*, %struct.scmi_msg_resp_base_attributes** %6, align 8
  %31 = getelementptr inbounds %struct.scmi_msg_resp_base_attributes, %struct.scmi_msg_resp_base_attributes* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %7, align 8
  %34 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.scmi_msg_resp_base_attributes*, %struct.scmi_msg_resp_base_attributes** %6, align 8
  %36 = getelementptr inbounds %struct.scmi_msg_resp_base_attributes, %struct.scmi_msg_resp_base_attributes* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scmi_revision_info*, %struct.scmi_revision_info** %7, align 8
  %39 = getelementptr inbounds %struct.scmi_revision_info, %struct.scmi_revision_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %25, %19
  %41 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %42 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %43 = call i32 @scmi_xfer_put(%struct.scmi_handle* %41, %struct.scmi_xfer* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
