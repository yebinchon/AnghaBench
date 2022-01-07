; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.exynos_rng_ctx = type { %struct.exynos_rng_dev* }
%struct.exynos_rng_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32, i32*, i32)* @exynos_rng_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_rng_generate(%struct.crypto_rng* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_rng*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.exynos_rng_ctx*, align 8
  %13 = alloca %struct.exynos_rng_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_rng* %0, %struct.crypto_rng** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.crypto_rng*, %struct.crypto_rng** %7, align 8
  %17 = call %struct.exynos_rng_ctx* @crypto_rng_ctx(%struct.crypto_rng* %16)
  store %struct.exynos_rng_ctx* %17, %struct.exynos_rng_ctx** %12, align 8
  %18 = load %struct.exynos_rng_ctx*, %struct.exynos_rng_ctx** %12, align 8
  %19 = getelementptr inbounds %struct.exynos_rng_ctx, %struct.exynos_rng_ctx* %18, i32 0, i32 0
  %20 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %19, align 8
  store %struct.exynos_rng_dev* %20, %struct.exynos_rng_dev** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %22 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %63

29:                                               ; preds = %5
  %30 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %31 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  br label %33

33:                                               ; preds = %51, %29
  %34 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @exynos_rng_get_random(%struct.exynos_rng_dev* %34, i32* %35, i32 %36, i32* %14)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %54

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %10, align 8
  %49 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %50 = call i32 @exynos_rng_reseed(%struct.exynos_rng_dev* %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %33, label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %56 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %13, align 8
  %59 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %54, %27
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.exynos_rng_ctx* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @exynos_rng_get_random(%struct.exynos_rng_dev*, i32*, i32, i32*) #1

declare dso_local i32 @exynos_rng_reseed(%struct.exynos_rng_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
