; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc18xx.c_lpc18xx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.lpc18xx_gpio_chip = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpc18xx_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"input clock not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to add gpio chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lpc18xx_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lpc18xx_gpio_chip* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.lpc18xx_gpio_chip* %13, %struct.lpc18xx_gpio_chip** %5, align 8
  %14 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %15 = icmp ne %struct.lpc18xx_gpio_chip* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %21 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_3__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_3__* @lpc18xx_chip to i8*), i64 8, i1 false)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.lpc18xx_gpio_chip* %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_property_match_string(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %33, i32 0)
  %35 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %36 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %52

37:                                               ; preds = %19
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @of_address_to_resource(i32 %40, i32 %41, %struct.resource* %8)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %117

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.device* %48, %struct.resource* %8)
  %50 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %51 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %32
  %53 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %54 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %60 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %117

63:                                               ; preds = %52
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @devm_clk_get(%struct.device* %64, i32* null)
  %66 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %67 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %69 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %77 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %117

80:                                               ; preds = %63
  %81 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %82 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_prepare_enable(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %117

91:                                               ; preds = %80
  %92 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %93 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %92, i32 0, i32 2
  %94 = call i32 @spin_lock_init(i32* %93)
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %97 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store %struct.device* %95, %struct.device** %98, align 8
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %101 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %100, i32 0, i32 1
  %102 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %103 = call i32 @devm_gpiochip_add_data(%struct.device* %99, %struct.TYPE_3__* %101, %struct.lpc18xx_gpio_chip* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %91
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %110 = getelementptr inbounds %struct.lpc18xx_gpio_chip, %struct.lpc18xx_gpio_chip* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %117

114:                                              ; preds = %91
  %115 = load %struct.lpc18xx_gpio_chip*, %struct.lpc18xx_gpio_chip** %5, align 8
  %116 = call i32 @lpc18xx_gpio_pin_ic_probe(%struct.lpc18xx_gpio_chip* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %106, %87, %73, %58, %45, %16
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.lpc18xx_gpio_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_gpio_chip*) #1

declare dso_local i32 @of_property_match_string(i32, i8*, i8*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_3__*, %struct.lpc18xx_gpio_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @lpc18xx_gpio_pin_ic_probe(%struct.lpc18xx_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
