; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_alloc.c_hns_roce_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_buf = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_buf_free(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_buf* %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hns_roce_buf* %2, %struct.hns_roce_buf** %6, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %13 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %20 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %24 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(%struct.device* %17, i32 %18, i64 %22, i32 %26)
  br label %77

28:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %32 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %37 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %48 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %52 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %60 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dma_free_coherent(%struct.device* %46, i32 %50, i64 %58, i32 %66)
  br label %68

68:                                               ; preds = %45, %35
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %29

72:                                               ; preds = %29
  %73 = load %struct.hns_roce_buf*, %struct.hns_roce_buf** %6, align 8
  %74 = getelementptr inbounds %struct.hns_roce_buf, %struct.hns_roce_buf* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @kfree(%struct.TYPE_4__* %75)
  br label %77

77:                                               ; preds = %72, %16
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
