; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_do_abort_syn_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_do_abort_syn_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@CSK_RST_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @do_abort_syn_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_abort_syn_rcv(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %4, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TCP_LISTEN, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @cleanup_syn_rcv_conn(%struct.sock* %14, %struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @sock_orphan(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @percpu_counter_inc(i32 %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @chtls_release_resources(%struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @chtls_conn_done(%struct.sock* %27)
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* @CSK_RST_ABORTED, align 4
  %32 = call i64 @csk_flag(%struct.sock* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @chtls_release_resources(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 @chtls_conn_done(%struct.sock* %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cleanup_syn_rcv_conn(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @chtls_release_resources(%struct.sock*) #1

declare dso_local i32 @chtls_conn_done(%struct.sock*) #1

declare dso_local i64 @csk_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
