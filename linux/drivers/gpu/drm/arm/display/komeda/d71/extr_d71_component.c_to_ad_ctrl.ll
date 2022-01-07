; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_to_ad_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_to_ad_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AD_AEN = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_BLOCK_SIZE_32x8 = common dso_local global i32 0, align 4
@AD_WB = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_YTR = common dso_local global i32 0, align 4
@AD_YT = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_SPLIT = common dso_local global i32 0, align 4
@AD_BS = common dso_local global i32 0, align 4
@AFBC_FORMAT_MOD_TILED = common dso_local global i32 0, align 4
@AD_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @to_ad_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_ad_ctrl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @AD_AEN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AFBC_FORMAT_MOD_BLOCK_SIZE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @AFBC_FORMAT_MOD_BLOCK_SIZE_32x8, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @AD_WB, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AFBC_FORMAT_MOD_YTR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @AD_YT, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @AFBC_FORMAT_MOD_SPLIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @AD_BS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @AFBC_FORMAT_MOD_TILED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @AD_TH, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
