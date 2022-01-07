; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close_con_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_close_con_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_close_con_rpl = type { i32 }
%struct.chtls_sock = type { i32 }
%struct.tcp_sock = type { i32, i64 }

@RSS_HDR = common dso_local global i32 0, align 4
@CSK_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@TCP_FIN_WAIT2 = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@CSK_ABORT_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"close_con_rpl in bad state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_close_con_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_close_con_rpl(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_close_con_rpl*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.cpl_close_con_rpl* @cplhdr(%struct.sk_buff* %8)
  %10 = load i32, i32* @RSS_HDR, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cpl_close_con_rpl, %struct.cpl_close_con_rpl* %9, i64 %11
  store %struct.cpl_close_con_rpl* %12, %struct.cpl_close_con_rpl** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %13)
  store %struct.chtls_sock* %14, %struct.chtls_sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %7, align 8
  %17 = load %struct.cpl_close_con_rpl*, %struct.cpl_close_con_rpl** %5, align 8
  %18 = getelementptr inbounds %struct.cpl_close_con_rpl, %struct.cpl_close_con_rpl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohl(i32 %19)
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %82 [
    i32 130, label %27
    i32 128, label %41
    i32 129, label %46
  ]

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @chtls_release_resources(%struct.sock* %28)
  %30 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
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
  br label %87

41:                                               ; preds = %2
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @chtls_release_resources(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i32 @chtls_conn_done(%struct.sock* %44)
  br label %87

46:                                               ; preds = %2
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = load i32, i32* @TCP_FIN_WAIT2, align 4
  %49 = call i32 @tcp_set_state(%struct.sock* %47, i32 %48)
  %50 = load i32, i32* @SEND_SHUTDOWN, align 4
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = load i32, i32* @SOCK_DEAD, align 4
  %57 = call i32 @sock_flag(%struct.sock* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %46
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  %62 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %61, align 8
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = call i32 %62(%struct.sock* %63)
  br label %81

65:                                               ; preds = %46
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %66)
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %73 = load i32, i32* @CSK_ABORT_SHUTDOWN, align 4
  %74 = call i32 @csk_flag_nochk(%struct.chtls_sock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @chtls_abort_conn(%struct.sock* %77, %struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %76, %71, %65
  br label %81

81:                                               ; preds = %80, %59
  br label %87

82:                                               ; preds = %2
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %81, %41, %40
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  ret void
}

declare dso_local %struct.cpl_close_con_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @chtls_release_resources(%struct.sock*) #1

declare dso_local i32 @csk_flag_nochk(%struct.chtls_sock*, i32) #1

declare dso_local i32 @chtls_conn_done(%struct.sock*) #1

declare dso_local i32 @chtls_timewait(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @chtls_abort_conn(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
