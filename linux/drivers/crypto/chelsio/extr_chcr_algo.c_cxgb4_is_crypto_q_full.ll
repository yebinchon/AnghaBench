; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_cxgb4_is_crypto_q_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_cxgb4_is_crypto_q_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sge_uld_txq_info** }
%struct.sge_uld_txq_info = type { %struct.sge_uld_txq* }
%struct.sge_uld_txq = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@CXGB4_TX_CRYPTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @cxgb4_is_crypto_q_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_is_crypto_q_full(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_uld_txq_info*, align 8
  %7 = alloca %struct.sge_uld_txq*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sge_uld_txq_info**, %struct.sge_uld_txq_info*** %13, align 8
  %15 = load i64, i64* @CXGB4_TX_CRYPTO, align 8
  %16 = getelementptr inbounds %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %14, i64 %15
  %17 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %16, align 8
  store %struct.sge_uld_txq_info* %17, %struct.sge_uld_txq_info** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = call i32 (...) @local_bh_disable()
  %19 = load %struct.sge_uld_txq_info*, %struct.sge_uld_txq_info** %6, align 8
  %20 = getelementptr inbounds %struct.sge_uld_txq_info, %struct.sge_uld_txq_info* %19, i32 0, i32 0
  %21 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %21, i64 %23
  store %struct.sge_uld_txq* %24, %struct.sge_uld_txq** %7, align 8
  %25 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %26 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %30 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 -1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.sge_uld_txq*, %struct.sge_uld_txq** %7, align 8
  %36 = getelementptr inbounds %struct.sge_uld_txq, %struct.sge_uld_txq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = call i32 (...) @local_bh_enable()
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
