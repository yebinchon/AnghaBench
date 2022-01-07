; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_db_table }
%struct.hns_roce_db_table = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_4__* }

@HNS_ROCE_V1_EXT_SDB_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_V1_EXT_ODB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_db_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_db_free(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hns_roce_v1_priv*, align 8
  %5 = alloca %struct.hns_roce_db_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %13, %struct.hns_roce_v1_priv** %4, align 8
  %14 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %14, i32 0, i32 0
  store %struct.hns_roce_db_table* %15, %struct.hns_roce_db_table** %5, align 8
  %16 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load i32, i32* @HNS_ROCE_V1_EXT_SDB_SIZE, align 4
  %23 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_free_coherent(%struct.device* %21, i32 %22, i32 %29, i32 %36)
  %38 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %39 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @kfree(%struct.TYPE_4__* %42)
  br label %44

44:                                               ; preds = %20, %1
  %45 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* @HNS_ROCE_V1_EXT_ODB_SIZE, align 4
  %52 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %53 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %60 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dma_free_coherent(%struct.device* %50, i32 %51, i32 %58, i32 %65)
  %67 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %68 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @kfree(%struct.TYPE_4__* %71)
  br label %73

73:                                               ; preds = %49, %44
  %74 = load %struct.hns_roce_db_table*, %struct.hns_roce_db_table** %5, align 8
  %75 = getelementptr inbounds %struct.hns_roce_db_table, %struct.hns_roce_db_table* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i32 @kfree(%struct.TYPE_4__* %76)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
