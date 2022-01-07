; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_discover_agent_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_base.c_scmi_base_discover_agent_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BASE_DISCOVER_AGENT = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_BASE = common dso_local global i32 0, align 4
@SCMI_MAX_STR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i8*)* @scmi_base_discover_agent_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_base_discover_agent_get(%struct.scmi_handle* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scmi_xfer*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %11 = load i32, i32* @BASE_DISCOVER_AGENT, align 4
  %12 = load i32, i32* @SCMI_PROTOCOL_BASE, align 4
  %13 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %14 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %10, i32 %11, i32 %12, i32 4, i32 %13, %struct.scmi_xfer** %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %22 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @put_unaligned_le32(i32 %20, i32 %24)
  %26 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %27 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %28 = call i32 @scmi_do_xfer(%struct.scmi_handle* %26, %struct.scmi_xfer* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %34 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SCMI_MAX_STR_SIZE, align 4
  %38 = call i32 @strlcpy(i8* %32, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %19
  %40 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %41 = load %struct.scmi_xfer*, %struct.scmi_xfer** %9, align 8
  %42 = call i32 @scmi_xfer_put(%struct.scmi_handle* %40, %struct.scmi_xfer* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
