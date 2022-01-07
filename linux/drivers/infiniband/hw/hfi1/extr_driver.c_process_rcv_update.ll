; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_rcv_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_rcv_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, i32*, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hfi1_packet*)* @process_rcv_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rcv_update(i32 %0, %struct.hfi1_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_packet*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %9 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %7
  %14 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %15 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %21 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @update_usrhead(i32 %16, i32 %19, i64 %22, i32 %25, i32 0, i32 0)
  %27 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %28 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %13, %7, %2
  %30 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %31 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @update_usrhead(i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
