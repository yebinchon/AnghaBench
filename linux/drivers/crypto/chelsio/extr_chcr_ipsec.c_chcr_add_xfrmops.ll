; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_add_xfrmops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_add_xfrmops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgb4_lld_info = type { i32, %struct.net_device** }
%struct.net_device = type { i32, i32, i32* }

@chcr_xfrmdev_ops = common dso_local global i32 0, align 4
@NETIF_F_HW_ESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_add_xfrmops(%struct.cxgb4_lld_info* %0) #0 {
  %2 = alloca %struct.cxgb4_lld_info*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cxgb4_lld_info* %0, %struct.cxgb4_lld_info** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %2, align 8
  %8 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %2, align 8
  %13 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %12, i32 0, i32 1
  %14 = load %struct.net_device**, %struct.net_device*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %14, i64 %16
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %3, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %39

22:                                               ; preds = %11
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  store i32* @chcr_xfrmdev_ops, i32** %24, align 8
  %25 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @NETIF_F_HW_ESP, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = call i32 (...) @rtnl_lock()
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netdev_change_features(%struct.net_device* %36)
  %38 = call i32 (...) @rtnl_unlock()
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netdev_change_features(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
