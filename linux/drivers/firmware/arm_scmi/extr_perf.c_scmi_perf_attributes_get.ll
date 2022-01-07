; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_perf_info = type { i32, i32, i32, i8* }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_resp_perf_attributes* }
%struct.scmi_msg_resp_perf_attributes = type { i32, i32, i32, i32, i32 }

@PROTOCOL_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.scmi_perf_info*)* @scmi_perf_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_attributes_get(%struct.scmi_handle* %0, %struct.scmi_perf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.scmi_perf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_xfer*, align 8
  %8 = alloca %struct.scmi_msg_resp_perf_attributes*, align 8
  %9 = alloca i8*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.scmi_perf_info* %1, %struct.scmi_perf_info** %5, align 8
  %10 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %11 = load i32, i32* @PROTOCOL_ATTRIBUTES, align 4
  %12 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %13 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %10, i32 %11, i32 %12, i32 0, i32 20, %struct.scmi_xfer** %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %20 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %21, align 8
  store %struct.scmi_msg_resp_perf_attributes* %22, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %23 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %24 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %25 = call i32 @scmi_do_xfer(%struct.scmi_handle* %23, %struct.scmi_xfer* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %18
  %29 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %30 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, %struct.scmi_msg_resp_perf_attributes* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %34 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, %struct.scmi_msg_resp_perf_attributes* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %5, align 8
  %38 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @POWER_SCALE_IN_MILLIWATT(i8* %39)
  %41 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %5, align 8
  %42 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %44 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, %struct.scmi_msg_resp_perf_attributes* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %48 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, %struct.scmi_msg_resp_perf_attributes* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = shl i32 %50, 32
  %52 = or i32 %46, %51
  %53 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %5, align 8
  %54 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.scmi_msg_resp_perf_attributes*, %struct.scmi_msg_resp_perf_attributes** %8, align 8
  %56 = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, %struct.scmi_msg_resp_perf_attributes* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %5, align 8
  %60 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %28, %18
  %62 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %63 = load %struct.scmi_xfer*, %struct.scmi_xfer** %7, align 8
  %64 = call i32 @scmi_xfer_put(%struct.scmi_handle* %62, %struct.scmi_xfer* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @POWER_SCALE_IN_MILLIWATT(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
