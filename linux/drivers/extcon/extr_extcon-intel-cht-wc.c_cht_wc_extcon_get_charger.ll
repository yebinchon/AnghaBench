; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_get_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-cht-wc.c_cht_wc_extcon_get_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cht_wc_extcon_data = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CHT_WC_USBSRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error reading usbsrc: %d\0A\00", align 1
@CHT_WC_USBSRC_STS_MASK = common dso_local global i32 0, align 4
@CHT_WC_USBSRC_STS_SUCCESS = common dso_local global i32 0, align 4
@CHT_WC_USBSRC_STS_FAIL = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not detect charger type\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Timeout detecting charger type\0A\00", align 1
@CHT_WC_USBSRC_TYPE_MASK = common dso_local global i32 0, align 4
@CHT_WC_USBSRC_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Unhandled charger type %d, defaulting to SDP\0A\00", align 1
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_ACA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cht_wc_extcon_data*, i32)* @cht_wc_extcon_get_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_extcon_get_charger(%struct.cht_wc_extcon_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cht_wc_extcon_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cht_wc_extcon_data* %0, %struct.cht_wc_extcon_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 800)
  %12 = add i64 %10, %11
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %4, align 8
  %15 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CHT_WC_USBSRC, align 4
  %18 = call i32 @regmap_read(i32 %16, i32 %17, i32* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %4, align 8
  %23 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %94

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CHT_WC_USBSRC_STS_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CHT_WC_USBSRC_STS_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CHT_WC_USBSRC_STS_FAIL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %28
  br label %47

40:                                               ; preds = %35
  %41 = call i32 @msleep(i32 50)
  br label %42

42:                                               ; preds = %40
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @time_before(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %13, label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @CHT_WC_USBSRC_STS_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %55, i32* %3, align 4
  br label %94

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @CHT_WC_USBSRC_STS_FAIL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %4, align 8
  %62 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_warn(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %70

65:                                               ; preds = %56
  %66 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %4, align 8
  %67 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_warn(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %71, i32* %3, align 4
  br label %94

72:                                               ; preds = %47
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @CHT_WC_USBSRC_TYPE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @CHT_WC_USBSRC_TYPE_SHIFT, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %79 [
    i32 128, label %86
    i32 131, label %86
    i32 129, label %86
    i32 134, label %88
    i32 133, label %90
    i32 132, label %90
    i32 130, label %90
    i32 135, label %92
  ]

79:                                               ; preds = %72
  %80 = load %struct.cht_wc_extcon_data*, %struct.cht_wc_extcon_data** %4, align 8
  %81 = getelementptr inbounds %struct.cht_wc_extcon_data, %struct.cht_wc_extcon_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, ...) @dev_warn(i32 %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %85, i32* %3, align 4
  br label %94

86:                                               ; preds = %72, %72, %72
  %87 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %87, i32* %3, align 4
  br label %94

88:                                               ; preds = %72
  %89 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %72, %72, %72
  %91 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  store i32 %91, i32* %3, align 4
  br label %94

92:                                               ; preds = %72
  %93 = load i32, i32* @EXTCON_CHG_USB_ACA, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %90, %88, %86, %79, %70, %54, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
