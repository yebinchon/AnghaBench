; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_domain_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_reset_domain_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.reset_dom_info = type { i32, i8*, i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.scmi_msg_resp_reset_domain_attributes* }
%struct.scmi_msg_resp_reset_domain_attributes = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RESET_DOMAIN_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_RESET = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i8* null, align 8
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i8*, %struct.reset_dom_info*)* @scmi_reset_domain_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_reset_domain_attributes_get(%struct.scmi_handle* %0, i8* %1, %struct.reset_dom_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.reset_dom_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_msg_resp_reset_domain_attributes*, align 8
  %11 = alloca i8*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.reset_dom_info* %2, %struct.reset_dom_info** %7, align 8
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %13 = load i32, i32* @RESET_DOMAIN_ATTRIBUTES, align 4
  %14 = load i32, i32* @SCMI_PROTOCOL_RESET, align 4
  %15 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %12, i32 %13, i32 %14, i32 8, i32 12, %struct.scmi_xfer** %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %77

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %23 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @put_unaligned_le32(i8* %21, i32 %25)
  %27 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %28 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.scmi_msg_resp_reset_domain_attributes*, %struct.scmi_msg_resp_reset_domain_attributes** %29, align 8
  store %struct.scmi_msg_resp_reset_domain_attributes* %30, %struct.scmi_msg_resp_reset_domain_attributes** %10, align 8
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %32 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %33 = call i32 @scmi_do_xfer(%struct.scmi_handle* %31, %struct.scmi_xfer* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %20
  %37 = load %struct.scmi_msg_resp_reset_domain_attributes*, %struct.scmi_msg_resp_reset_domain_attributes** %10, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, %struct.scmi_msg_resp_reset_domain_attributes* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @SUPPORTS_ASYNC_RESET(i8* %41)
  %43 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %44 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @SUPPORTS_NOTIFY_RESET(i8* %45)
  %47 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %48 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scmi_msg_resp_reset_domain_attributes*, %struct.scmi_msg_resp_reset_domain_attributes** %10, align 8
  %50 = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, %struct.scmi_msg_resp_reset_domain_attributes* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %54 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %56 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @U32_MAX, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %62 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %61, i32 0, i32 1
  store i8* null, i8** %62, align 8
  br label %63

63:                                               ; preds = %60, %36
  %64 = load %struct.reset_dom_info*, %struct.reset_dom_info** %7, align 8
  %65 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.scmi_msg_resp_reset_domain_attributes*, %struct.scmi_msg_resp_reset_domain_attributes** %10, align 8
  %68 = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, %struct.scmi_msg_resp_reset_domain_attributes* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %71 = call i32 @strlcpy(i32 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %20
  %73 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %74 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %75 = call i32 @scmi_xfer_put(%struct.scmi_handle* %73, %struct.scmi_xfer* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i8*, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @SUPPORTS_ASYNC_RESET(i8*) #1

declare dso_local i32 @SUPPORTS_NOTIFY_RESET(i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
