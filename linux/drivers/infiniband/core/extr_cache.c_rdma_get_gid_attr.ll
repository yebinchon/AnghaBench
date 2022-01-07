; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_get_gid_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_get_gid_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_gid_table = type { i32, i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.ib_gid_attr }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_gid_attr* @rdma_get_gid_attr(%struct.ib_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_gid_attr*, align 8
  %9 = alloca %struct.ib_gid_table*, align 8
  %10 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.ib_gid_attr* @ERR_PTR(i32 %12)
  store %struct.ib_gid_attr* %13, %struct.ib_gid_attr** %8, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rdma_is_port_valid(%struct.ib_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ib_gid_attr* @ERR_PTR(i32 %20)
  store %struct.ib_gid_attr* %21, %struct.ib_gid_attr** %4, align 8
  br label %76

22:                                               ; preds = %3
  %23 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %23, i32 %24)
  store %struct.ib_gid_table* %25, %struct.ib_gid_table** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %31 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.ib_gid_attr* @ERR_PTR(i32 %36)
  store %struct.ib_gid_attr* %37, %struct.ib_gid_attr** %4, align 8
  br label %76

38:                                               ; preds = %28
  %39 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %40 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %39, i32 0, i32 1
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @read_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %44 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @is_gid_entry_valid(%struct.TYPE_3__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %55 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = call i32 @get_gid_entry(%struct.TYPE_3__* %60)
  %62 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %63 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.ib_gid_attr* %69, %struct.ib_gid_attr** %8, align 8
  br label %70

70:                                               ; preds = %53, %52
  %71 = load %struct.ib_gid_table*, %struct.ib_gid_table** %9, align 8
  %72 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %71, i32 0, i32 1
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @read_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %8, align 8
  store %struct.ib_gid_attr* %75, %struct.ib_gid_attr** %4, align 8
  br label %76

76:                                               ; preds = %70, %34, %18
  %77 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  ret %struct.ib_gid_attr* %77
}

declare dso_local %struct.ib_gid_attr* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_gid_entry_valid(%struct.TYPE_3__*) #1

declare dso_local i32 @get_gid_entry(%struct.TYPE_3__*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
