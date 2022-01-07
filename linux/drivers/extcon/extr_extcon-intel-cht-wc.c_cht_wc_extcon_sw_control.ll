; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_sw_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_sw_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_wc_extcon_data = type { i32, i32 }

@CHT_WC_CHGDISCTRL_FN = common dso_local global i32 0, align 4
@CHT_WC_CHGDISCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error setting sw control for CHGDIS pin: %d\0A\00", align 1
@CHT_WC_CHGRCTRL0_SWCONTROL = common dso_local global i32 0, align 4
@CHT_WC_CHGRCTRL0_CCSM_OFF = common dso_local global i32 0, align 4
@CHT_WC_CHGRCTRL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error setting sw control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cht_wc_extcon_data*, i32)* @cht_wc_extcon_sw_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_extcon_sw_control(%struct.cht_wc_extcon_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cht_wc_extcon_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cht_wc_extcon_data* %0, %struct.cht_wc_extcon_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @CHT_WC_CHGDISCTRL_FN, align 4
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ 0, %10 ], [ %12, %11 ]
  store i32 %14, i32* %7, align 4
  %15 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %16 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CHT_WC_CHGDISCTRL, align 4
  %19 = load i32, i32* @CHT_WC_CHGDISCTRL_FN, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %26 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %13
  %31 = load i32, i32* @CHT_WC_CHGRCTRL0_SWCONTROL, align 4
  %32 = load i32, i32* @CHT_WC_CHGRCTRL0_CCSM_OFF, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  br label %39

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %7, align 4
  %41 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %42 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CHT_WC_CHGRCTRL0, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %3, align 8
  %52 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %39
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
