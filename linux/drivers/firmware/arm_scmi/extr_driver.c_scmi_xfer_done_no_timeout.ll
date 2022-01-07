; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_done_no_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_driver.c_scmi_xfer_done_no_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_chan_info = type { i32 }
%struct.scmi_xfer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_chan_info*, %struct.scmi_xfer*, i32)* @scmi_xfer_done_no_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_xfer_done_no_timeout(%struct.scmi_chan_info* %0, %struct.scmi_xfer* %1, i32 %2) #0 {
  %4 = alloca %struct.scmi_chan_info*, align 8
  %5 = alloca %struct.scmi_xfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scmi_chan_info* %0, %struct.scmi_chan_info** %4, align 8
  store %struct.scmi_xfer* %1, %struct.scmi_xfer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @ktime_get()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.scmi_chan_info*, %struct.scmi_chan_info** %4, align 8
  %10 = load %struct.scmi_xfer*, %struct.scmi_xfer** %5, align 8
  %11 = call i64 @scmi_xfer_poll_done(%struct.scmi_chan_info* %9, %struct.scmi_xfer* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @ktime_after(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @scmi_xfer_poll_done(%struct.scmi_chan_info*, %struct.scmi_xfer*) #1

declare dso_local i64 @ktime_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
