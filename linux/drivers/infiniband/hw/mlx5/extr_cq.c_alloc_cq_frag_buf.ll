; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_alloc_cq_frag_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_alloc_cq_frag_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_cq_buf = type { i32, i32, i32, %struct.mlx5_frag_buf }
%struct.mlx5_frag_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq_buf*, i32, i32)* @alloc_cq_frag_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_cq_frag_buf(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_cq_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_frag_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_cq_buf* %1, %struct.mlx5_ib_cq_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %7, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %14, i32 0, i32 3
  store %struct.mlx5_frag_buf* %15, %struct.mlx5_frag_buf** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 128
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = add nsw i32 6, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ilog2(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %10, align 8
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx5_frag_buf_alloc_node(%struct.TYPE_4__* %25, i32 %28, %struct.mlx5_frag_buf* %29, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %56

41:                                               ; preds = %4
  %42 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %47, i32 0, i32 2
  %49 = call i32 @mlx5_init_fbc(i32 %44, i32 %45, i32 %46, i32* %48)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %7, align 8
  %52 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mlx5_ib_cq_buf*, %struct.mlx5_ib_cq_buf** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_cq_buf, %struct.mlx5_ib_cq_buf* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %41, %39
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx5_frag_buf_alloc_node(%struct.TYPE_4__*, i32, %struct.mlx5_frag_buf*, i32) #1

declare dso_local i32 @mlx5_init_fbc(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
