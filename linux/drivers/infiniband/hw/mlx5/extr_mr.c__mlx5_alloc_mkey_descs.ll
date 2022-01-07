; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c__mlx5_alloc_mkey_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c__mlx5_alloc_mkey_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }

@MLX5_MKEY_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.mlx5_ib_mr*, i32, i32, i32, i32, i32*, i32)* @_mlx5_alloc_mkey_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx5_alloc_mkey_descs(%struct.ib_pd* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %10, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mlx5_ib_dev* @to_mdev(i32 %22)
  store %struct.mlx5_ib_dev* %23, %struct.mlx5_ib_dev** %18, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %34 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @mlx5_alloc_priv_descs(i32 %35, %struct.mlx5_ib_mr* %36, i32 %37, i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %9, align 4
  br label %85

44:                                               ; preds = %8
  %45 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @mlx5_set_umr_free_mkey(%struct.ib_pd* %45, i32* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %52 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %54, i32 0, i32 3
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @mlx5_core_create_mkey(i32 %53, %struct.TYPE_4__* %55, i32* %56, i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %81

62:                                               ; preds = %44
  %63 = load i32, i32* @MLX5_MKEY_MR, align 4
  %64 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  store i32 0, i32* %9, align 4
  br label %85

81:                                               ; preds = %61
  %82 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %83 = call i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr* %82)
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %62, %42
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_alloc_priv_descs(i32, %struct.mlx5_ib_mr*, i32, i32) #1

declare dso_local i32 @mlx5_set_umr_free_mkey(%struct.ib_pd*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(i32, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @mlx5_free_priv_descs(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
