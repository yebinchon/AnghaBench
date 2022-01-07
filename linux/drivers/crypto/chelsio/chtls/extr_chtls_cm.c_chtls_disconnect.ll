; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.tcp_sock = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCP_CLOSE = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@CPL_ABORT_SEND_RST = common dso_local global i32 0, align 4
@TCPF_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chtls_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %6, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call i32 @chtls_purge_recv_queue(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @chtls_purge_receive_queue(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @chtls_purge_write_queue(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_CLOSE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @ECONNRESET, align 4
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = load i32, i32* @CPL_ABORT_SEND_RST, align 4
  %27 = call i32 @chtls_send_reset(%struct.sock* %25, i32 %26, i32* null)
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = load i32, i32* @TCPF_CLOSE, align 4
  %30 = call i32 @wait_for_states(%struct.sock* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %51

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @chtls_purge_recv_queue(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @chtls_purge_receive_queue(%struct.sock* %39)
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 65535, %44
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @tcp_disconnect(%struct.sock* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %36, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @chtls_purge_recv_queue(%struct.sock*) #1

declare dso_local i32 @chtls_purge_receive_queue(%struct.sock*) #1

declare dso_local i32 @chtls_purge_write_queue(%struct.sock*) #1

declare dso_local i32 @chtls_send_reset(%struct.sock*, i32, i32*) #1

declare dso_local i32 @wait_for_states(%struct.sock*, i32) #1

declare dso_local i32 @tcp_disconnect(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
