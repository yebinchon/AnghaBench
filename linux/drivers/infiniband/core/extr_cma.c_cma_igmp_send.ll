; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_igmp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_igmp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.ib_gid = type { i64 }
%struct.in_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %union.ib_gid*, i32)* @cma_igmp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_igmp_send(%struct.net_device* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.in_device* null, %struct.in_device** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %12)
  store %struct.in_device* %13, %struct.in_device** %7, align 8
  %14 = load %struct.in_device*, %struct.in_device** %7, align 8
  %15 = icmp ne %struct.in_device* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.in_device*, %struct.in_device** %7, align 8
  %21 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %22 = bitcast %union.ib_gid* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 12
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ip_mc_inc_group(%struct.in_device* %20, i32 %26)
  br label %37

28:                                               ; preds = %16
  %29 = load %struct.in_device*, %struct.in_device** %7, align 8
  %30 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %31 = bitcast %union.ib_gid* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 12
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ip_mc_dec_group(%struct.in_device* %29, i32 %35)
  br label %37

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37, %10
  %39 = call i32 (...) @rtnl_unlock()
  br label %40

40:                                               ; preds = %38, %3
  %41 = load %struct.in_device*, %struct.in_device** %7, align 8
  %42 = icmp ne %struct.in_device* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  ret i32 %48
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @ip_mc_inc_group(%struct.in_device*, i32) #1

declare dso_local i32 @ip_mc_dec_group(%struct.in_device*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
