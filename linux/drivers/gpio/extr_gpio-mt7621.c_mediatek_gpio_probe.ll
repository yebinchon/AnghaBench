; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mt7621.c_mediatek_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mtk = type { %struct.device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTK_BANK_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mediatek_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediatek_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mtk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mtk* @devm_kzalloc(%struct.device* %14, i32 16, i32 %15)
  store %struct.mtk* %16, %struct.mtk** %6, align 8
  %17 = load %struct.mtk*, %struct.mtk** %6, align 8
  %18 = icmp ne %struct.mtk* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %23, i32 0)
  %25 = load %struct.mtk*, %struct.mtk** %6, align 8
  %26 = getelementptr inbounds %struct.mtk, %struct.mtk* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mtk*, %struct.mtk** %6, align 8
  %28 = getelementptr inbounds %struct.mtk, %struct.mtk* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.mtk*, %struct.mtk** %6, align 8
  %34 = getelementptr inbounds %struct.mtk, %struct.mtk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %22
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @irq_of_parse_and_map(%struct.device_node* %38, i32 0)
  %40 = load %struct.mtk*, %struct.mtk** %6, align 8
  %41 = getelementptr inbounds %struct.mtk, %struct.mtk* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.mtk*, %struct.mtk** %6, align 8
  %44 = getelementptr inbounds %struct.mtk, %struct.mtk* %43, i32 0, i32 0
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.mtk*, %struct.mtk** %6, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.mtk* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %62, %37
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MTK_BANK_CNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mediatek_gpio_bank_probe(%struct.device* %53, %struct.device_node* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %48

65:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %32, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.mtk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk*) #1

declare dso_local i32 @mediatek_gpio_bank_probe(%struct.device*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
