; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_ipv4_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_ipv4_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.chtls_dev = type { %struct.net_device** }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.chtls_dev*, %struct.sock*)* @chtls_ipv4_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @chtls_ipv4_netdev(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %7 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %8 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %7, i32 0, i32 0
  %9 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %10 = getelementptr inbounds %struct.net_device*, %struct.net_device** %9, i64 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %22, %struct.net_device** %3, align 8
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.net_device* @ip_dev_find(i32* @init_net, i32 %27)
  store %struct.net_device* %28, %struct.net_device** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %41

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i64 @is_vlan_dev(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %37)
  store %struct.net_device* %38, %struct.net_device** %3, align 8
  br label %41

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %40, %struct.net_device** %3, align 8
  br label %41

41:                                               ; preds = %39, %36, %31, %21
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %42
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net_device* @ip_dev_find(i32*, i32) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
