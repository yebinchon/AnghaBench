; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-transfer.c_cn_ulog_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-userspace-transfer.c_cn_ulog_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, i32 }
%struct.netlink_skb_parms = type { i32 }
%struct.dm_ulog_request = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@receiving_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Incomplete message received (expected %u, got %u): [%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @cn_ulog_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_ulog_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.dm_ulog_request*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %6 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %7 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %6, i64 1
  %8 = bitcast %struct.cn_msg* %7 to %struct.dm_ulog_request*
  store %struct.dm_ulog_request* %8, %struct.dm_ulog_request** %5, align 8
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %42

13:                                               ; preds = %2
  %14 = call i32 @spin_lock(i32* @receiving_list_lock)
  %15 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %16 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %21 = call i32 @fill_pkg(%struct.cn_msg* %20, %struct.dm_ulog_request* null)
  br label %40

22:                                               ; preds = %13
  %23 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %24 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %30 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %33 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DMERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 4, i32 %31, i32 %34)
  br label %39

36:                                               ; preds = %22
  %37 = load %struct.dm_ulog_request*, %struct.dm_ulog_request** %5, align 8
  %38 = call i32 @fill_pkg(%struct.cn_msg* null, %struct.dm_ulog_request* %37)
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %39, %19
  %41 = call i32 @spin_unlock(i32* @receiving_list_lock)
  br label %42

42:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fill_pkg(%struct.cn_msg*, %struct.dm_ulog_request*) #1

declare dso_local i32 @DMERR(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
