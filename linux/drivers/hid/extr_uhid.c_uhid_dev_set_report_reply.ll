; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_set_report_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_dev_set_report_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_device = type { i32 }
%struct.uhid_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhid_device*, %struct.uhid_event*)* @uhid_dev_set_report_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_dev_set_report_reply(%struct.uhid_device* %0, %struct.uhid_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca %struct.uhid_event*, align 8
  store %struct.uhid_device* %0, %struct.uhid_device** %4, align 8
  store %struct.uhid_event* %1, %struct.uhid_event** %5, align 8
  %6 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %7 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %15 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %16 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %21 = call i32 @uhid_report_wake_up(%struct.uhid_device* %14, i32 %19, %struct.uhid_event* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @uhid_report_wake_up(%struct.uhid_device*, i32, %struct.uhid_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
