; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_is_dev_match_addr_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_is_dev_match_addr_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.in_device = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.net_device*)* @ipoib_is_dev_match_addr_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_is_dev_match_addr_rcu(%struct.sockaddr* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.in_device*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.net* @dev_net(%struct.net_device* %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %9, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %54 [
    i32 129, label %20
    i32 128, label %41
  ]

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.in_device* @in_dev_get(%struct.net_device* %21)
  store %struct.in_device* %22, %struct.in_device** %7, align 8
  %23 = load %struct.in_device*, %struct.in_device** %7, align 8
  %24 = icmp ne %struct.in_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %55

26:                                               ; preds = %20
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load %struct.in_device*, %struct.in_device** %7, align 8
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RT_SCOPE_HOST, align 4
  %34 = call i32 @inet_confirm_addr(%struct.net* %27, %struct.in_device* %28, i32 0, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.in_device*, %struct.in_device** %7, align 8
  %36 = call i32 @in_dev_put(%struct.in_device* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %55

40:                                               ; preds = %26
  br label %54

41:                                               ; preds = %2
  %42 = load i32, i32* @CONFIG_IPV6, align 4
  %43 = call i32 @IS_ENABLED(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.net*, %struct.net** %6, align 8
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @ipv6_chk_addr(%struct.net* %46, i32* %48, %struct.net_device* %49, i32 1)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %55

53:                                               ; preds = %45, %41
  br label %54

54:                                               ; preds = %2, %53, %40
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %39, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.in_device* @in_dev_get(%struct.net_device*) #1

declare dso_local i32 @inet_confirm_addr(%struct.net*, %struct.in_device*, i32, i32, i32) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, i32*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
