; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_get_vbus_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_get_vbus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_extcon_info = type { i32, i32 }

@AXP288_PS_STAT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read vbus status\0A\00", align 1
@PS_STAT_VBUS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_extcon_info*)* @axp288_get_vbus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_get_vbus_attach(%struct.axp288_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp288_extcon_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axp288_extcon_info* %0, %struct.axp288_extcon_info** %3, align 8
  %6 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %7 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AXP288_PS_STAT_REG, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %15 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PS_STAT_VBUS_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
