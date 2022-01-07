; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_subscribe_event_xa_dealloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_subscribe_event_xa_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devx_event_table = type { i32 }
%struct.devx_event = type { i32 }
%struct.devx_obj_event = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_devx_event_table*, i32, i32, i32)* @subscribe_event_xa_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subscribe_event_xa_dealloc(%struct.mlx5_devx_event_table* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_devx_event_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.devx_event*, align 8
  %10 = alloca %struct.devx_obj_event*, align 8
  store %struct.mlx5_devx_event_table* %0, %struct.mlx5_devx_event_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %42

14:                                               ; preds = %4
  %15 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @xa_load(i32* %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.devx_event*
  store %struct.devx_event* %19, %struct.devx_event** %9, align 8
  %20 = load %struct.devx_event*, %struct.devx_event** %9, align 8
  %21 = icmp ne %struct.devx_event* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.devx_event*, %struct.devx_event** %9, align 8
  %26 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @xa_load(i32* %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.devx_obj_event*
  store %struct.devx_obj_event* %29, %struct.devx_obj_event** %10, align 8
  %30 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %31 = getelementptr inbounds %struct.devx_obj_event, %struct.devx_obj_event* %30, i32 0, i32 0
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %14
  %35 = load %struct.devx_event*, %struct.devx_event** %9, align 8
  %36 = getelementptr inbounds %struct.devx_event, %struct.devx_event* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @xa_erase(i32* %36, i32 %37)
  %39 = load %struct.devx_obj_event*, %struct.devx_obj_event** %10, align 8
  %40 = load i32, i32* @rcu, align 4
  %41 = call i32 @kfree_rcu(%struct.devx_obj_event* %39, i32 %40)
  br label %42

42:                                               ; preds = %13, %34, %14
  ret void
}

declare dso_local i8* @xa_load(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.devx_obj_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
