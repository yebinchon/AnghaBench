; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_handle_mkey_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_handle_mkey_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devx_obj = type { %struct.mlx5_ib_devx_mr }
%struct.mlx5_ib_devx_mr = type { i8*, %struct.mlx5_core_mkey }
%struct.mlx5_core_mkey = type { i32, i8*, i8*, i8*, i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@mkey_7_0 = common dso_local global i32 0, align 4
@create_mkey_out = common dso_local global i8* null, align 8
@mkey_index = common dso_local global i32 0, align 4
@MLX5_MKEY_INDIRECT_DEVX = common dso_local global i32 0, align 4
@start_addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@translations_octword_size = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devx_obj*, %struct.mlx5_ib_dev*, i8*, i8*)* @devx_handle_mkey_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_handle_mkey_indirect(%struct.devx_obj* %0, %struct.mlx5_ib_dev* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.devx_obj*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5_ib_devx_mr*, align 8
  %10 = alloca %struct.mlx5_core_mkey*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.devx_obj* %0, %struct.devx_obj** %5, align 8
  store %struct.mlx5_ib_dev* %1, %struct.mlx5_ib_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.devx_obj*, %struct.devx_obj** %5, align 8
  %14 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %13, i32 0, i32 0
  store %struct.mlx5_ib_devx_mr* %14, %struct.mlx5_ib_devx_mr** %9, align 8
  %15 = load %struct.mlx5_ib_devx_mr*, %struct.mlx5_ib_devx_mr** %9, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_devx_mr, %struct.mlx5_ib_devx_mr* %15, i32 0, i32 1
  store %struct.mlx5_core_mkey* %16, %struct.mlx5_core_mkey** %10, align 8
  %17 = load i32, i32* @create_mkey_in, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @memory_key_mkey_entry, align 4
  %20 = call i8* @MLX5_ADDR_OF(i32 %17, i8* %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* @mkey_7_0, align 4
  %24 = call i8* @MLX5_GET(i8* %21, i8* %22, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** @create_mkey_out, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @mkey_index, align 4
  %29 = call i8* @MLX5_GET(i8* %26, i8* %27, i32 %28)
  %30 = call i32 @mlx5_idx_to_mkey(i8* %29)
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @MLX5_MKEY_INDIRECT_DEVX, align 4
  %36 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %37 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @start_addr, align 4
  %41 = call i8* @MLX5_GET64(i8* %38, i8* %39, i32 %40)
  %42 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* @len, align 4
  %47 = call i8* @MLX5_GET64(i8* %44, i8* %45, i32 %46)
  %48 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %49 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @pd, align 4
  %53 = call i8* @MLX5_GET(i8* %50, i8* %51, i32 %52)
  %54 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* @translations_octword_size, align 4
  %59 = call i8* @MLX5_GET(i8* %56, i8* %57, i32 %58)
  %60 = load %struct.mlx5_ib_devx_mr*, %struct.mlx5_ib_devx_mr** %9, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_devx_mr, %struct.mlx5_ib_devx_mr* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %68 = getelementptr inbounds %struct.mlx5_core_mkey, %struct.mlx5_core_mkey* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @mlx5_base_mkey(i32 %69)
  %71 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %10, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @xa_store(i32* %66, i32 %70, %struct.mlx5_core_mkey* %71, i32 %72)
  %74 = call i32 @xa_err(i32 %73)
  ret i32 %74
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i8* @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_idx_to_mkey(i8*) #1

declare dso_local i8* @MLX5_GET64(i8*, i8*, i32) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store(i32*, i32, %struct.mlx5_core_mkey*, i32) #1

declare dso_local i32 @mlx5_base_mkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
