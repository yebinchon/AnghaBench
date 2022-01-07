; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_charger_set_otg_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_charger_set_otg_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { %struct.max77693_dev* }
%struct.max77693_dev = type { i32 }

@MAX77843_CHG_OTG_MASK = common dso_local global i32 0, align 4
@MAX77843_CHG_BOOST_MASK = common dso_local global i32 0, align 4
@MAX77843_CHG_ENABLE = common dso_local global i32 0, align 4
@MAX77843_CHG_BUCK_MASK = common dso_local global i32 0, align 4
@MAX77843_CHG_REG_CHG_CNFG_00 = common dso_local global i32 0, align 4
@MAX77843_CHG_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77843_muic_info*, i32)* @max77843_charger_set_otg_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77843_charger_set_otg_vbus(%struct.max77843_muic_info* %0, i32 %1) #0 {
  %3 = alloca %struct.max77843_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77693_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %8 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %7, i32 0, i32 0
  %9 = load %struct.max77693_dev*, %struct.max77693_dev** %8, align 8
  store %struct.max77693_dev* %9, %struct.max77693_dev** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX77843_CHG_OTG_MASK, align 4
  %14 = load i32, i32* @MAX77843_CHG_BOOST_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX77843_CHG_ENABLE, align 4
  %18 = load i32, i32* @MAX77843_CHG_BUCK_MASK, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.max77693_dev*, %struct.max77693_dev** %5, align 8
  %22 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX77843_CHG_REG_CHG_CNFG_00, align 4
  %25 = load i32, i32* @MAX77843_CHG_MODE_MASK, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
