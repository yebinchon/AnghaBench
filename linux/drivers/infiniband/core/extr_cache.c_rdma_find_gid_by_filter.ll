; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_find_gid_by_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_rdma_find_gid_by_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32 }
%struct.ib_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_table = type { i32, i32, %struct.ib_gid_table_entry** }
%struct.ib_gid_table_entry = type { %struct.ib_gid_attr }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_gid_attr* @rdma_find_gid_by_filter(%struct.ib_device* %0, %union.ib_gid* %1, i32 %2, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ib_gid_attr*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ib_gid_attr*, align 8
  %13 = alloca %struct.ib_gid_table*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_gid_table_entry*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store %union.ib_gid* %1, %union.ib_gid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)* %3, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_gid_attr* @ERR_PTR(i32 %18)
  store %struct.ib_gid_attr* %19, %struct.ib_gid_attr** %12, align 8
  %20 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @rdma_is_port_valid(%struct.ib_device* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.ib_gid_attr* @ERR_PTR(i32 %26)
  store %struct.ib_gid_attr* %27, %struct.ib_gid_attr** %6, align 8
  br label %85

28:                                               ; preds = %5
  %29 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %29, i32 %30)
  store %struct.ib_gid_table* %31, %struct.ib_gid_table** %13, align 8
  %32 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %33 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %32, i32 0, i32 1
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @read_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %76, %28
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %39 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %36
  %43 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %44 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %43, i32 0, i32 2
  %45 = load %struct.ib_gid_table_entry**, %struct.ib_gid_table_entry*** %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %45, i64 %47
  %49 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %48, align 8
  store %struct.ib_gid_table_entry* %49, %struct.ib_gid_table_entry** %16, align 8
  %50 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %51 = call i32 @is_gid_entry_valid(%struct.ib_gid_table_entry* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %76

54:                                               ; preds = %42
  %55 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %56 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %57 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %57, i32 0, i32 0
  %59 = call i64 @memcmp(%union.ib_gid* %55, i32* %58, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %76

62:                                               ; preds = %54
  %63 = load i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)*, i32 (%union.ib_gid*, %struct.ib_gid_attr*, i8*)** %10, align 8
  %64 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %65 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %66 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %65, i32 0, i32 0
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 %63(%union.ib_gid* %64, %struct.ib_gid_attr* %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %72 = call i32 @get_gid_entry(%struct.ib_gid_table_entry* %71)
  %73 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %16, align 8
  %74 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %73, i32 0, i32 0
  store %struct.ib_gid_attr* %74, %struct.ib_gid_attr** %12, align 8
  br label %79

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %61, %53
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %36

79:                                               ; preds = %70, %36
  %80 = load %struct.ib_gid_table*, %struct.ib_gid_table** %13, align 8
  %81 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %80, i32 0, i32 1
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @read_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %12, align 8
  store %struct.ib_gid_attr* %84, %struct.ib_gid_attr** %6, align 8
  br label %85

85:                                               ; preds = %79, %24
  %86 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %6, align 8
  ret %struct.ib_gid_attr* %86
}

declare dso_local %struct.ib_gid_attr* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_gid_entry_valid(%struct.ib_gid_table_entry*) #1

declare dso_local i64 @memcmp(%union.ib_gid*, i32*, i32) #1

declare dso_local i32 @get_gid_entry(%struct.ib_gid_table_entry*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
