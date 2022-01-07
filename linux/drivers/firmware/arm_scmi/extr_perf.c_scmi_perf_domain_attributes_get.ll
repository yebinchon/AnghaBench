; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_domain_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_domain_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.perf_dom_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.scmi_msg_resp_perf_domain_attributes* }
%struct.scmi_msg_resp_perf_domain_attributes = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PERF_DOMAIN_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i8*, %struct.perf_dom_info*)* @scmi_perf_domain_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_domain_attributes_get(%struct.scmi_handle* %0, i8* %1, %struct.perf_dom_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_dom_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_msg_resp_perf_domain_attributes*, align 8
  %11 = alloca i8*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.perf_dom_info* %2, %struct.perf_dom_info** %7, align 8
  %12 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %13 = load i32, i32* @PERF_DOMAIN_ATTRIBUTES, align 4
  %14 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %15 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %12, i32 %13, i32 %14, i32 8, i32 16, %struct.scmi_xfer** %9)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %112

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
  %30 = load %struct.scmi_msg_resp_perf_domain_attributes*, %struct.scmi_msg_resp_perf_domain_attributes** %29, align 8
  store %struct.scmi_msg_resp_perf_domain_attributes* %30, %struct.scmi_msg_resp_perf_domain_attributes** %10, align 8
  %31 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %32 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %33 = call i32 @scmi_do_xfer(%struct.scmi_handle* %31, %struct.scmi_xfer* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %107, label %36

36:                                               ; preds = %20
  %37 = load %struct.scmi_msg_resp_perf_domain_attributes*, %struct.scmi_msg_resp_perf_domain_attributes** %10, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, %struct.scmi_msg_resp_perf_domain_attributes* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @SUPPORTS_SET_LIMITS(i8* %41)
  %43 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %44 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @SUPPORTS_SET_PERF_LVL(i8* %45)
  %47 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %48 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @SUPPORTS_PERF_LIMIT_NOTIFY(i8* %49)
  %51 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %52 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @SUPPORTS_PERF_LEVEL_NOTIFY(i8* %53)
  %55 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %56 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @SUPPORTS_PERF_FASTCHANNELS(i8* %57)
  %59 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %60 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.scmi_msg_resp_perf_domain_attributes*, %struct.scmi_msg_resp_perf_domain_attributes** %10, align 8
  %62 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, %struct.scmi_msg_resp_perf_domain_attributes* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %67 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.scmi_msg_resp_perf_domain_attributes*, %struct.scmi_msg_resp_perf_domain_attributes** %10, align 8
  %69 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, %struct.scmi_msg_resp_perf_domain_attributes* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %74 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %76 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %36
  %80 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %81 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79, %36
  %85 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %86 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %85, i32 0, i32 2
  store i32 1000, i32* %86, align 4
  br label %98

87:                                               ; preds = %79
  %88 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %89 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 1000
  %92 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %93 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  %96 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %97 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %84
  %99 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %100 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.scmi_msg_resp_perf_domain_attributes*, %struct.scmi_msg_resp_perf_domain_attributes** %10, align 8
  %103 = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, %struct.scmi_msg_resp_perf_domain_attributes* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %106 = call i32 @strlcpy(i32 %101, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %20
  %108 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %109 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %110 = call i32 @scmi_xfer_put(%struct.scmi_handle* %108, %struct.scmi_xfer* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i8*, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @SUPPORTS_SET_LIMITS(i8*) #1

declare dso_local i32 @SUPPORTS_SET_PERF_LVL(i8*) #1

declare dso_local i32 @SUPPORTS_PERF_LIMIT_NOTIFY(i8*) #1

declare dso_local i32 @SUPPORTS_PERF_LEVEL_NOTIFY(i8*) #1

declare dso_local i32 @SUPPORTS_PERF_FASTCHANNELS(i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
