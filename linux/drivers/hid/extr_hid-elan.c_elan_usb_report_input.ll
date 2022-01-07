; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_usb_report_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_usb_report_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_drvdata = type { i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ELAN_SINGLE_FINGER = common dso_local global i32 0, align 4
@ELAN_MAX_FINGERS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@ELAN_MT_FIRST_FINGER = common dso_local global i32 0, align 4
@ELAN_MT_SECOND_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elan_drvdata*, i32*)* @elan_usb_report_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elan_usb_report_input(%struct.elan_drvdata* %0, i32* %1) #0 {
  %3 = alloca %struct.elan_drvdata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.elan_drvdata* %0, %struct.elan_drvdata** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ELAN_SINGLE_FINGER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ELAN_MAX_FINGERS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 3
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @elan_report_mt_slot(%struct.elan_drvdata* %32, i32* %34, i32 %35)
  br label %41

37:                                               ; preds = %22
  %38 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @elan_report_mt_slot(%struct.elan_drvdata* %38, i32* null, i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %47 = load i32, i32* @BTN_LEFT, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1
  %52 = call i32 @input_report_key(%struct.input_dev* %46, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %45, %2
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ELAN_MT_FIRST_FINGER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %61 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @memcpy(i32* %62, i32* %63, i32 8)
  br label %132

65:                                               ; preds = %53
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ELAN_MT_SECOND_FINGER, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %127

71:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  %72 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %73 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ELAN_MT_FIRST_FINGER, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %132

81:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %116, %81
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ELAN_MAX_FINGERS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %82
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 3
  %92 = call i32 @BIT(i32 %91)
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  store i32 1, i32* %7, align 4
  %99 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @elan_report_mt_slot(%struct.elan_drvdata* %99, i32* %101, i32 %102)
  br label %110

104:                                              ; preds = %95
  %105 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @elan_report_mt_slot(%struct.elan_drvdata* %105, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %98
  br label %115

111:                                              ; preds = %86
  %112 = load %struct.elan_drvdata*, %struct.elan_drvdata** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @elan_report_mt_slot(%struct.elan_drvdata* %112, i32* null, i32 %113)
  br label %115

115:                                              ; preds = %111, %110
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %82

119:                                              ; preds = %82
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load i32, i32* @BTN_LEFT, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 1
  %126 = call i32 @input_report_key(%struct.input_dev* %120, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %119, %65
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = call i32 @input_mt_sync_frame(%struct.input_dev* %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %131 = call i32 @input_sync(%struct.input_dev* %130)
  br label %132

132:                                              ; preds = %127, %80, %59
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @elan_report_mt_slot(%struct.elan_drvdata*, i32*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
