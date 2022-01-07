; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pmic8xxx-pwrkey.c_pm8058_pwrkey_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pmic8xxx-pwrkey.c_pm8058_pwrkey_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_pwrkey = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PM8058_S0_CTRL = common dso_local global i32 0, align 4
@PM8058_S0_TEST2 = common dso_local global i32 0, align 4
@REG_PM8058_VREG_EN_MSM = common dso_local global i32 0, align 4
@PM8058_S1_CTRL = common dso_local global i32 0, align 4
@PM8058_S1_TEST2 = common dso_local global i32 0, align 4
@PM8058_S3_CTRL = common dso_local global i32 0, align 4
@PM8058_S3_TEST2 = common dso_local global i32 0, align 4
@REG_PM8058_VREG_EN_GRP_5_4 = common dso_local global i32 0, align 4
@PM8058_L21_CTRL = common dso_local global i32 0, align 4
@PM8058_L22_CTRL = common dso_local global i32 0, align 4
@SLEEP_CTRL_SMPL_EN_RESET = common dso_local global i32 0, align 4
@PM8058_SLEEP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_pwrkey*, i32)* @pm8058_pwrkey_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8058_pwrkey_shutdown(%struct.pmic8xxx_pwrkey* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmic8xxx_pwrkey*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmic8xxx_pwrkey* %0, %struct.pmic8xxx_pwrkey** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pmic8xxx_pwrkey*, %struct.pmic8xxx_pwrkey** %4, align 8
  %11 = getelementptr inbounds %struct.pmic8xxx_pwrkey, %struct.pmic8xxx_pwrkey* %10, i32 0, i32 0
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %2
  %16 = load %struct.regmap*, %struct.regmap** %7, align 8
  %17 = load i32, i32* @PM8058_S0_CTRL, align 4
  %18 = load i32, i32* @PM8058_S0_TEST2, align 4
  %19 = load i32, i32* @REG_PM8058_VREG_EN_MSM, align 4
  %20 = call i32 @BIT(i32 7)
  %21 = call i32 @pm8058_disable_smps_locally_set_pull_down(%struct.regmap* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = load i32, i32* @PM8058_S1_CTRL, align 4
  %24 = load i32, i32* @PM8058_S1_TEST2, align 4
  %25 = load i32, i32* @REG_PM8058_VREG_EN_MSM, align 4
  %26 = call i32 @BIT(i32 6)
  %27 = call i32 @pm8058_disable_smps_locally_set_pull_down(%struct.regmap* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.regmap*, %struct.regmap** %7, align 8
  %29 = load i32, i32* @PM8058_S3_CTRL, align 4
  %30 = load i32, i32* @PM8058_S3_TEST2, align 4
  %31 = load i32, i32* @REG_PM8058_VREG_EN_GRP_5_4, align 4
  %32 = call i32 @BIT(i32 7)
  %33 = call i32 @BIT(i32 4)
  %34 = or i32 %32, %33
  %35 = call i32 @pm8058_disable_smps_locally_set_pull_down(%struct.regmap* %28, i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.regmap*, %struct.regmap** %7, align 8
  %37 = load i32, i32* @PM8058_L21_CTRL, align 4
  %38 = load i32, i32* @REG_PM8058_VREG_EN_GRP_5_4, align 4
  %39 = call i32 @BIT(i32 1)
  %40 = call i32 @pm8058_disable_ldo_locally_set_pull_down(%struct.regmap* %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %15, %2
  %42 = load %struct.regmap*, %struct.regmap** %7, align 8
  %43 = load i32, i32* @PM8058_L22_CTRL, align 4
  %44 = call i32 @regmap_update_bits(%struct.regmap* %42, i32 %43, i32 191, i32 147)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %41
  %50 = load i32, i32* @SLEEP_CTRL_SMPL_EN_RESET, align 4
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.regmap*, %struct.regmap** %7, align 8
  %57 = load i32, i32* @PM8058_SLEEP_CTRL, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @regmap_update_bits(%struct.regmap* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pm8058_disable_smps_locally_set_pull_down(%struct.regmap*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pm8058_disable_ldo_locally_set_pull_down(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
