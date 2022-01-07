; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_pwrsrc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_pwrsrc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_wc_extcon_data = type { i32, i32, i32, i32, i32 }

@EXTCON_NONE = common dso_local global i32 0, align 4
@CHT_WC_PWRSRC_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading pwrsrc status: %d\0A\00", align 1
@INTEL_USB_ID_GND = common dso_local global i32 0, align 4
@CHT_WC_PWRSRC_VBUS = common dso_local global i32 0, align 4
@MUX_SEL_PMIC = common dso_local global i32 0, align 4
@MUX_SEL_SOC = common dso_local global i32 0, align 4
@INTEL_USB_RID_A = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cht_wc_extcon_data*)* @cht_wc_extcon_pwrsrc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cht_wc_extcon_pwrsrc_event(%struct.cht_wc_extcon_data* %0) #0 {
  %2 = alloca %struct.cht_wc_extcon_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cht_wc_extcon_data* %0, %struct.cht_wc_extcon_data** %2, align 8
  %8 = load i32, i32* @EXTCON_NONE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %10 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %13 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CHT_WC_PWRSRC_STS, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %4)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %21 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cht_wc_extcon_get_id(%struct.cht_wc_extcon_data* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @INTEL_USB_ID_GND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %34 = call i32 @cht_wc_extcon_enable_charging(%struct.cht_wc_extcon_data* %33, i32 0)
  %35 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %36 = call i32 @cht_wc_extcon_set_otgmode(%struct.cht_wc_extcon_data* %35, i32 1)
  br label %59

37:                                               ; preds = %25
  %38 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %39 = call i32 @cht_wc_extcon_set_otgmode(%struct.cht_wc_extcon_data* %38, i32 0)
  %40 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %41 = call i32 @cht_wc_extcon_enable_charging(%struct.cht_wc_extcon_data* %40, i32 1)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @CHT_WC_PWRSRC_VBUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %48 = load i32, i32* @MUX_SEL_PMIC, align 4
  %49 = call i32 @cht_wc_extcon_set_phymux(%struct.cht_wc_extcon_data* %47, i32 %48)
  br label %63

50:                                               ; preds = %37
  %51 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @cht_wc_extcon_get_charger(%struct.cht_wc_extcon_data* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %61 = load i32, i32* @MUX_SEL_SOC, align 4
  %62 = call i32 @cht_wc_extcon_set_phymux(%struct.cht_wc_extcon_data* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %46
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %66 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @cht_wc_extcon_set_state(%struct.cht_wc_extcon_data* %70, i32 %71, i32 1)
  %73 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %74 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %75 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cht_wc_extcon_set_state(%struct.cht_wc_extcon_data* %73, i32 %76, i32 0)
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %80 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %63
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @INTEL_USB_ID_GND, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @INTEL_USB_RID_A, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ true, %81 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %93 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %95 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @EXTCON_USB_HOST, align 4
  %98 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %2, align 8
  %99 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @extcon_set_state_sync(i32 %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %89, %19
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @cht_wc_extcon_get_id(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_enable_charging(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_set_otgmode(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_set_phymux(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_get_charger(%struct.cht_wc_extcon_data*, i32) #1

declare dso_local i32 @cht_wc_extcon_set_state(%struct.cht_wc_extcon_data*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
