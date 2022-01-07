; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_mISDN_sock_cmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_mISDN_sock_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.__kernel_old_timeval = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MISDN_TIME_STAMP = common dso_local global i32 0, align 4
@SOL_MISDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.msghdr*, %struct.sk_buff*)* @mISDN_sock_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mISDN_sock_cmsg(%struct.sock* %0, %struct.msghdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.__kernel_old_timeval, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.TYPE_2__* @_pms(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MISDN_TIME_STAMP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_get_timestamp(%struct.sk_buff* %16, %struct.__kernel_old_timeval* %7)
  %18 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %19 = load i32, i32* @SOL_MISDN, align 4
  %20 = load i32, i32* @MISDN_TIME_STAMP, align 4
  %21 = call i32 @put_cmsg(%struct.msghdr* %18, i32 %19, i32 %20, i32 4, %struct.__kernel_old_timeval* %7)
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @_pms(%struct.sock*) #1

declare dso_local i32 @skb_get_timestamp(%struct.sk_buff*, %struct.__kernel_old_timeval*) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, %struct.__kernel_old_timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
