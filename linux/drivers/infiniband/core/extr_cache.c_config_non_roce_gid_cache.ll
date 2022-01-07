; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_config_non_roce_gid_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_config_non_roce_gid_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_device*, i32, i32, i32*)* }
%struct.ib_gid_attr = type { i32, i32, i32, %struct.ib_device* }
%struct.ib_gid_table = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"query_gid failed (%d) for index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32)* @config_non_roce_gid_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_non_roce_gid_cache(%struct.ib_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_gid_attr, align 8
  %8 = alloca %struct.ib_gid_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.ib_gid_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %7, i32 0, i32 3
  store %struct.ib_device* %12, %struct.ib_device** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %7, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device* %16, i32 %17)
  store %struct.ib_gid_table* %18, %struct.ib_gid_table** %8, align 8
  %19 = load %struct.ib_gid_table*, %struct.ib_gid_table** %8, align 8
  %20 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %56, %3
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %28 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ib_device*, i32, i32, i32*)*, i32 (%struct.ib_device*, i32, i32, i32*)** %29, align 8
  %31 = icmp ne i32 (%struct.ib_device*, i32, i32, i32*)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %35 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.ib_device*, i32, i32, i32*)*, i32 (%struct.ib_device*, i32, i32, i32*)** %36, align 8
  %38 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %7, i32 0, i32 1
  %42 = call i32 %37(%struct.ib_device* %38, i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %47 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %60

51:                                               ; preds = %33
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ib_gid_table*, %struct.ib_gid_table** %8, align 8
  %55 = call i32 @add_modify_gid(%struct.ib_gid_table* %54, %struct.ib_gid_attr* %7)
  br label %56

56:                                               ; preds = %51, %32
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %22

59:                                               ; preds = %22
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.ib_gid_table*, %struct.ib_gid_table** %8, align 8
  %62 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_gid_table* @rdma_gid_table(%struct.ib_device*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #2

declare dso_local i32 @add_modify_gid(%struct.ib_gid_table*, %struct.ib_gid_attr*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
