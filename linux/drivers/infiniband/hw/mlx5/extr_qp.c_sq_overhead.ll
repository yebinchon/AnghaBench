; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_sq_overhead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_sq_overhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp_init_attr = type { i32, i32 }

@MLX5_IB_SQ_UMR_INLINE_THRESHOLD = common dso_local global i32 0, align 4
@MLX5_IB_UMR_OCTOWORD = common dso_local global i32 0, align 4
@IB_QP_CREATE_IPOIB_UD_LSO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp_init_attr*)* @sq_overhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_overhead(%struct.ib_qp_init_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp_init_attr*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_qp_init_attr* %0, %struct.ib_qp_init_attr** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %6 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %59 [
    i32 131, label %8
    i32 135, label %13
    i32 130, label %27
    i32 133, label %28
    i32 132, label %36
    i32 134, label %49
    i32 129, label %49
    i32 128, label %54
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %1, %8
  %14 = load i32, i32* @MLX5_IB_SQ_UMR_INLINE_THRESHOLD, align 4
  %15 = load i32, i32* @MLX5_IB_UMR_OCTOWORD, align 4
  %16 = sdiv i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @max(i32 8, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 4, %21
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = call i32 @max(i32 4, i32 8)
  %30 = sext i32 %29 to i64
  %31 = add i64 4, %30
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %62

36:                                               ; preds = %1
  %37 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %3, align 8
  %38 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IB_QP_CREATE_IPOIB_UD_LSO, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %36
  br label %49

49:                                               ; preds = %1, %1, %48
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %1
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 12
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %1
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %54, %49, %28, %13
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
