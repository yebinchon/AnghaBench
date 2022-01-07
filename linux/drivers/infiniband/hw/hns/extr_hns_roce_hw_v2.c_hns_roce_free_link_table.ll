; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_free_link_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_free_link_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_link_table = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_link_table*)* @hns_roce_free_link_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_free_link_table(%struct.hns_roce_dev* %0, %struct.hns_roce_link_table* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_link_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_link_table* %1, %struct.hns_roce_link_table** %4, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %17
  %24 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %25 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %24, i32 0, i32 3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %36 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %47 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dma_free_coherent(%struct.device* %34, i32 %37, i64 %45, i32 %53)
  br label %55

55:                                               ; preds = %33, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %17

59:                                               ; preds = %17
  %60 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %61 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @kfree(%struct.TYPE_4__* %62)
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %67 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hns_roce_link_table*, %struct.hns_roce_link_table** %4, align 8
  %71 = getelementptr inbounds %struct.hns_roce_link_table, %struct.hns_roce_link_table* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_coherent(%struct.device* %64, i32 %65, i64 %69, i32 %73)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
