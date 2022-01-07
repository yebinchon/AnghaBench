; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cleanup_eq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_cleanup_eq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32*, %struct.TYPE_2__, %struct.hns_roce_eq_table }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hns_roce_eq_table = type { %struct.hns_roce_dev*, %struct.hns_roce_dev* }

@EQ_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_v1_cleanup_eq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_cleanup_eq_table(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_eq_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 2
  store %struct.hns_roce_eq_table* %8, %struct.hns_roce_eq_table** %3, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %55, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EQ_DISABLE, align 4
  %32 = call i32 @hns_roce_v1_enable_eq(%struct.hns_roce_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %34 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %40, i32 0, i32 0
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %42, i64 %44
  %46 = call i32 @free_irq(i32 %39, %struct.hns_roce_dev* %45)
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %48 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %3, align 8
  %49 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %48, i32 0, i32 0
  %50 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %50, i64 %52
  %54 = call i32 @hns_roce_v1_free_eq(%struct.hns_roce_dev* %47, %struct.hns_roce_dev* %53)
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %24

58:                                               ; preds = %24
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %74, %58
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.hns_roce_dev* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %3, align 8
  %79 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %78, i32 0, i32 1
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %79, align 8
  %81 = call i32 @kfree(%struct.hns_roce_dev* %80)
  %82 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %3, align 8
  %83 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %82, i32 0, i32 0
  %84 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %83, align 8
  %85 = call i32 @kfree(%struct.hns_roce_dev* %84)
  ret void
}

declare dso_local i32 @hns_roce_v1_enable_eq(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_v1_free_eq(%struct.hns_roce_dev*, %struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
