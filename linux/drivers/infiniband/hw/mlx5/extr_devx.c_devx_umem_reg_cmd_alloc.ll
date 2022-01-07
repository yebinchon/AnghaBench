; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_reg_cmd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_umem_reg_cmd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.devx_umem = type { i32 }
%struct.devx_umem_reg_cmd = type { i32, i32 }

@create_umem_in = common dso_local global i32 0, align 4
@mtt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, %struct.devx_umem*, %struct.devx_umem_reg_cmd*)* @devx_umem_reg_cmd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_umem_reg_cmd_alloc(%struct.uverbs_attr_bundle* %0, %struct.devx_umem* %1, %struct.devx_umem_reg_cmd* %2) #0 {
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca %struct.devx_umem*, align 8
  %6 = alloca %struct.devx_umem_reg_cmd*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %4, align 8
  store %struct.devx_umem* %1, %struct.devx_umem** %5, align 8
  store %struct.devx_umem_reg_cmd* %2, %struct.devx_umem_reg_cmd** %6, align 8
  %7 = load i32, i32* @create_umem_in, align 4
  %8 = call i32 @MLX5_ST_SZ_BYTES(i32 %7)
  %9 = load i32, i32* @mtt, align 4
  %10 = call i32 @MLX5_ST_SZ_BYTES(i32 %9)
  %11 = load %struct.devx_umem*, %struct.devx_umem** %5, align 8
  %12 = getelementptr inbounds %struct.devx_umem, %struct.devx_umem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = add nsw i32 %8, %14
  %16 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %19 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uverbs_zalloc(%struct.uverbs_attr_bundle* %18, i32 %21)
  %23 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.devx_umem_reg_cmd*, %struct.devx_umem_reg_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.devx_umem_reg_cmd, %struct.devx_umem_reg_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR_OR_ZERO(i32 %27)
  ret i32 %28
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @uverbs_zalloc(%struct.uverbs_attr_bundle*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
