; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_set_tcp_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_set_tcp_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_sock = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPEED_10000 = common dso_local global i32 0, align 4
@CHTLS_10G_RCVWIN = common dso_local global i32 0, align 4
@CHTLS_10G_SNDWIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_sock*)* @chtls_set_tcp_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_set_tcp_window(%struct.chtls_sock* %0) #0 {
  %2 = alloca %struct.chtls_sock*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.chtls_sock* %0, %struct.chtls_sock** %2, align 8
  %7 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %8 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.port_info* @netdev_priv(%struct.net_device* %10)
  store %struct.port_info* %11, %struct.port_info** %4, align 8
  %12 = load %struct.port_info*, %struct.port_info** %4, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SPEED_10000, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %20 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %19, i32 0, i32 0
  store i32 262144, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %26 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %31 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %30, i32 0, i32 1
  store i32 262144, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.chtls_sock*, %struct.chtls_sock** %2, align 8
  %37 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
