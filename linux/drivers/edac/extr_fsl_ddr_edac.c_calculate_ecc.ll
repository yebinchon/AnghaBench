; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_calculate_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_calculate_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ecc_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @calculate_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_ecc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %67, %2
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %70

14:                                               ; preds = %11
  %15 = load i32*, i32** @ecc_table, align 8
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** @ecc_table, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %58, %14
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %45, %46
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %11

70:                                               ; preds = %11
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
