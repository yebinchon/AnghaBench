; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.uverbs_attr_bundle = type { i32 }
%struct.devx_umem = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@MLX5_IB_ATTR_DEVX_UMEM_REG_ADDR = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_DEVX_UMEM_REG_LEN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@MLX5_IB_ATTR_DEVX_UMEM_REG_ACCESS = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MLX5_MKEY_PAGE_SHIFT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_ucontext*, %struct.uverbs_attr_bundle*, %struct.devx_umem*)* @devx_umem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_umem_get(%struct.mlx5_ib_dev* %0, %struct.ib_ucontext* %1, %struct.uverbs_attr_bundle* %2, %struct.devx_umem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.ib_ucontext*, align 8
  %8 = alloca %struct.uverbs_attr_bundle*, align 8
  %9 = alloca %struct.devx_umem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %7, align 8
  store %struct.uverbs_attr_bundle* %2, %struct.uverbs_attr_bundle** %8, align 8
  store %struct.devx_umem* %3, %struct.devx_umem** %9, align 8
  %16 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %17 = load i32, i32* @MLX5_IB_ATTR_DEVX_UMEM_REG_ADDR, align 4
  %18 = call i64 @uverbs_copy_from(i64* %10, %struct.uverbs_attr_bundle* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %22 = load i32, i32* @MLX5_IB_ATTR_DEVX_UMEM_REG_LEN, align 4
  %23 = call i64 @uverbs_copy_from(i64* %11, %struct.uverbs_attr_bundle* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %106

28:                                               ; preds = %20
  %29 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %30 = load i32, i32* @MLX5_IB_ATTR_DEVX_UMEM_REG_ACCESS, align 4
  %31 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %32 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @uverbs_get_flags32(i32* %12, %struct.uverbs_attr_bundle* %29, i32 %30, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %5, align 4
  br label %106

41:                                               ; preds = %28
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @ib_check_mr_access(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %41
  %49 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %8, align 8
  %50 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.TYPE_6__* @ib_umem_get(i32* %50, i64 %51, i64 %52, i32 %53, i32 0)
  %55 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %56 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %55, i32 0, i32 2
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %58 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i64 @IS_ERR(%struct.TYPE_6__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %64 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.TYPE_6__* %65)
  store i32 %66, i32* %5, align 4
  br label %106

67:                                               ; preds = %48
  %68 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %69 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %72 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MLX5_MKEY_PAGE_SHIFT_MASK, align 4
  %77 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %78 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %77, i32 0, i32 0
  %79 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %80 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %79, i32 0, i32 3
  %81 = call i32 @mlx5_ib_cont_pages(%struct.TYPE_6__* %70, i32 %75, i32 %76, i32* %13, i32* %78, i32* %80, i32* null)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %67
  %85 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %86 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @ib_umem_release(%struct.TYPE_6__* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %106

91:                                               ; preds = %67
  %92 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %93 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 1, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  %97 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %98 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.devx_umem*, %struct.devx_umem** %9, align 8
  %105 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %91, %84, %62, %46, %39, %25
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i64 @uverbs_copy_from(i64*, %struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @uverbs_get_flags32(i32*, %struct.uverbs_attr_bundle*, i32, i32) #1

declare dso_local i32 @ib_check_mr_access(i32) #1

declare dso_local %struct.TYPE_6__* @ib_umem_get(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @mlx5_ib_cont_pages(%struct.TYPE_6__*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ib_umem_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
