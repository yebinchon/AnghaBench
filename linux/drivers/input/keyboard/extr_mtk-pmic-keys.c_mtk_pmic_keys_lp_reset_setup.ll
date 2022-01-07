; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_keys_lp_reset_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mtk-pmic-keys.c_mtk_pmic_keys_lp_reset_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pmic_keys = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"power-off-time-sec\00", align 1
@MTK_PMIC_RST_DU_MASK = common dso_local global i32 0, align 4
@MTK_PMIC_RST_DU_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"mediatek,long-press-mode\00", align 1
@MTK_PMIC_PWRKEY_RST = common dso_local global i32 0, align 4
@MTK_PMIC_HOMEKEY_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pmic_keys*, i32)* @mtk_pmic_keys_lp_reset_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pmic_keys_lp_reset_setup(%struct.mtk_pmic_keys* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_pmic_keys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_pmic_keys* %0, %struct.mtk_pmic_keys** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @of_property_read_u32(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MTK_PMIC_RST_DU_MASK, align 4
  %23 = load i32, i32* @MTK_PMIC_RST_DU_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MTK_PMIC_RST_DU_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @of_property_read_u32(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  store i32 130, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %82 [
    i32 129, label %40
    i32 128, label %54
    i32 130, label %69
  ]

40:                                               ; preds = %38
  %41 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %42 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @MTK_PMIC_PWRKEY_RST, align 4
  %46 = load i32, i32* @MTK_PMIC_PWRKEY_RST, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %49 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MTK_PMIC_HOMEKEY_RST, align 4
  %53 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 0)
  br label %83

54:                                               ; preds = %38
  %55 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MTK_PMIC_PWRKEY_RST, align 4
  %60 = load i32, i32* @MTK_PMIC_PWRKEY_RST, align 4
  %61 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %63 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @MTK_PMIC_HOMEKEY_RST, align 4
  %67 = load i32, i32* @MTK_PMIC_HOMEKEY_RST, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i32 %65, i32 %66, i32 %67)
  br label %83

69:                                               ; preds = %38
  %70 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MTK_PMIC_PWRKEY_RST, align 4
  %75 = call i32 @regmap_update_bits(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.mtk_pmic_keys*, %struct.mtk_pmic_keys** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_pmic_keys, %struct.mtk_pmic_keys* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @MTK_PMIC_HOMEKEY_RST, align 4
  %81 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 0)
  br label %83

82:                                               ; preds = %38
  br label %83

83:                                               ; preds = %82, %69, %54, %40
  ret void
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
