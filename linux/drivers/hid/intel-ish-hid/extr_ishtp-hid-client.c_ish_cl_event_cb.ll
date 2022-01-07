; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ish_cl_event_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/extr_ishtp-hid-client.c_ish_cl_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_cl_rb = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_cl_device*)* @ish_cl_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ish_cl_event_cb(%struct.ishtp_cl_device* %0) #0 {
  %2 = alloca %struct.ishtp_cl_device*, align 8
  %3 = alloca %struct.ishtp_cl*, align 8
  %4 = alloca %struct.ishtp_cl_rb*, align 8
  %5 = alloca i64, align 8
  store %struct.ishtp_cl_device* %0, %struct.ishtp_cl_device** %2, align 8
  %6 = load %struct.ishtp_cl_device*, %struct.ishtp_cl_device** %2, align 8
  %7 = call %struct.ishtp_cl* @ishtp_get_drvdata(%struct.ishtp_cl_device* %6)
  store %struct.ishtp_cl* %7, %struct.ishtp_cl** %3, align 8
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %9 = icmp ne %struct.ishtp_cl* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %23, %11
  %13 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %14 = call %struct.ishtp_cl_rb* @ishtp_cl_rx_get_rb(%struct.ishtp_cl* %13)
  store %struct.ishtp_cl_rb* %14, %struct.ishtp_cl_rb** %4, align 8
  %15 = icmp ne %struct.ishtp_cl_rb* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %4, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %36

23:                                               ; preds = %16
  %24 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %4, align 8
  %25 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.ishtp_cl*, %struct.ishtp_cl** %3, align 8
  %28 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %4, align 8
  %29 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @process_recv(%struct.ishtp_cl* %27, i32 %31, i64 %32)
  %34 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %4, align 8
  %35 = call i32 @ishtp_cl_io_rb_recycle(%struct.ishtp_cl_rb* %34)
  br label %12

36:                                               ; preds = %10, %22, %12
  ret void
}

declare dso_local %struct.ishtp_cl* @ishtp_get_drvdata(%struct.ishtp_cl_device*) #1

declare dso_local %struct.ishtp_cl_rb* @ishtp_cl_rx_get_rb(%struct.ishtp_cl*) #1

declare dso_local i32 @process_recv(%struct.ishtp_cl*, i32, i64) #1

declare dso_local i32 @ishtp_cl_io_rb_recycle(%struct.ishtp_cl_rb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
