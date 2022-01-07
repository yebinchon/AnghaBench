; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"RX stop M(%d)\0A\00", align 1
@ACTIVE = common dso_local global i64 0, align 8
@RECV_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*)* @ssip_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_stop_rx(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %4 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %5 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %4)
  store %struct.ssi_protocol* %5, %struct.ssi_protocol** %3, align 8
  %6 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %7 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %6, i32 0, i32 0
  %8 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %9 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %13 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %16 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACTIVE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %25 = load i32, i32* @RECV_IDLE, align 4
  %26 = call i32 @ssip_set_rxstate(%struct.ssi_protocol* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %29 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ssip_set_rxstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
