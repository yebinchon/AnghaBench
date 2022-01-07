; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_swbreak_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_swbreak_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { %struct.hsi_client* }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32, i32, i32 }

@SEND_READY = common dso_local global i32 0, align 4
@SEND_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_msg*)* @ssip_swbreak_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_swbreak_complete(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.ssi_protocol*, align 8
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %5 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %6 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %5, i32 0, i32 0
  %7 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  store %struct.hsi_client* %7, %struct.hsi_client** %3, align 8
  %8 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %9 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %8)
  store %struct.ssi_protocol* %9, %struct.ssi_protocol** %4, align 8
  %10 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %11 = call i32 @ssip_release_cmd(%struct.hsi_msg* %10)
  %12 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %13 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %16 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %15, i32 0, i32 3
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 2
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %26 = load i32, i32* @SEND_READY, align 4
  %27 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %25, i32 %26)
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %30 = load i32, i32* @SEND_IDLE, align 4
  %31 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %29, i32 %30)
  %32 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %33 = call i32 @hsi_stop_tx(%struct.hsi_client* %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %36 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_bh(i32* %36)
  br label %44

38:                                               ; preds = %1
  %39 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %40 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %43 = call i32 @ssip_xmit(%struct.hsi_client* %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.ssi_protocol*, %struct.ssi_protocol** %4, align 8
  %46 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netif_wake_queue(i32 %47)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @ssip_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @hsi_stop_tx(%struct.hsi_client*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_xmit(%struct.hsi_client*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
