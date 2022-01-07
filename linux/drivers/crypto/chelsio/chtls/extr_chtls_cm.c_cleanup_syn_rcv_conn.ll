; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_cleanup_syn_rcv_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_cleanup_syn_rcv_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.chtls_sock = type { %struct.request_sock*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @cleanup_syn_rcv_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_syn_rcv_conn(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %7)
  store %struct.chtls_sock* %8, %struct.chtls_sock** %6, align 8
  %9 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %10 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %9, i32 0, i32 0
  %11 = load %struct.request_sock*, %struct.request_sock** %10, align 8
  store %struct.request_sock* %11, %struct.request_sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %16 = call i32 @reqsk_queue_removed(i32* %14, %struct.request_sock* %15)
  %17 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %18 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %17, i32 0, i32 2
  %19 = bitcast i32* %18 to %struct.sk_buff*
  %20 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %21 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @__skb_unlink(%struct.sk_buff* %19, i32* %23)
  %25 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %26 = call i32 @chtls_reqsk_free(%struct.request_sock* %25)
  %27 = load %struct.chtls_sock*, %struct.chtls_sock** %6, align 8
  %28 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %27, i32 0, i32 0
  store %struct.request_sock* null, %struct.request_sock** %28, align 8
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @reqsk_queue_removed(i32*, %struct.request_sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @chtls_reqsk_free(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
