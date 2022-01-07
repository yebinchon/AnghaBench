; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_select_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_select_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTDMAC020_LLI_DST_SEL = common dso_local global i32 0, align 4
@FTDMAC020_LLI_SRC_SEL = common dso_local global i32 0, align 4
@PL080_CONTROL_DST_AHB2 = common dso_local global i32 0, align 4
@PL080_CONTROL_SRC_AHB2 = common dso_local global i32 0, align 4
@PL08X_AHB1 = common dso_local global i32 0, align 4
@PL08X_AHB2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pl08x_select_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_select_bus(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @FTDMAC020_LLI_DST_SEL, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @FTDMAC020_LLI_SRC_SEL, align 4
  store i32 %14, i32* %9, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @PL080_CONTROL_DST_AHB2, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @PL080_CONTROL_SRC_AHB2, align 4
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PL08X_AHB1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PL08X_AHB2, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PL08X_AHB1, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %18
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %28, %23
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PL08X_AHB1, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PL08X_AHB2, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PL08X_AHB2, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47, %37
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %52, %47, %42
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
