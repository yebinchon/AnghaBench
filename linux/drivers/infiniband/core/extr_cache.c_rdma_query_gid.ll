; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_query_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_table = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ib_gid*, align 8
  %10 = alloca %struct.ib_gid_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ib_gid* %3, %union.ib_gid** %9, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rdma_is_port_valid(%struct.ib_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %67

22:                                               ; preds = %4
  %23 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %23, i32 %24)
  store %struct.ib_gid_table* %25, %struct.ib_gid_table** %10, align 8
  %26 = load %struct.ib_gid_table*, %struct.ib_gid_table** %10, align 8
  %27 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %26, i32 0, i32 1
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @read_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ib_gid_table*, %struct.ib_gid_table** %10, align 8
  %35 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.ib_gid_table*, %struct.ib_gid_table** %10, align 8
  %40 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @is_gid_entry_valid(%struct.TYPE_4__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38, %32, %22
  br label %61

49:                                               ; preds = %38
  %50 = load %union.ib_gid*, %union.ib_gid** %9, align 8
  %51 = load %struct.ib_gid_table*, %struct.ib_gid_table** %10, align 8
  %52 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @memcpy(%union.ib_gid* %50, i32* %59, i32 4)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %49, %48
  %62 = load %struct.ib_gid_table*, %struct.ib_gid_table** %10, align 8
  %63 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %62, i32 0, i32 1
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @read_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %19
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_gid_entry_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
