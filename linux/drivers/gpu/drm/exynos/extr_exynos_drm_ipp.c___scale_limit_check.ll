; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___scale_limit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___scale_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"Scale from %d to %d exceeds HW limits (ratio min %d.%05d, max %d.%05d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @__scale_limit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__scale_limit_check(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul i32 %15, %16
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %12, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul i32 %25, %26
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22, %12
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 16
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 65535
  %36 = mul i32 100000, %35
  %37 = udiv i32 %36, 65536
  %38 = load i32, i32* %9, align 4
  %39 = lshr i32 %38, 16
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 65535
  %42 = mul i32 100000, %41
  %43 = udiv i32 %42, 65536
  %44 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %33, i32 %37, i32 %39, i32 %43)
  store i32 0, i32* %5, align 4
  br label %46

45:                                               ; preds = %22, %19
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
