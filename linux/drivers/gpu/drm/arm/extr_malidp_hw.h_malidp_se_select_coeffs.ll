; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.h_malidp_se_select_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.h_malidp_se_select_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP_1_00000 = common dso_local global i64 0, align 8
@MALIDP_UPSCALING_COEFFS = common dso_local global i32 0, align 4
@FP_0_66667 = common dso_local global i64 0, align 8
@MALIDP_DOWNSCALING_1_5_COEFFS = common dso_local global i32 0, align 4
@FP_0_50000 = common dso_local global i64 0, align 8
@MALIDP_DOWNSCALING_2_COEFFS = common dso_local global i32 0, align 4
@FP_0_36363 = common dso_local global i64 0, align 8
@MALIDP_DOWNSCALING_2_75_COEFFS = common dso_local global i32 0, align 4
@MALIDP_DOWNSCALING_4_COEFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @malidp_se_select_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_se_select_coeffs(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @FP_1_00000, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @MALIDP_UPSCALING_COEFFS, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @FP_0_66667, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @MALIDP_DOWNSCALING_1_5_COEFFS, align 4
  br label %32

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @FP_0_50000, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @MALIDP_DOWNSCALING_2_COEFFS, align 4
  br label %30

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @FP_0_36363, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @MALIDP_DOWNSCALING_2_75_COEFFS, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @MALIDP_DOWNSCALING_4_COEFFS, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi i32 [ %19, %18 ], [ %29, %28 ]
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i32 [ %13, %12 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %32, %6
  %35 = phi i32 [ %7, %6 ], [ %33, %32 ]
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
