; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_queue_unknown_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-dj.c_logi_dj_recv_queue_unknown_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dj_receiver_dev = type { i32, i32, i64 }
%struct.dj_workitem = type { i32 }

@WORKITEM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dj_receiver_dev*)* @logi_dj_recv_queue_unknown_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logi_dj_recv_queue_unknown_work(%struct.dj_receiver_dev* %0) #0 {
  %2 = alloca %struct.dj_receiver_dev*, align 8
  %3 = alloca %struct.dj_workitem, align 4
  store %struct.dj_receiver_dev* %0, %struct.dj_receiver_dev** %2, align 8
  %4 = getelementptr inbounds %struct.dj_workitem, %struct.dj_workitem* %3, i32 0, i32 0
  %5 = load i32, i32* @WORKITEM_TYPE_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @jiffies, align 4
  %7 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %2, align 8
  %8 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i64 @time_before(i32 %6, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %2, align 8
  %19 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %18, i32 0, i32 1
  %20 = call i32 @kfifo_in(i32* %19, %struct.dj_workitem* %3, i32 4)
  %21 = load %struct.dj_receiver_dev*, %struct.dj_receiver_dev** %2, align 8
  %22 = getelementptr inbounds %struct.dj_receiver_dev, %struct.dj_receiver_dev* %21, i32 0, i32 0
  %23 = call i32 @schedule_work(i32* %22)
  br label %24

24:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @kfifo_in(i32*, %struct.dj_workitem*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
