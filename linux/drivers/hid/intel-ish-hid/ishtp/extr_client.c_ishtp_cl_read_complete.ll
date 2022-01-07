; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_read_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_read_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_rb = type { i32, %struct.ishtp_cl* }
%struct.ishtp_cl = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_cl_rb*)* @ishtp_cl_read_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_cl_read_complete(%struct.ishtp_cl_rb* %0) #0 {
  %2 = alloca %struct.ishtp_cl_rb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_cl_rb* %0, %struct.ishtp_cl_rb** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %2, align 8
  %7 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %6, i32 0, i32 1
  %8 = load %struct.ishtp_cl*, %struct.ishtp_cl** %7, align 8
  store %struct.ishtp_cl* %8, %struct.ishtp_cl** %5, align 8
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %10 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %14 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ishtp_cl_rb*, %struct.ishtp_cl_rb** %2, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl_rb, %struct.ishtp_cl_rb* %17, i32 0, i32 0
  %19 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %20 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @list_add_tail(i32* %18, i32* %21)
  %23 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %24 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.ishtp_cl*, %struct.ishtp_cl** %5, align 8
  %31 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ishtp_cl_bus_rx_event(i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ishtp_cl_bus_rx_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
