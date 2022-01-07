; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_calculate_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_calculate_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_calculate_at(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %68

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 100, %32
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 %37, 100
  %39 = mul nsw i32 %36, %38
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 100, %40
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %41, %42
  %44 = mul nsw i32 1000, %43
  %45 = load i32, i32* %18, align 4
  %46 = sdiv i32 %45, 100
  %47 = add nsw i32 10000, %46
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 5
  %51 = sdiv i32 %50, 10
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %54, 5000
  %56 = sdiv i32 %55, 10000
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32*, i32** %12, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %31, %28
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
