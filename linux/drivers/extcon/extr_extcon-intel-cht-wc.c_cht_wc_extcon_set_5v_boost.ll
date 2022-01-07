; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_set_5v_boost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_set_5v_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_wc_extcon_data = type { i32, i32 }

@CHT_WC_VBUS_GPIO_CTLO_DRV_OD = common dso_local global i32 0, align 4
@CHT_WC_VBUS_GPIO_CTLO_DIR_OUT = common dso_local global i32 0, align 4
@CHT_WC_VBUS_GPIO_CTLO_OUTPUT = common dso_local global i32 0, align 4
@CHT_WC_VBUS_GPIO_CTLO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error writing Vbus GPIO CTLO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cht_wc_extcon_data*, i32)* @cht_wc_extcon_set_5v_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cht_wc_extcon_set_5v_boost(%struct.cht_wc_extcon_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cht_wc_extcon_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cht_wc_extcon_data* %0, %struct.cht_wc_extcon_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CHT_WC_VBUS_GPIO_CTLO_DRV_OD, align 4
  %8 = load i32, i32* @CHT_WC_VBUS_GPIO_CTLO_DIR_OUT, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @CHT_WC_VBUS_GPIO_CTLO_OUTPUT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %18 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHT_WC_VBUS_GPIO_CTLO, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @regmap_write(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %27 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
