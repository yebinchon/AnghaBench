; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_set_cc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_set_cc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_cong_params_in = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_CONG_PARAMS = common dso_local global i32 0, align 4
@cong_protocol = common dso_local global i32 0, align 4
@congestion_parameters = common dso_local global i32 0, align 4
@field_select = common dso_local global i32 0, align 4
@field_select_r_roce_rp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i64, i32, i32)* @mlx5_ib_set_cc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_set_cc_params(%struct.mlx5_ib_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_core_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @modify_cong_params_in, align 4
  %18 = call i32 @MLX5_ST_SZ_BYTES(i32 %17)
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %20, 1
  %22 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %19, i64 %21, i32* null)
  store %struct.mlx5_core_dev* %22, %struct.mlx5_core_dev** %14, align 8
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %24 = icmp ne %struct.mlx5_core_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %79

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kvzalloc(i32 %29, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %16, align 4
  br label %73

37:                                               ; preds = %28
  %38 = load i32, i32* @modify_cong_params_in, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* @opcode, align 4
  %41 = load i32, i32* @MLX5_CMD_OP_MODIFY_CONG_PARAMS, align 4
  %42 = call i32 @MLX5_SET(i32 %38, i8* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mlx5_ib_param_to_node(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @modify_cong_params_in, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @cong_protocol, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @MLX5_SET(i32 %45, i8* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @modify_cong_params_in, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @congestion_parameters, align 4
  %53 = call i8* @MLX5_ADDR_OF(i32 %50, i8* %51, i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mlx5_ib_set_cc_param_mask_val(i8* %54, i32 %55, i32 %56, i32* %15)
  %58 = load i32, i32* @modify_cong_params_in, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @field_select, align 4
  %61 = call i8* @MLX5_ADDR_OF(i32 %58, i8* %59, i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = load i32, i32* @field_select_r_roce_rp, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @field_select_r_roce_rp, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @MLX5_SET(i32 %62, i8* %63, i32 %64, i32 %65)
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @mlx5_cmd_modify_cong_params(%struct.mlx5_core_dev* %67, i8* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @kvfree(i8* %71)
  br label %73

73:                                               ; preds = %37, %34
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %74, i64 %76)
  %78 = load i32, i32* %16, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i64, i32*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_param_to_node(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_ib_set_cc_param_mask_val(i8*, i32, i32, i32*) #1

declare dso_local i32 @mlx5_cmd_modify_cong_params(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
