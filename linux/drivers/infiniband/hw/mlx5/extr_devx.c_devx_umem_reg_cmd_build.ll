; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_reg_cmd_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_reg_cmd_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.devx_umem = type { %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.devx_umem_reg_cmd = type { i8* }

@create_umem_in = common dso_local global i8* null, align 8
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_CREATE_UMEM = common dso_local global i64 0, align 8
@num_of_mtt = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@page_offset = common dso_local global i32 0, align 4
@MLX5_IB_MTT_WRITE = common dso_local global i32 0, align 4
@MLX5_IB_MTT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.devx_umem*, %struct.devx_umem_reg_cmd*)* @devx_umem_reg_cmd_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devx_umem_reg_cmd_build(%struct.mlx5_ib_dev* %0, %struct.devx_umem* %1, %struct.devx_umem_reg_cmd* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.devx_umem*, align 8
  %6 = alloca %struct.devx_umem_reg_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.devx_umem* %1, %struct.devx_umem** %5, align 8
  store %struct.devx_umem_reg_cmd* %2, %struct.devx_umem_reg_cmd** %6, align 8
  %9 = load i8*, i8** @create_umem_in, align 8
  %10 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %11 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @MLX5_ADDR_OF(i8* %9, i8* %12, i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @MLX5_ADDR_OF(i8* %15, i8* %16, i8* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** @create_umem_in, align 8
  %20 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @opcode, align 4
  %24 = load i64, i64* @MLX5_CMD_OP_CREATE_UMEM, align 8
  %25 = call i32 @MLX5_SET(i8* %19, i8* %22, i32 %23, i64 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @num_of_mtt, align 4
  %29 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %30 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MLX5_SET64(i8* %26, i8* %27, i32 %28, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @log_page_size, align 4
  %36 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %37 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @MLX5_SET(i8* %33, i8* %34, i32 %35, i64 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @page_offset, align 4
  %45 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %46 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @MLX5_SET(i8* %42, i8* %43, i32 %44, i64 %47)
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %50 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %51 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %54 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %58 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %3
  %64 = load i32, i32* @MLX5_IB_MTT_WRITE, align 4
  br label %66

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* @MLX5_IB_MTT_READ, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %49, %struct.TYPE_2__* %52, i64 %55, i8* %56, i32 %69)
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, %struct.TYPE_2__*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
