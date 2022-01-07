; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_waketest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_waketest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i32, i32, i32, i32 }

@HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"wake lines test ignored M(%d)\0A\00", align 1
@SSIP_WAKETEST_FLAG = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"WAKELINES TEST %s\0A\00", align 1
@SSIP_WAKETEST_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"CMT is ONLINE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*, i32)* @ssip_rx_waketest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_waketest(%struct.hsi_client* %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %8 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %7)
  store %struct.ssi_protocol* %8, %struct.ssi_protocol** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @SSIP_PAYLOAD(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %12 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %15 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HANDSHAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %21 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %20, i32 0, i32 0
  %22 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %23 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %27 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %82

29:                                               ; preds = %2
  %30 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %31 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %30, i32 0, i32 2
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load i32, i32* @SSIP_WAKETEST_FLAG, align 4
  %34 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %35 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %34, i32 0, i32 4
  %36 = call i64 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %40 = call i32 @ssi_waketest(%struct.hsi_client* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %29
  %42 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %43 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load i64, i64* @ACTIVE, align 8
  %46 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %47 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %49 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %48, i32 0, i32 3
  %50 = call i32 @del_timer(i32* %49)
  %51 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %52 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %55 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SSIP_WAKETEST_FAILED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 @dev_notice(i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SSIP_WAKETEST_FAILED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %41
  %68 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %69 = call i32 @ssip_error(%struct.hsi_client* %68)
  br label %82

70:                                               ; preds = %41
  %71 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %72 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %75 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netif_wake_queue(i32 %76)
  %78 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %79 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @netif_carrier_on(i32 %80)
  br label %82

82:                                               ; preds = %70, %67, %19
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @SSIP_PAYLOAD(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ssi_waketest(%struct.hsi_client*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*, i8*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
