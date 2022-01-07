; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_disconnect_acceptq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_disconnect_acceptq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { %struct.request_sock*, %struct.sock*, i32* }

@chtls_rsk_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @chtls_disconnect_acceptq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_disconnect_acceptq(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.request_sock**, align 8
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.request_sock** @ACCEPT_QUEUE(%struct.sock* %6)
  store %struct.request_sock** %7, %struct.request_sock*** %3, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.request_sock**, %struct.request_sock*** %3, align 8
  %10 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %11 = icmp ne %struct.request_sock* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.request_sock**, %struct.request_sock*** %3, align 8
  %14 = load %struct.request_sock*, %struct.request_sock** %13, align 8
  store %struct.request_sock* %14, %struct.request_sock** %4, align 8
  %15 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %16 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, @chtls_rsk_ops
  br i1 %18, label %19, label %45

19:                                               ; preds = %12
  %20 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %21 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %20, i32 0, i32 1
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %5, align 8
  %23 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %24 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %23, i32 0, i32 0
  %25 = load %struct.request_sock*, %struct.request_sock** %24, align 8
  %26 = load %struct.request_sock**, %struct.request_sock*** %3, align 8
  store %struct.request_sock* %25, %struct.request_sock** %26, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @sk_acceptq_removed(%struct.sock* %27)
  %29 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %30 = call i32 @reqsk_put(%struct.request_sock* %29)
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call i32 @sock_hold(%struct.sock* %31)
  %33 = call i32 (...) @local_bh_disable()
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @bh_lock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = call i32 @release_tcp_port(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call i32 @reset_listen_child(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call i32 @bh_unlock_sock(%struct.sock* %40)
  %42 = call i32 (...) @local_bh_enable()
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = call i32 @sock_put(%struct.sock* %43)
  br label %48

45:                                               ; preds = %12
  %46 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %47 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %46, i32 0, i32 0
  store %struct.request_sock** %47, %struct.request_sock*** %3, align 8
  br label %48

48:                                               ; preds = %45, %19
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local %struct.request_sock** @ACCEPT_QUEUE(%struct.sock*) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

declare dso_local i32 @reqsk_put(%struct.request_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @release_tcp_port(%struct.sock*) #1

declare dso_local i32 @reset_listen_child(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
