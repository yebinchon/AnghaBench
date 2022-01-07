; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_register_te_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_register_te_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"te-gpios\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot get te-gpios, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"te_gpio\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gpio request failed with %d\0A\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@exynos_dsi_te_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"TE\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"request interrupt failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*, %struct.device*)* @exynos_dsi_register_te_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_register_te_irq(%struct.exynos_dsi* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_dsi*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_get_named_gpio(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %13 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %15 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %23 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpio_is_valid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %75

36:                                               ; preds = %21
  %37 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %38 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpio_request(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %45 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %75

49:                                               ; preds = %36
  %50 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gpio_to_irq(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %56 = call i32 @irq_set_status_flags(i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @exynos_dsi_te_irq_handler, align 4
  %59 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %60 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %61 = call i32 @request_threaded_irq(i32 %57, i32 %58, i32* null, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.exynos_dsi* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load %struct.exynos_dsi*, %struct.exynos_dsi** %4, align 8
  %71 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gpio_free(i32 %72)
  br label %75

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74, %64, %43, %27
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32*, i32, i8*, %struct.exynos_dsi*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
