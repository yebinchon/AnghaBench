; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_bus_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_bus_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_cl_bus_rx_event(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca %struct.ishtp_cl_device*, align 8
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %2, align 8
  %3 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %4 = icmp ne %struct.ishtp_cl_device* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %7 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %20

11:                                               ; preds = %5
  %12 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %13 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl_device, %struct.ishtp_cl_device* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  br label %20

20:                                               ; preds = %10, %16, %11
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
