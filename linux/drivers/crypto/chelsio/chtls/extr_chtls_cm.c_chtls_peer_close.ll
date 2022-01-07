; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_peer_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_peer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.chtls_sock = type { i32 }

@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@TCP_CLOSE_WAIT = common dso_local global i32 0, align 4
@TCP_CLOSING = common dso_local global i32 0, align 4
@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cpl_peer_close in bad state %d\0A\00", align 1
@SOCK_DEAD = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_WAKE_WAITD = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_peer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_peer_close(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %6)
  store %struct.chtls_sock* %7, %struct.chtls_sock** %5, align 8
  %8 = load i32, i32* @RCV_SHUTDOWN, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = load i32, i32* @SOCK_DONE, align 4
  %15 = call i32 @sock_set_flag(%struct.sock* %13, i32 %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 131, label %19
    i32 130, label %23
    i32 129, label %27
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* @TCP_CLOSE_WAIT, align 4
  %22 = call i32 @tcp_set_state(%struct.sock* %20, i32 %21)
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = load i32, i32* @TCP_CLOSING, align 4
  %26 = call i32 @tcp_set_state(%struct.sock* %24, i32 %25)
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @chtls_release_resources(%struct.sock* %28)
  %30 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  %31 = load i32, i32* @CSK_ABORT_RPL_PENDING, align 4
  %32 = call i32 @csk_flag_nochk(%struct.chtls_sock* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @chtls_conn_done(%struct.sock* %35)
  br label %40

37:                                               ; preds = %27
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = call i32 @chtls_timewait(%struct.sock* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %40, %23, %19
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load i32, i32* @SOCK_DEAD, align 4
  %49 = call i32 @sock_flag(%struct.sock* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %46
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 2
  %54 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %53, align 8
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 %54(%struct.sock* %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SEND_SHUTDOWN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %51
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TCP_CLOSE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63, %51
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %72 = load i32, i32* @POLL_HUP, align 4
  %73 = call i32 @sk_wake_async(%struct.sock* %70, i32 %71, i32 %72)
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = load i32, i32* @SOCK_WAKE_WAITD, align 4
  %77 = load i32, i32* @POLL_IN, align 4
  %78 = call i32 @sk_wake_async(%struct.sock* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %46
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @chtls_release_resources(%struct.sock*) #1

declare dso_local i32 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local i32 @chtls_conn_done(%struct.sock*) #1

declare dso_local i32 @chtls_timewait(%struct.sock*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
