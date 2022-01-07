; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i64, i32 }

@ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"READY on wrong state: S(%d) M(%d)\0A\00", align 1
@WAIT4READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Ignore spurious READY command\0A\00", align 1
@SEND_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*)* @ssip_rx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_ready(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %4 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %5 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %4)
  store %struct.ssi_protocol* %5, %struct.ssi_protocol** %3, align 8
  %6 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %7 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %10 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACTIVE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %19 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %18, i32 0, i32 0
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %24 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  %27 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %28 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %52

30:                                               ; preds = %1
  %31 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %32 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WAIT4READY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %38 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %41 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %52

43:                                               ; preds = %30
  %44 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %45 = load i32, i32* @SEND_READY, align 4
  %46 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %44, i32 %45)
  %47 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %48 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %51 = call i32 @ssip_xmit(%struct.hsi_client* %50)
  br label %52

52:                                               ; preds = %43, %36, %17
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @ssip_xmit(%struct.hsi_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
