; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_param_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cong.c_mlx5_ib_param_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX5_IB_DBG_CC_RP_CLAMP_TGT_RATE = common dso_local global i32 0, align 4
@MLX5_IB_DBG_CC_RP_GD = common dso_local global i32 0, align 4
@MLX5_IB_RROCE_ECN_RP = common dso_local global i32 0, align 4
@MLX5_IB_RROCE_ECN_NP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mlx5_ib_param_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_param_to_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MLX5_IB_DBG_CC_RP_CLAMP_TGT_RATE, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MLX5_IB_DBG_CC_RP_GD, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @MLX5_IB_RROCE_ECN_RP, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @MLX5_IB_RROCE_ECN_NP, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
