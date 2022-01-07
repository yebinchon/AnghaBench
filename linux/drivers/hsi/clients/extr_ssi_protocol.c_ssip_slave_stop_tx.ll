; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_slave_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_slave_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i32, i32 }

@SEND_READY = common dso_local global i64 0, align 8
@WAIT4READY = common dso_local global i64 0, align 8
@SEND_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"stop TX %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssip_slave_stop_tx(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %4 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %5 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %4)
  store %struct.ssi_protocol* %5, %struct.ssi_protocol** %3, align 8
  %6 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %7 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %6, i32 0, i32 1
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %13 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %12, i32 0, i32 1
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %18 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SEND_READY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %27 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WAIT4READY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %16
  %32 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %33 = load i32, i32* @SEND_IDLE, align 4
  %34 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %32, i32 %33)
  %35 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %36 = call i32 @hsi_stop_tx(%struct.hsi_client* %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %39 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %43 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %42, i32 0, i32 0
  %44 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %45 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %46)
  ret i32 0
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @hsi_stop_tx(%struct.hsi_client*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
