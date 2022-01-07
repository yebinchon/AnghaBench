; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_send_wqe_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_send_wqe_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX4_IB_QP_LSO = common dso_local global i32 0, align 4
@MLX4_IB_LSO_HEADER_SPARE = common dso_local global i32 0, align 4
@MLX4_IB_UD_HEADER_SIZE = common dso_local global i32 0, align 4
@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @send_wqe_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_wqe_overhead(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %41 [
    i32 128, label %7
    i32 134, label %20
    i32 135, label %20
    i32 136, label %20
    i32 130, label %21
    i32 131, label %21
    i32 129, label %22
    i32 133, label %23
    i32 132, label %24
    i32 137, label %24
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MLX4_IB_QP_LSO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @MLX4_IB_LSO_HEADER_SPARE, align 4
  br label %15

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = sext i32 %16 to i64
  %18 = add i64 8, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2, %2, %2
  store i32 72, i32* %3, align 4
  br label %42

21:                                               ; preds = %2, %2
  store i32 8, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  store i32 12, i32* %3, align 4
  br label %42

24:                                               ; preds = %2, %2
  %25 = load i32, i32* @MLX4_IB_UD_HEADER_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* @MLX4_IB_UD_HEADER_SIZE, align 4
  %28 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %29 = call i32 @DIV_ROUND_UP(i32 %27, i32 %28)
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %26, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ALIGN(i32 %33, i32 4)
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = call i32 @ALIGN(i32 8, i32 4)
  %38 = sext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 4, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %24, %23, %22, %21, %20, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
