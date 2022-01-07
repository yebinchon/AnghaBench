; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssi_protocol = type { i64, i32, i32, i32, i32, i32, %struct.hsi_client* }
%struct.hsi_client = type { i32 }
%struct.timer_list = type { i32 }

@keep_alive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Keep alive kick in: m(%d) r(%d) s(%d)\0A\00", align 1
@RECV_IDLE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SSIP_KATOUT = common dso_local global i32 0, align 4
@ssi = common dso_local global %struct.ssi_protocol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ssip_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_keep_alive(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca %struct.hsi_client*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %6 = ptrtoint %struct.ssi_protocol* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @keep_alive, align 4
  %9 = call %struct.ssi_protocol* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ssi_protocol* %9, %struct.ssi_protocol** %3, align 8
  %10 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %11 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %10, i32 0, i32 6
  %12 = load %struct.hsi_client*, %struct.hsi_client** %11, align 8
  store %struct.hsi_client* %12, %struct.hsi_client** %4, align 8
  %13 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %14 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %13, i32 0, i32 0
  %15 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %16 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %19 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %22 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i32 %23)
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %26 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %25, i32 0, i32 2
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %29 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RECV_IDLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %35 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %48 [
    i32 128, label %37
    i32 129, label %44
  ]

37:                                               ; preds = %33
  %38 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %39 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %38, i32 0, i32 4
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %48

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %33, %43
  %45 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %46 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %45, i32 0, i32 2
  %47 = call i32 @spin_unlock(i32* %46)
  br label %60

48:                                               ; preds = %33, %42
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %51 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %50, i32 0, i32 3
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i32, i32* @SSIP_KATOUT, align 4
  %54 = call i64 @msecs_to_jiffies(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @mod_timer(i32* %51, i64 %55)
  %57 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %58 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %49, %44
  ret void
}

declare dso_local %struct.ssi_protocol* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
