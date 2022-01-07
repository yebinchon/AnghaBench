; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_free_tls_keyid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_hw.c_free_tls_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.chtls_sock = type { %struct.chtls_hws, %struct.chtls_dev*, %struct.net_device* }
%struct.chtls_hws = type { i32, i32 }
%struct.chtls_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_tls_keyid(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.chtls_dev*, align 8
  %6 = alloca %struct.chtls_hws*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %8)
  store %struct.chtls_sock* %9, %struct.chtls_sock** %3, align 8
  %10 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %11 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %14 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %13, i32 0, i32 1
  %15 = load %struct.chtls_dev*, %struct.chtls_dev** %14, align 8
  store %struct.chtls_dev* %15, %struct.chtls_dev** %5, align 8
  %16 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %17 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %75

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.adapter* @netdev2adap(%struct.net_device* %23)
  store %struct.adapter* %24, %struct.adapter** %7, align 8
  %25 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %26 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %25, i32 0, i32 0
  store %struct.chtls_hws* %26, %struct.chtls_hws** %6, align 8
  %27 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %28 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %32 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %37 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %40 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__clear_bit(i32 %38, i32 %42)
  %44 = load %struct.adapter*, %struct.adapter** %7, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @atomic_dec(i32* %46)
  %48 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %49 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %35, %22
  %51 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %52 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %57 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %60 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__clear_bit(i32 %58, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %7, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @atomic_dec(i32* %66)
  %68 = load %struct.chtls_hws*, %struct.chtls_hws** %6, align 8
  %69 = getelementptr inbounds %struct.chtls_hws, %struct.chtls_hws* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %55, %50
  %71 = load %struct.chtls_dev*, %struct.chtls_dev** %5, align 8
  %72 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %75

75:                                               ; preds = %70, %21
  ret void
}

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
