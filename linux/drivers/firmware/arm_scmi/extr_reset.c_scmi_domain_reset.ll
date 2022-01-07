; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_domain_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_reset.c_scmi_domain_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_reset_info* }
%struct.scmi_reset_info = type { %struct.reset_dom_info* }
%struct.reset_dom_info = type { i64 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_msg_reset_domain_reset* }
%struct.scmi_msg_reset_domain_reset = type { i8*, i8*, i8* }

@ASYNCHRONOUS_RESET = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32, i32)* @scmi_domain_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_domain_reset(%struct.scmi_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scmi_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scmi_xfer*, align 8
  %12 = alloca %struct.scmi_msg_reset_domain_reset*, align 8
  %13 = alloca %struct.scmi_reset_info*, align 8
  %14 = alloca %struct.reset_dom_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %16 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %15, i32 0, i32 0
  %17 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %16, align 8
  store %struct.scmi_reset_info* %17, %struct.scmi_reset_info** %13, align 8
  %18 = load %struct.scmi_reset_info*, %struct.scmi_reset_info** %13, align 8
  %19 = getelementptr inbounds %struct.scmi_reset_info, %struct.scmi_reset_info* %18, i32 0, i32 0
  %20 = load %struct.reset_dom_info*, %struct.reset_dom_info** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %20, i64 %22
  store %struct.reset_dom_info* %23, %struct.reset_dom_info** %14, align 8
  %24 = load %struct.reset_dom_info*, %struct.reset_dom_info** %14, align 8
  %25 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @ASYNCHRONOUS_RESET, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %34 = load i32, i32* @RESET, align 4
  %35 = load i32, i32* @SCMI_PROTOCOL_RESET, align 4
  %36 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %33, i32 %34, i32 %35, i32 24, i32 0, %struct.scmi_xfer** %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %75

41:                                               ; preds = %32
  %42 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %43 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.scmi_msg_reset_domain_reset*, %struct.scmi_msg_reset_domain_reset** %44, align 8
  store %struct.scmi_msg_reset_domain_reset* %45, %struct.scmi_msg_reset_domain_reset** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.scmi_msg_reset_domain_reset*, %struct.scmi_msg_reset_domain_reset** %12, align 8
  %49 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, %struct.scmi_msg_reset_domain_reset* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.scmi_msg_reset_domain_reset*, %struct.scmi_msg_reset_domain_reset** %12, align 8
  %53 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, %struct.scmi_msg_reset_domain_reset* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.scmi_msg_reset_domain_reset*, %struct.scmi_msg_reset_domain_reset** %12, align 8
  %57 = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, %struct.scmi_msg_reset_domain_reset* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.reset_dom_info*, %struct.reset_dom_info** %14, align 8
  %59 = getelementptr inbounds %struct.reset_dom_info, %struct.reset_dom_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %41
  %63 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %64 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %65 = call i32 @scmi_do_xfer_with_response(%struct.scmi_handle* %63, %struct.scmi_xfer* %64)
  store i32 %65, i32* %10, align 4
  br label %70

66:                                               ; preds = %41
  %67 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %68 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %69 = call i32 @scmi_do_xfer(%struct.scmi_handle* %67, %struct.scmi_xfer* %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.scmi_handle*, %struct.scmi_handle** %6, align 8
  %72 = load %struct.scmi_xfer*, %struct.scmi_xfer** %11, align 8
  %73 = call i32 @scmi_xfer_put(%struct.scmi_handle* %71, %struct.scmi_xfer* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %39
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer_with_response(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
