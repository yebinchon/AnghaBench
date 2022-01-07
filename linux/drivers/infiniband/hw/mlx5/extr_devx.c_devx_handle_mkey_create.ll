; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_handle_mkey_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_handle_mkey_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.devx_obj = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global i32 0, align 4
@access_mode_4_2 = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KLMS = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KSM = common dso_local global i32 0, align 4
@CONFIG_INFINIBAND_ON_DEMAND_PAGING = common dso_local global i32 0, align 4
@DEVX_OBJ_FLAGS_INDIRECT_MKEY = common dso_local global i32 0, align 4
@mkey_umem_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.devx_obj*, i8*, i32)* @devx_handle_mkey_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_handle_mkey_create(%struct.mlx5_ib_dev* %0, %struct.devx_obj* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.devx_obj*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.devx_obj* %1, %struct.devx_obj** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @create_mkey_in, align 4
  %14 = load i32, i32* @memory_key_mkey_entry, align 4
  %15 = call i32 @MLX5_BYTE_OFF(i32 %13, i32 %14)
  %16 = load i32, i32* @create_mkey_in, align 4
  %17 = load i32, i32* @memory_key_mkey_entry, align 4
  %18 = call i32 @MLX5_FLD_SZ_BYTES(i32 %16, i32 %17)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %4
  %27 = load i32, i32* @create_mkey_in, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @memory_key_mkey_entry, align 4
  %30 = call i8* @MLX5_ADDR_OF(i32 %27, i8* %28, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* @access_mode_1_0, align 4
  %34 = call i32 @MLX5_GET(i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @access_mode_4_2, align 4
  %38 = call i32 @MLX5_GET(i8* %35, i8* %36, i32 %37)
  %39 = shl i32 %38, 2
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KLMS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @MLX5_MKC_ACCESS_MODE_KSM, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45, %26
  %50 = load i32, i32* @CONFIG_INFINIBAND_ON_DEMAND_PAGING, align 4
  %51 = call i64 @IS_ENABLED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @DEVX_OBJ_FLAGS_INDIRECT_MKEY, align 4
  %55 = load %struct.devx_obj*, %struct.devx_obj** %7, align 8
  %56 = getelementptr inbounds %struct.devx_obj, %struct.devx_obj* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  store i32 0, i32* %5, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* @create_mkey_in, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @mkey_umem_valid, align 4
  %64 = call i32 @MLX5_SET(i32 %61, i8* %62, i32 %63, i32 1)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %60, %59, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @MLX5_BYTE_OFF(i32, i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
