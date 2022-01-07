; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_ib_cq_buf = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq_buf*, i32)* @mlx4_ib_alloc_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_cq_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_cq_buf* %1, %struct.mlx4_ib_cq_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %12, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %22, i32 0, i32 1
  %24 = call i32 @mlx4_buf_alloc(%struct.TYPE_11__* %11, i32 %19, i32 %21, %struct.TYPE_12__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %86

28:                                               ; preds = %3
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %48, i32 0, i32 2
  %50 = call i32 @mlx4_mtt_init(%struct.TYPE_11__* %39, i32 %43, i32 %47, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %28
  br label %74

54:                                               ; preds = %28
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %58, i32 0, i32 2
  %60 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %60, i32 0, i32 1
  %62 = call i32 @mlx4_buf_write_mtt(%struct.TYPE_11__* %57, i32* %59, %struct.TYPE_12__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %88

67:                                               ; preds = %65
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %71, i32 0, i32 2
  %73 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_11__* %70, i32* %72)
  br label %74

74:                                               ; preds = %67, %53
  %75 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %83, i32 0, i32 1
  %85 = call i32 @mlx4_buf_free(%struct.TYPE_11__* %77, i32 %82, %struct.TYPE_12__* %84)
  br label %86

86:                                               ; preds = %74, %27
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %66
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mlx4_buf_alloc(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_buf_write_mtt(%struct.TYPE_11__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @mlx4_buf_free(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
