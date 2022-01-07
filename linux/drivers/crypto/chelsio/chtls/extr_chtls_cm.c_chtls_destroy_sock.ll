; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.sock*)* }
%struct.sock = type { %struct.TYPE_2__* }
%struct.chtls_sock = type { i32, i32 }

@ULP_MODE_NONE = common dso_local global i32 0, align 4
@chtls_sock_release = common dso_local global i32 0, align 4
@tcp_prot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chtls_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %4)
  store %struct.chtls_sock* %5, %struct.chtls_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @chtls_purge_recv_queue(%struct.sock* %6)
  %8 = load i32, i32* @ULP_MODE_NONE, align 4
  %9 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %10 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call i32 @chtls_purge_write_queue(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call i32 @free_tls_keyid(%struct.sock* %13)
  %15 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %16 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %15, i32 0, i32 0
  %17 = load i32, i32* @chtls_sock_release, align 4
  %18 = call i32 @kref_put(i32* %16, i32 %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  store %struct.TYPE_2__* @tcp_prot, %struct.TYPE_2__** %20, align 8
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call i32 %25(%struct.sock* %26)
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @chtls_purge_recv_queue(%struct.sock*) #1

declare dso_local i32 @chtls_purge_write_queue(%struct.sock*) #1

declare dso_local i32 @free_tls_keyid(%struct.sock*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
