; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_chg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77843.c_max77843_muic_chg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77843_muic_info = type { i32, i32, i32 }

@MAX77843_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@MAX77843_MUIC_CONTROL1_SW_USB = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@MAX77843_MUIC_CONTROL1_SW_OPEN = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SLOW = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_FAST = common dso_local global i32 0, align 4
@MAX77843_CABLE_GROUP_ADC_GND = common dso_local global i32 0, align 4
@MAX77843_MUIC_GND_MHL_VB = common dso_local global i32 0, align 4
@MAX77843_MUIC_GND_MHL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77843_muic_info*)* @max77843_muic_chg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_muic_chg_handler(%struct.max77843_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77843_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max77843_muic_info* %0, %struct.max77843_muic_info** %3, align 8
  %8 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %9 = load i32, i32* @MAX77843_CABLE_GROUP_CHG, align 4
  %10 = call i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info* %8, i32 %9, i32* %7)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %12 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %20 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %143 [
    i32 128, label %24
    i32 133, label %46
    i32 135, label %62
    i32 129, label %78
    i32 130, label %94
    i32 132, label %110
    i32 134, label %135
    i32 131, label %142
  ]

24:                                               ; preds = %1
  %25 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %26 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_USB, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %160

33:                                               ; preds = %24
  %34 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %35 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EXTCON_USB, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @extcon_set_state_sync(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %41 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @extcon_set_state_sync(i32 %42, i32 %43, i32 %44)
  br label %159

46:                                               ; preds = %1
  %47 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %48 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %47, i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %160

55:                                               ; preds = %46
  %56 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %57 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @extcon_set_state_sync(i32 %58, i32 %59, i32 %60)
  br label %159

62:                                               ; preds = %1
  %63 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %64 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %160

71:                                               ; preds = %62
  %72 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %73 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @extcon_set_state_sync(i32 %74, i32 %75, i32 %76)
  br label %159

78:                                               ; preds = %1
  %79 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %80 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %79, i32 %80, i32 %81, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %160

87:                                               ; preds = %78
  %88 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %89 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EXTCON_CHG_USB_SLOW, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @extcon_set_state_sync(i32 %90, i32 %91, i32 %92)
  br label %159

94:                                               ; preds = %1
  %95 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %96 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %95, i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %160

103:                                              ; preds = %94
  %104 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %105 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EXTCON_CHG_USB_FAST, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @extcon_set_state_sync(i32 %106, i32 %107, i32 %108)
  br label %159

110:                                              ; preds = %1
  %111 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %112 = load i32, i32* @MAX77843_CABLE_GROUP_ADC_GND, align 4
  %113 = call i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info* %111, i32 %112, i32* %7)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @MAX77843_MUIC_GND_MHL_VB, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %119 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %122 = call i32 @extcon_set_state_sync(i32 %120, i32 %121, i32 1)
  br label %134

123:                                              ; preds = %110
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @MAX77843_MUIC_GND_MHL, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %129 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %132 = call i32 @extcon_set_state_sync(i32 %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %127, %123
  br label %134

134:                                              ; preds = %133, %117
  br label %159

135:                                              ; preds = %1
  %136 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %137 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @extcon_set_state_sync(i32 %138, i32 %139, i32 %140)
  br label %159

142:                                              ; preds = %1
  br label %159

143:                                              ; preds = %1
  %144 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %145 = getelementptr inbounds %struct.max77843_muic_info, %struct.max77843_muic_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %150, i32 %151)
  %153 = load %struct.max77843_muic_info*, %struct.max77843_muic_info** %3, align 8
  %154 = load i32, i32* @MAX77843_MUIC_CONTROL1_SW_OPEN, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @max77843_muic_set_path(%struct.max77843_muic_info* %153, i32 %154, i32 %155, i32 0)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %160

159:                                              ; preds = %142, %135, %134, %103, %87, %71, %55, %33
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %143, %101, %85, %69, %53, %31
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @max77843_muic_get_cable_type(%struct.max77843_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @max77843_muic_set_path(%struct.max77843_muic_info*, i32, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
