; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_qcom-rng.c_qcom_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_rng = type { i64, i32, i32, i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@qcom_rng_dev = common dso_local global %struct.qcom_rng* null, align 8
@qcom_rng_alg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Register crypto rng failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_rng*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qcom_rng* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.qcom_rng* %9, %struct.qcom_rng** %4, align 8
  %10 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %11 = icmp ne %struct.qcom_rng* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %75

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.qcom_rng* %17)
  %19 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %20 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %19, i32 0, i32 3
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %25 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %27 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %15
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @has_acpi_companion(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @devm_clk_get(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %46 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %48 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %54 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i64 @device_get_match_data(i32* %60)
  %62 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  %63 = getelementptr inbounds %struct.qcom_rng, %struct.qcom_rng* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.qcom_rng*, %struct.qcom_rng** %4, align 8
  store %struct.qcom_rng* %64, %struct.qcom_rng** @qcom_rng_dev, align 8
  %65 = call i32 @crypto_register_rng(i32* @qcom_rng_alg)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store %struct.qcom_rng* null, %struct.qcom_rng** @qcom_rng_dev, align 8
  br label %73

73:                                               ; preds = %68, %58
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %52, %31, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.qcom_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_rng*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @has_acpi_companion(i32*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @device_get_match_data(i32*) #1

declare dso_local i32 @crypto_register_rng(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
