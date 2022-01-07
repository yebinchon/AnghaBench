; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mt6323.c_mt6323_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mt6323.c_mt6323_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mt6323_leds = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MT6323_TOP_CKPDN0 = common dso_local global i32 0, align 4
@MT6323_RG_DRV_32K_CK_PDN_MASK = common dso_local global i32 0, align 4
@MT6323_RG_DRV_32K_CK_PDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt6323_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6323_led_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mt6323_leds*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mt6323_leds* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mt6323_leds* %6, %struct.mt6323_leds** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load %struct.mt6323_leds*, %struct.mt6323_leds** %3, align 8
  %9 = getelementptr inbounds %struct.mt6323_leds, %struct.mt6323_leds* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = load %struct.mt6323_leds*, %struct.mt6323_leds** %3, align 8
  %18 = getelementptr inbounds %struct.mt6323_leds, %struct.mt6323_leds* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @mt6323_led_hw_off(i32* %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.mt6323_leds*, %struct.mt6323_leds** %3, align 8
  %31 = getelementptr inbounds %struct.mt6323_leds, %struct.mt6323_leds* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MT6323_TOP_CKPDN0, align 4
  %36 = load i32, i32* @MT6323_RG_DRV_32K_CK_PDN_MASK, align 4
  %37 = load i32, i32* @MT6323_RG_DRV_32K_CK_PDN, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mt6323_leds*, %struct.mt6323_leds** %3, align 8
  %40 = getelementptr inbounds %struct.mt6323_leds, %struct.mt6323_leds* %39, i32 0, i32 0
  %41 = call i32 @mutex_destroy(i32* %40)
  ret i32 0
}

declare dso_local %struct.mt6323_leds* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mt6323_led_hw_off(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
