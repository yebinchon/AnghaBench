; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_cleanup_subscription.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_cleanup_subscription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.devx_event_subscription = type { i32, i32, i32, i32, i32 }
%struct.devx_event = type { i32 }
%struct.devx_obj_event = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.devx_event_subscription*)* @devx_cleanup_subscription to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devx_cleanup_subscription(%struct.mlx5_ib_dev* %0, %struct.devx_event_subscription* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.devx_event_subscription*, align 8
  %5 = alloca %struct.devx_event*, align 8
  %6 = alloca %struct.devx_obj_event*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.devx_event_subscription* %1, %struct.devx_event_subscription** %4, align 8
  %7 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %8 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %61

12:                                               ; preds = %2
  %13 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %14 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %16 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %15, i32 0, i32 4
  %17 = call i32 @list_del_rcu(i32* %16)
  %18 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %19 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %18, i32 0, i32 3
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %61

23:                                               ; preds = %12
  %24 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %25 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %24, i32 0, i32 3
  %26 = call i32 @list_del_rcu(i32* %25)
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %31 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @xa_load(i32* %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.devx_event*
  store %struct.devx_event* %34, %struct.devx_event** %5, align 8
  %35 = load %struct.devx_event*, %struct.devx_event** %5, align 8
  %36 = icmp ne %struct.devx_event* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.devx_event*, %struct.devx_event** %5, align 8
  %41 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %40, i32 0, i32 0
  %42 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %43 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @xa_load(i32* %41, i32 %44)
  %46 = bitcast i8* %45 to %struct.devx_obj_event*
  store %struct.devx_obj_event* %46, %struct.devx_obj_event** %6, align 8
  %47 = load %struct.devx_obj_event*, %struct.devx_obj_event** %6, align 8
  %48 = getelementptr inbounds %struct.devx_obj_event, %struct.devx_obj_event* %47, i32 0, i32 0
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %23
  %52 = load %struct.devx_event*, %struct.devx_event** %5, align 8
  %53 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %52, i32 0, i32 0
  %54 = load %struct.devx_event_subscription*, %struct.devx_event_subscription** %4, align 8
  %55 = getelementptr inbounds %struct.devx_event_subscription, %struct.devx_event_subscription* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xa_erase(i32* %53, i32 %56)
  %58 = load %struct.devx_obj_event*, %struct.devx_obj_event** %6, align 8
  %59 = load i32, i32* @rcu, align 4
  %60 = call i32 @kfree_rcu(%struct.devx_obj_event* %58, i32 %59)
  br label %61

61:                                               ; preds = %11, %22, %51, %23
  ret void
}

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i8* @xa_load(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.devx_obj_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
