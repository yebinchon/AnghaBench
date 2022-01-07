; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_get_cq_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_get_cq_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_cq_buf = type { i32 }
%struct.ib_umem = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_udata*, %struct.mlx4_ib_cq_buf*, %struct.ib_umem**, i32, i32)* @mlx4_ib_get_cq_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_get_cq_umem(%struct.mlx4_ib_dev* %0, %struct.ib_udata* %1, %struct.mlx4_ib_cq_buf* %2, %struct.ib_umem** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.mlx4_ib_cq_buf*, align 8
  %11 = alloca %struct.ib_umem**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %8, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %9, align 8
  store %struct.mlx4_ib_cq_buf* %2, %struct.mlx4_ib_cq_buf** %10, align 8
  store %struct.ib_umem** %3, %struct.ib_umem*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %15, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %30 = call %struct.ib_umem* @ib_umem_get(%struct.ib_udata* %24, i32 %25, i32 %28, i32 %29, i32 1)
  %31 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  store %struct.ib_umem* %30, %struct.ib_umem** %31, align 8
  %32 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %33 = load %struct.ib_umem*, %struct.ib_umem** %32, align 8
  %34 = call i64 @IS_ERR(%struct.ib_umem* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %38 = load %struct.ib_umem*, %struct.ib_umem** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.ib_umem* %38)
  store i32 %39, i32* %7, align 4
  br label %81

40:                                               ; preds = %6
  %41 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %42 = load %struct.ib_umem*, %struct.ib_umem** %41, align 8
  %43 = call i32 @ib_umem_page_count(%struct.ib_umem* %42)
  store i32 %43, i32* %17, align 4
  %44 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %45 = load %struct.ib_umem*, %struct.ib_umem** %44, align 8
  %46 = call i32 @mlx4_ib_umem_calc_optimal_mtt_size(%struct.ib_umem* %45, i32 0, i32* %17)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %52, i32 0, i32 0
  %54 = call i32 @mlx4_mtt_init(%struct.TYPE_5__* %49, i32 %50, i32 %51, i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %76

58:                                               ; preds = %40
  %59 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %60 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %60, i32 0, i32 0
  %62 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %63 = load %struct.ib_umem*, %struct.ib_umem** %62, align 8
  %64 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %59, i32* %61, %struct.ib_umem* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %69

68:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %81

69:                                               ; preds = %67
  %70 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.mlx4_ib_cq_buf*, %struct.mlx4_ib_cq_buf** %10, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_cq_buf, %struct.mlx4_ib_cq_buf* %73, i32 0, i32 0
  %75 = call i32 @mlx4_mtt_cleanup(%struct.TYPE_5__* %72, i32* %74)
  br label %76

76:                                               ; preds = %69, %57
  %77 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %78 = load %struct.ib_umem*, %struct.ib_umem** %77, align 8
  %79 = call i32 @ib_umem_release(%struct.ib_umem* %78)
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %68, %36
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i32 @ib_umem_page_count(%struct.ib_umem*) #1

declare dso_local i32 @mlx4_ib_umem_calc_optimal_mtt_size(%struct.ib_umem*, i32, i32*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, %struct.ib_umem*) #1

declare dso_local i32 @mlx4_mtt_cleanup(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
