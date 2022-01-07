; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dentist_get_did_from_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn20/extr_dcn20_clk_mgr.c_dentist_get_did_from_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DENTIST_DIVIDER_RANGE_2_START = common dso_local global i32 0, align 4
@DENTIST_DIVIDER_RANGE_1_START = common dso_local global i32 0, align 4
@DENTIST_BASE_DID_1 = common dso_local global i64 0, align 8
@DENTIST_DIVIDER_RANGE_1_STEP = common dso_local global i32 0, align 4
@DENTIST_DIVIDER_RANGE_3_START = common dso_local global i32 0, align 4
@DENTIST_BASE_DID_2 = common dso_local global i64 0, align 8
@DENTIST_DIVIDER_RANGE_2_STEP = common dso_local global i32 0, align 4
@DENTIST_DIVIDER_RANGE_4_START = common dso_local global i32 0, align 4
@DENTIST_BASE_DID_3 = common dso_local global i64 0, align 8
@DENTIST_DIVIDER_RANGE_3_STEP = common dso_local global i32 0, align 4
@DENTIST_BASE_DID_4 = common dso_local global i64 0, align 8
@DENTIST_DIVIDER_RANGE_4_STEP = common dso_local global i32 0, align 4
@DENTIST_MAX_DID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dentist_get_did_from_divider(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @DENTIST_DIVIDER_RANGE_2_START, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @DENTIST_DIVIDER_RANGE_1_START, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i64, i64* @DENTIST_BASE_DID_1, align 8
  store i64 %12, i64* %3, align 8
  br label %22

13:                                               ; preds = %7
  %14 = load i64, i64* @DENTIST_BASE_DID_1, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @DENTIST_DIVIDER_RANGE_1_START, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* @DENTIST_DIVIDER_RANGE_1_STEP, align 4
  %19 = sdiv i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %14, %20
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %13, %11
  br label %66

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @DENTIST_DIVIDER_RANGE_3_START, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64, i64* @DENTIST_BASE_DID_2, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @DENTIST_DIVIDER_RANGE_2_START, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* @DENTIST_DIVIDER_RANGE_2_STEP, align 4
  %33 = sdiv i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  store i64 %35, i64* %3, align 8
  br label %65

36:                                               ; preds = %23
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @DENTIST_DIVIDER_RANGE_4_START, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* @DENTIST_BASE_DID_3, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @DENTIST_DIVIDER_RANGE_3_START, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @DENTIST_DIVIDER_RANGE_3_STEP, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  store i64 %48, i64* %3, align 8
  br label %64

49:                                               ; preds = %36
  %50 = load i64, i64* @DENTIST_BASE_DID_4, align 8
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @DENTIST_DIVIDER_RANGE_4_START, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* @DENTIST_DIVIDER_RANGE_4_STEP, align 4
  %55 = sdiv i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %50, %56
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @DENTIST_MAX_DID, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i64, i64* @DENTIST_MAX_DID, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %49
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
