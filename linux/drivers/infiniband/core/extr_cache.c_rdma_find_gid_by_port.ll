; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_find_gid_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_find_gid_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32, %struct.net_device* }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.net_device = type { i32 }
%struct.ib_gid_table = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.ib_gid_attr }

@GID_ATTR_FIND_MASK_GID = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_GID_TYPE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@GID_ATTR_FIND_MASK_NETDEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_gid_attr* @rdma_find_gid_by_port(%struct.ib_device* %0, %union.ib_gid* %1, i32 %2, i32 %3, %struct.net_device* %4) #0 {
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_gid_table*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ib_gid_attr, align 8
  %16 = alloca %struct.ib_gid_attr*, align 8
  %17 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.net_device* %4, %struct.net_device** %11, align 8
  %18 = load i64, i64* @GID_ATTR_FIND_MASK_GID, align 8
  %19 = load i64, i64* @GID_ATTR_FIND_MASK_GID_TYPE, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %15, i32 0, i32 0
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %15, i32 0, i32 1
  %24 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %24, %struct.net_device** %23, align 8
  %25 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @rdma_is_port_valid(%struct.ib_device* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.ib_gid_attr* @ERR_PTR(i32 %31)
  store %struct.ib_gid_attr* %32, %struct.ib_gid_attr** %6, align 8
  br label %84

33:                                               ; preds = %5
  %34 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %34, i32 %35)
  store %struct.ib_gid_table* %36, %struct.ib_gid_table** %13, align 8
  %37 = load %struct.net_device*, %struct.net_device** %11, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @GID_ATTR_FIND_MASK_NETDEV, align 8
  %41 = load i64, i64* %14, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %14, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %45 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %44, i32 0, i32 0
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @read_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %49 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @find_gid(%struct.ib_gid_table* %48, %union.ib_gid* %49, %struct.ib_gid_attr* %15, i32 0, i64 %50, i32* null)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %43
  %55 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %56 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @get_gid_entry(%struct.TYPE_2__* %61)
  %63 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %64 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.ib_gid_attr* %70, %struct.ib_gid_attr** %16, align 8
  %71 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %72 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %71, i32 0, i32 0
  %73 = load i64, i64* %17, align 8
  %74 = call i32 @read_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  store %struct.ib_gid_attr* %75, %struct.ib_gid_attr** %6, align 8
  br label %84

76:                                               ; preds = %43
  %77 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %78 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %77, i32 0, i32 0
  %79 = load i64, i64* %17, align 8
  %80 = call i32 @read_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.ib_gid_attr* @ERR_PTR(i32 %82)
  store %struct.ib_gid_attr* %83, %struct.ib_gid_attr** %6, align 8
  br label %84

84:                                               ; preds = %76, %54, %29
  %85 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  ret %struct.ib_gid_attr* %85
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_attr* @ERR_PTR(i32) #1

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_gid(%struct.ib_gid_table*, %union.ib_gid*, %struct.ib_gid_attr*, i32, i64, i32*) #1

declare dso_local i32 @get_gid_entry(%struct.TYPE_2__*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
