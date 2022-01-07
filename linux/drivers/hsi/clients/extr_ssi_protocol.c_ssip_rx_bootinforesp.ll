; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_bootinforesp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_bootinforesp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i32, i32 }

@SSIP_LOCAL_VERID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"boot info resp verid mismatch\0A\00", align 1
@ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SSIP_WDTOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"boot info resp ignored M(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*, i32)* @ssip_rx_bootinforesp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_bootinforesp(%struct.hsi_client* %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssi_protocol*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %7 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %6)
  store %struct.ssi_protocol* %7, %struct.ssi_protocol** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @SSIP_DATA_VERSION(i32 %8)
  %10 = load i64, i64* @SSIP_LOCAL_VERID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %14 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %13, i32 0, i32 0
  %15 = call i32 @dev_warn(i32* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %18 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %27 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %26, i32 0, i32 2
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i32, i32* @SSIP_WDTOUT, align 4
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @mod_timer(i32* %27, i64 %31)
  br label %40

33:                                               ; preds = %16
  %34 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %35 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %34, i32 0, i32 0
  %36 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %37 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %42 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i64 @SSIP_DATA_VERSION(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
