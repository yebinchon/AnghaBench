; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { i32, i32, i32*, i32*, %struct.chtls_dev* }
%struct.chtls_dev = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @chtls_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_release_resources(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tid_info*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %7)
  store %struct.chtls_sock* %8, %struct.chtls_sock** %3, align 8
  %9 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %10 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %9, i32 0, i32 4
  %11 = load %struct.chtls_dev*, %struct.chtls_dev** %10, align 8
  store %struct.chtls_dev* %11, %struct.chtls_dev** %4, align 8
  %12 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %13 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %16 = icmp ne %struct.chtls_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %20 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %19, i32 0, i32 0
  %21 = load %struct.tid_info*, %struct.tid_info** %20, align 8
  store %struct.tid_info* %21, %struct.tid_info** %6, align 8
  %22 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %23 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree_skb(i32* %24)
  %26 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %27 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %29 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %34 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @cxgb4_l2t_release(i32* %35)
  %37 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %38 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %18
  %40 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %41 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %42 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cxgb4_remove_tid(%struct.tid_info* %40, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = call i32 @sock_put(%struct.sock* %49)
  br label %51

51:                                               ; preds = %39, %17
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @cxgb4_l2t_release(i32*) #1

declare dso_local i32 @cxgb4_remove_tid(%struct.tid_info*, i32, i32, i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
