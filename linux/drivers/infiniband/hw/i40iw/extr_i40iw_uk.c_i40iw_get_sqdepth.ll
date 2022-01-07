; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_get_sqdepth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_get_sqdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I40IW_SQ_RSVD = common dso_local global i64 0, align 8
@I40IW_QP_SW_MIN_WQSIZE = common dso_local global i32 0, align 4
@I40IW_QP_SW_MAX_SQ_QUANTAS = common dso_local global i32 0, align 4
@I40IW_ERR_INVALID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_get_sqdepth(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @I40IW_SQ_RSVD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @roundup_pow_of_two(i64 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I40IW_QP_SW_MIN_WQSIZE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @I40IW_QP_SW_MIN_WQSIZE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %23, %24
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %35

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I40IW_QP_SW_MAX_SQ_QUANTAS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @I40IW_ERR_INVALID_SIZE, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %22
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @roundup_pow_of_two(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
