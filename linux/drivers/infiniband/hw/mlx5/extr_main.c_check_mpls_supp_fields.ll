; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_check_mpls_supp_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_check_mpls_supp_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fte_match_mpls = common dso_local global i32 0, align 4
@mpls_label = common dso_local global i32 0, align 4
@MLX5_FIELD_SUPPORT_MPLS_LABEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@mpls_exp = common dso_local global i32 0, align 4
@MLX5_FIELD_SUPPORT_MPLS_EXP = common dso_local global i32 0, align 4
@mpls_s_bos = common dso_local global i32 0, align 4
@MLX5_FIELD_SUPPORT_MPLS_S_BOS = common dso_local global i32 0, align 4
@mpls_ttl = common dso_local global i32 0, align 4
@MLX5_FIELD_SUPPORT_MPLS_TTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @check_mpls_supp_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mpls_supp_fields(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @fte_match_mpls, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @mpls_label, align 4
  %9 = call i64 @MLX5_GET(i32 %6, i32* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MLX5_FIELD_SUPPORT_MPLS_LABEL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @fte_match_mpls, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @mpls_exp, align 4
  %23 = call i64 @MLX5_GET(i32 %20, i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MLX5_FIELD_SUPPORT_MPLS_EXP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %25, %19
  %34 = load i32, i32* @fte_match_mpls, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @mpls_s_bos, align 4
  %37 = call i64 @MLX5_GET(i32 %34, i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MLX5_FIELD_SUPPORT_MPLS_S_BOS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %62

47:                                               ; preds = %39, %33
  %48 = load i32, i32* @fte_match_mpls, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @mpls_ttl, align 4
  %51 = call i64 @MLX5_GET(i32 %48, i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @MLX5_FIELD_SUPPORT_MPLS_TTL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %44, %30, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @MLX5_GET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
