; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_add_pass_open_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_add_pass_open_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, %struct.chtls_sock* }
%struct.chtls_sock = type { %struct.TYPE_3__*, i32, %struct.request_sock* }
%struct.TYPE_3__ = type { i32 }
%struct.request_sock = type { i32 }
%struct.chtls_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*, %struct.chtls_dev*)* @add_pass_open_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pass_open_to_parent(%struct.sock* %0, %struct.sock* %1, %struct.chtls_dev* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.chtls_dev*, align 8
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.chtls_dev* %2, %struct.chtls_dev** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_LISTEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 2
  %18 = load %struct.chtls_sock*, %struct.chtls_sock** %17, align 8
  store %struct.chtls_sock* %18, %struct.chtls_sock** %8, align 8
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 2
  %21 = load %struct.request_sock*, %struct.request_sock** %20, align 8
  store %struct.request_sock* %21, %struct.request_sock** %7, align 8
  %22 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %23 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %22, i32 0, i32 2
  store %struct.request_sock* null, %struct.request_sock** %23, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %28 = call i32 @reqsk_queue_removed(i32* %26, %struct.request_sock* %27)
  %29 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %30 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %29, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.sk_buff*
  %32 = load %struct.chtls_sock*, %struct.chtls_sock** %8, align 8
  %33 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @__skb_unlink(%struct.sk_buff* %31, i32* %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i64 @sk_acceptq_is_full(%struct.sock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %15
  %41 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %42 = call i32 @chtls_reqsk_free(%struct.request_sock* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call i32 @add_to_reap_list(%struct.sock* %43)
  br label %58

45:                                               ; preds = %15
  %46 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %47 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %46, i32 0, i32 0
  %48 = call i32 @refcount_set(i32* %47, i32 1)
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = call i32 @inet_csk_reqsk_queue_add(%struct.sock* %49, %struct.request_sock* %50, %struct.sock* %51)
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %54, align 8
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 %55(%struct.sock* %56)
  br label %58

58:                                               ; preds = %14, %45, %40
  ret void
}

declare dso_local i32 @reqsk_queue_removed(i32*, %struct.request_sock*) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @chtls_reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @add_to_reap_list(%struct.sock*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
