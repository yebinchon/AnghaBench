; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_umr_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_get_umr_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_wq = type { i32* }

@IB_WC_LOCAL_INV = common dso_local global i32 0, align 4
@IB_WC_REG_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown completion status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_wq*, i32)* @get_umr_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_umr_comp(%struct.mlx5_ib_wq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_wq*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_wq* %0, %struct.mlx5_ib_wq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %16
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @IB_WC_LOCAL_INV, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @IB_WC_REG_MR, align 4
  store i32 %17, i32* %3, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %16, %14, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
