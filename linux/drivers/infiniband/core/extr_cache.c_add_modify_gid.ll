; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_add_modify_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_add_modify_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_table = type { i32* }
%struct.ib_gid_attr = type { i64, i32, i32, i32 }
%struct.ib_gid_table_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_table*, %struct.ib_gid_attr*)* @add_modify_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_modify_gid(%struct.ib_gid_table* %0, %struct.ib_gid_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_table*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  %6 = alloca %struct.ib_gid_table_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_gid_table* %0, %struct.ib_gid_table** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ib_gid_table*, %struct.ib_gid_table** %4, align 8
  %9 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_gid_entry_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %20 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ib_gid_table*, %struct.ib_gid_table** %4, align 8
  %26 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %27 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @del_gid(i32 %21, i32 %24, %struct.ib_gid_table* %25, i64 %28)
  br label %30

30:                                               ; preds = %18, %2
  %31 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %31, i32 0, i32 3
  %33 = call i64 @rdma_is_zero_gid(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %68

36:                                               ; preds = %30
  %37 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %38 = call %struct.ib_gid_table_entry* @alloc_gid_entry(%struct.ib_gid_attr* %37)
  store %struct.ib_gid_table_entry* %38, %struct.ib_gid_table_entry** %6, align 8
  %39 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %6, align 8
  %40 = icmp ne %struct.ib_gid_table_entry* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %68

44:                                               ; preds = %36
  %45 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @rdma_protocol_roce(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %6, align 8
  %55 = call i32 @add_roce_gid(%struct.ib_gid_table_entry* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %64

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.ib_gid_table*, %struct.ib_gid_table** %4, align 8
  %62 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %6, align 8
  %63 = call i32 @store_gid_entry(%struct.ib_gid_table* %61, %struct.ib_gid_table_entry* %62)
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %58
  %65 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %6, align 8
  %66 = call i32 @put_gid_entry(%struct.ib_gid_table_entry* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60, %41, %35
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @is_gid_entry_valid(i32) #1

declare dso_local i32 @del_gid(i32, i32, %struct.ib_gid_table*, i64) #1

declare dso_local i64 @rdma_is_zero_gid(i32*) #1

declare dso_local %struct.ib_gid_table_entry* @alloc_gid_entry(%struct.ib_gid_attr*) #1

declare dso_local i64 @rdma_protocol_roce(i32, i32) #1

declare dso_local i32 @add_roce_gid(%struct.ib_gid_table_entry*) #1

declare dso_local i32 @store_gid_entry(%struct.ib_gid_table*, %struct.ib_gid_table_entry*) #1

declare dso_local i32 @put_gid_entry(%struct.ib_gid_table_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
