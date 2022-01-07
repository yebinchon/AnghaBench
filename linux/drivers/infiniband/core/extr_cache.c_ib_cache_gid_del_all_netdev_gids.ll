; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_del_all_netdev_gids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_del_all_netdev_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ib_gid_table = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_cache_gid_del_all_netdev_gids(%struct.ib_device* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ib_gid_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %10, i32 %11)
  store %struct.ib_gid_table* %12, %struct.ib_gid_table** %7, align 8
  %13 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %14 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %52, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %19 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %24 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i64 @is_gid_entry_valid(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %22
  %33 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %34 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = icmp eq %struct.net_device* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @del_gid(%struct.ib_device* %46, i32 %47, %struct.ib_gid_table* %48, i32 %49)
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %45, %32, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.ib_gid_table*, %struct.ib_gid_table** %7, align 8
  %57 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dispatch_gid_change_event(%struct.ib_device* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  ret i32 0
}

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_gid_entry_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @del_gid(%struct.ib_device*, i32, %struct.ib_gid_table*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dispatch_gid_change_event(%struct.ib_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
