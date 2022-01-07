; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_equivalent_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_equivalent_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@WACOM_HID_UP_WACOMDIGITIZER = common dso_local global i32 0, align 4
@WACOM_HID_SP_PAD = common dso_local global i32 0, align 4
@WACOM_HID_SP_BUTTON = common dso_local global i32 0, align 4
@WACOM_HID_SP_DIGITIZER = common dso_local global i32 0, align 4
@WACOM_HID_SP_DIGITIZERINFO = common dso_local global i32 0, align 4
@WACOM_HID_WD_SENSE = common dso_local global i32 0, align 4
@WACOM_HID_WD_SERIALHI = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOOLTYPE = common dso_local global i32 0, align 4
@WACOM_HID_WD_DISTANCE = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOUCHSTRIP = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOUCHSTRIP2 = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOUCHRING = common dso_local global i32 0, align 4
@WACOM_HID_WD_TOUCHRINGSTATUS = common dso_local global i32 0, align 4
@WACOM_HID_WD_REPORT_VALID = common dso_local global i32 0, align 4
@HID_UP_UNDEFINED = common dso_local global i32 0, align 4
@HID_UP_DIGITIZER = common dso_local global i32 0, align 4
@WACOM_HID_UP_WACOMTOUCH = common dso_local global i32 0, align 4
@WACOM_HID_WT_REPORT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_equivalent_usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @HID_USAGE_PAGE, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @WACOM_HID_UP_WACOMDIGITIZER, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %82

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 65280
  %16 = shl i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @WACOM_HID_SP_PAD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %70, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WACOM_HID_SP_BUTTON, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %70, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WACOM_HID_SP_DIGITIZER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %70, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @WACOM_HID_SP_DIGITIZERINFO, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @WACOM_HID_WD_SENSE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %70, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @WACOM_HID_WD_SERIALHI, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %70, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @WACOM_HID_WD_TOOLTYPE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @WACOM_HID_WD_DISTANCE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @WACOM_HID_WD_TOUCHSTRIP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @WACOM_HID_WD_TOUCHSTRIP2, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @WACOM_HID_WD_TOUCHRING, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @WACOM_HID_WD_TOUCHRINGSTATUS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @WACOM_HID_WD_REPORT_VALID, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %13
  %71 = load i32, i32* %3, align 4
  store i32 %71, i32* %2, align 4
  br label %111

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @HID_UP_UNDEFINED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @HID_UP_DIGITIZER, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %2, align 4
  br label %111

82:                                               ; preds = %1
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @HID_USAGE_PAGE, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @WACOM_HID_UP_WACOMTOUCH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, 65280
  %91 = shl i32 %90, 8
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, 255
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @WACOM_HID_WT_REPORT_VALID, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %3, align 4
  store i32 %98, i32* %2, align 4
  br label %111

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @HID_UP_UNDEFINED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @WACOM_HID_SP_DIGITIZER, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %106, %107
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %82
  %110 = load i32, i32* %3, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %105, %97, %78, %70
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
