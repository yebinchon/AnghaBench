; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_get_cc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_get_cc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@query_cong_params_out = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@congestion_parameters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i64, i32, i32*)* @mlx5_ib_get_cc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_get_cc_params(%struct.mlx5_ib_dev* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @query_cong_params_out, align 4
  %17 = call i32 @MLX5_ST_SZ_BYTES(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %19, 1
  %21 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %18, i64 %20, i32* null)
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %15, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %23 = icmp ne %struct.mlx5_core_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kvzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %59

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mlx5_ib_param_to_node(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mlx5_cmd_query_cong_params(%struct.mlx5_core_dev* %39, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %56

47:                                               ; preds = %36
  %48 = load i32, i32* @query_cong_params_out, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @congestion_parameters, align 4
  %51 = call i8* @MLX5_ADDR_OF(i32 %48, i8* %49, i32 %50)
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @mlx5_get_cc_param_val(i8* %52, i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %46
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @kvfree(i8* %57)
  br label %59

59:                                               ; preds = %56, %33
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %60, i64 %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i64, i32*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5_ib_param_to_node(i32) #1

declare dso_local i32 @mlx5_cmd_query_cong_params(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_get_cc_param_val(i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
