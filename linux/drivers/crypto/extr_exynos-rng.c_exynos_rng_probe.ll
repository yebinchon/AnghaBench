; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_exynos-rng.c_exynos_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_rng_dev = type { i32, i32, i32, i32*, i32 }
%struct.platform_device = type { i32 }

@exynos_rng_dev = common dso_local global %struct.exynos_rng_dev* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"secss\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Couldn't get clock.\0A\00", align 1
@exynos_rng_alg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Couldn't register rng crypto alg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_rng_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** @exynos_rng_dev, align 8
  %7 = icmp ne %struct.exynos_rng_dev* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EEXIST, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %83

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.exynos_rng_dev* @devm_kzalloc(i32* %13, i32 32, i32 %14)
  store %struct.exynos_rng_dev* %15, %struct.exynos_rng_dev** %4, align 8
  %16 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %17 = icmp ne %struct.exynos_rng_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %11
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i64 @of_device_get_match_data(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %27 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %28, i32 0, i32 4
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @devm_clk_get(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %39 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %21
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %50 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %83

53:                                               ; preds = %21
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %54, i32 0)
  %56 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %57 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %59 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %65 = getelementptr inbounds %struct.exynos_rng_dev, %struct.exynos_rng_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %83

68:                                               ; preds = %53
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.exynos_rng_dev* %70)
  %72 = load %struct.exynos_rng_dev*, %struct.exynos_rng_dev** %4, align 8
  store %struct.exynos_rng_dev* %72, %struct.exynos_rng_dev** @exynos_rng_dev, align 8
  %73 = call i32 @crypto_register_rng(i32* @exynos_rng_alg)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store %struct.exynos_rng_dev* null, %struct.exynos_rng_dev** @exynos_rng_dev, align 8
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %63, %45, %18, %8
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.exynos_rng_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_rng_dev*) #1

declare dso_local i32 @crypto_register_rng(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
