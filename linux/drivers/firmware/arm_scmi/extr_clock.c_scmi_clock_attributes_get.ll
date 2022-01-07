; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_attributes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_attributes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_clock_info = type { i8* }
%struct.scmi_xfer = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.scmi_msg_resp_clock_attributes* }
%struct.scmi_msg_resp_clock_attributes = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CLOCK_ATTRIBUTES = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, %struct.scmi_clock_info*)* @scmi_clock_attributes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_attributes_get(%struct.scmi_handle* %0, i32 %1, %struct.scmi_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scmi_clock_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  %10 = alloca %struct.scmi_msg_resp_clock_attributes*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scmi_clock_info* %2, %struct.scmi_clock_info** %7, align 8
  %11 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %12 = load i32, i32* @CLOCK_ATTRIBUTES, align 4
  %13 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %14 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %11, i32 %12, i32 %13, i32 4, i32 4, %struct.scmi_xfer** %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %22 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @put_unaligned_le32(i32 %20, i32 %24)
  %26 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %27 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.scmi_msg_resp_clock_attributes*, %struct.scmi_msg_resp_clock_attributes** %28, align 8
  store %struct.scmi_msg_resp_clock_attributes* %29, %struct.scmi_msg_resp_clock_attributes** %10, align 8
  %30 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %31 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %32 = call i32 @scmi_do_xfer(%struct.scmi_handle* %30, %struct.scmi_xfer* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %19
  %36 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %37 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.scmi_msg_resp_clock_attributes*, %struct.scmi_msg_resp_clock_attributes** %10, align 8
  %40 = getelementptr inbounds %struct.scmi_msg_resp_clock_attributes, %struct.scmi_msg_resp_clock_attributes* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %43 = call i32 @strlcpy(i8* %38, i32 %41, i32 %42)
  br label %49

44:                                               ; preds = %19
  %45 = load %struct.scmi_clock_info*, %struct.scmi_clock_info** %7, align 8
  %46 = getelementptr inbounds %struct.scmi_clock_info, %struct.scmi_clock_info* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %51 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %52 = call i32 @scmi_xfer_put(%struct.scmi_handle* %50, %struct.scmi_xfer* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
