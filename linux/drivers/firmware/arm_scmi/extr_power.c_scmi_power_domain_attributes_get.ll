; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_power.c_scmi_power_domain_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_power.c_scmi_power_domain_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.power_dom_info = type { i32, i32, i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.scmi_msg_resp_power_domain_attributes* }
%struct.scmi_msg_resp_power_domain_attributes = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@POWER_DOMAIN_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_POWER = common dso_local global i32 0, align 4
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, %struct.power_dom_info*)* @scmi_power_domain_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_power_domain_attributes_get(%struct.scmi_handle* %0, i32 %1, %struct.power_dom_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.power_dom_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_msg_resp_power_domain_attributes*, align 8
  %11 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.power_dom_info* %2, %struct.power_dom_info** %7, align 8
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %13 = load i32, i32* @POWER_DOMAIN_ATTRIBUTES, align 4
  %14 = load i32, i32* @SCMI_PROTOCOL_POWER, align 4
  %15 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %12, i32 %13, i32 %14, i32 4, i32 8, %struct.scmi_xfer** %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %23 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @put_unaligned_le32(i32 %21, i32 %25)
  %27 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %28 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.scmi_msg_resp_power_domain_attributes*, %struct.scmi_msg_resp_power_domain_attributes** %29, align 8
  store %struct.scmi_msg_resp_power_domain_attributes* %30, %struct.scmi_msg_resp_power_domain_attributes** %10, align 8
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %32 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %33 = call i32 @scmi_do_xfer(%struct.scmi_handle* %31, %struct.scmi_xfer* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %20
  %37 = load %struct.scmi_msg_resp_power_domain_attributes*, %struct.scmi_msg_resp_power_domain_attributes** %10, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_resp_power_domain_attributes, %struct.scmi_msg_resp_power_domain_attributes* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @SUPPORTS_STATE_SET_NOTIFY(i32 %41)
  %43 = load %struct.power_dom_info*, %struct.power_dom_info** %7, align 8
  %44 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @SUPPORTS_STATE_SET_ASYNC(i32 %45)
  %47 = load %struct.power_dom_info*, %struct.power_dom_info** %7, align 8
  %48 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @SUPPORTS_STATE_SET_SYNC(i32 %49)
  %51 = load %struct.power_dom_info*, %struct.power_dom_info** %7, align 8
  %52 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.power_dom_info*, %struct.power_dom_info** %7, align 8
  %54 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.scmi_msg_resp_power_domain_attributes*, %struct.scmi_msg_resp_power_domain_attributes** %10, align 8
  %57 = getelementptr inbounds %struct.scmi_msg_resp_power_domain_attributes, %struct.scmi_msg_resp_power_domain_attributes* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %60 = call i32 @strlcpy(i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %36, %20
  %62 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %63 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %64 = call i32 @scmi_xfer_put(%struct.scmi_handle* %62, %struct.scmi_xfer* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SUPPORTS_STATE_SET_NOTIFY(i32) #1

declare dso_local i32 @SUPPORTS_STATE_SET_ASYNC(i32) #1

declare dso_local i32 @SUPPORTS_STATE_SET_SYNC(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
