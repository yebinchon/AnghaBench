; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i64, i32 }
%struct.hsi_msg = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"RX start M(%d) R(%d)\0A\00", align 1
@ACTIVE = common dso_local global i64 0, align 8
@RECV_READY = common dso_local global i64 0, align 8
@SSIP_READY_CMD = common dso_local global i32 0, align 4
@ssip_release_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Send READY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*)* @ssip_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_start_rx(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %5 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %6 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %5)
  store %struct.ssi_protocol* %6, %struct.ssi_protocol** %3, align 8
  %7 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %8 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %7, i32 0, i32 0
  %9 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %10 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %13 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %14)
  %16 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %17 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %20 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACTIVE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %26 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RECV_READY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %1
  %31 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %32 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_bh(i32* %32)
  br label %55

34:                                               ; preds = %24
  %35 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %36 = load i64, i64* @RECV_READY, align 8
  %37 = call i32 @ssip_set_rxstate(%struct.ssi_protocol* %35, i64 %36)
  %38 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %39 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %42 = call %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol* %41)
  store %struct.hsi_msg* %42, %struct.hsi_msg** %4, align 8
  %43 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %44 = load i32, i32* @SSIP_READY_CMD, align 4
  %45 = call i32 @ssip_set_cmd(%struct.hsi_msg* %43, i32 %44)
  %46 = load i32, i32* @ssip_release_cmd, align 4
  %47 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %48 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %50 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %53 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %54 = call i32 @hsi_async_write(%struct.hsi_client* %52, %struct.hsi_msg* %53)
  br label %55

55:                                               ; preds = %34, %30
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_set_rxstate(%struct.ssi_protocol*, i64) #1

declare dso_local %struct.hsi_msg* @ssip_claim_cmd(%struct.ssi_protocol*) #1

declare dso_local i32 @ssip_set_cmd(%struct.hsi_msg*, i32) #1

declare dso_local i32 @hsi_async_write(%struct.hsi_client*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
