; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_do_xfer_with_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_do_xfer_with_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.scmi_xfer = type { i32* }

@SCMI_MAX_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@async_response = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scmi_do_xfer_with_response(%struct.scmi_handle* %0, %struct.scmi_xfer* %1) #0 {
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca %struct.scmi_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  store %struct.scmi_xfer* %1, %struct.scmi_xfer** %4, align 8
  %7 = load i32, i32* @SCMI_MAX_RESPONSE_TIMEOUT, align 4
  %8 = call i32 @msecs_to_jiffies(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @async_response, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  %11 = load %struct.scmi_xfer*, %struct.scmi_xfer** %4, align 8
  %12 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %11, i32 0, i32 0
  store i32* @async_response, i32** %12, align 8
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %14 = load %struct.scmi_xfer*, %struct.scmi_xfer** %4, align 8
  %15 = call i32 @scmi_do_xfer(%struct.scmi_handle* %13, %struct.scmi_xfer* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load %struct.scmi_xfer*, %struct.scmi_xfer** %4, align 8
  %20 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @wait_for_completion_timeout(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %18, %2
  %29 = load %struct.scmi_xfer*, %struct.scmi_xfer** %4, align 8
  %30 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
