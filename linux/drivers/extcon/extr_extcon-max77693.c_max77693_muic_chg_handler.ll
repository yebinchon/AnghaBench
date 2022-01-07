; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_chg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max77693.c_max77693_muic_chg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_muic_info = type { i32, i32, i32, i32 }

@MAX77693_CABLE_GROUP_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"external connector is %s(chg_type:0x%x, prev_chg_type:0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"detached\00", align 1
@MAX77693_CABLE_GROUP_ADC_GND = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@EXTCON_DISP_MHL = common dso_local global i32 0, align 4
@MAX77693_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@EXTCON_DOCK = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_SLOW = common dso_local global i32 0, align 4
@EXTCON_CHG_USB_FAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"failed to detect %s accessory (chg_type:0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_muic_info*)* @max77693_muic_chg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_muic_chg_handler(%struct.max77693_muic_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_muic_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max77693_muic_info* %0, %struct.max77693_muic_info** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %11 = load i32, i32* @MAX77693_CABLE_GROUP_CHG, align 4
  %12 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %10, i32 %11, i32* %7)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %14 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %22 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %153 [
    i32 132, label %26
    i32 135, label %26
    i32 133, label %26
    i32 134, label %131
    i32 137, label %138
    i32 138, label %145
    i32 136, label %152
  ]

26:                                               ; preds = %1, %1, %1
  %27 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %28 = load i32, i32* @MAX77693_CABLE_GROUP_ADC_GND, align 4
  %29 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %27, i32 %28, i32* %8)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %44 [
    i32 129, label %31
    i32 128, label %31
  ]

31:                                               ; preds = %26, %26
  %32 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %33 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @extcon_set_state_sync(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %39 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @extcon_set_state_sync(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %26, %31
  %45 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %46 = load i32, i32* @MAX77693_CABLE_GROUP_ADC, align 4
  %47 = call i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info* %45, i32 %46, i32* %8)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %96 [
    i32 131, label %49
    i32 130, label %72
  ]

49:                                               ; preds = %44
  %50 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %51 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EXTCON_USB, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @extcon_set_state_sync(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %57 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @extcon_set_state_sync(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %49
  %65 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %66 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @EXTCON_DOCK, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @extcon_set_state_sync(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %49
  br label %96

72:                                               ; preds = %44
  %73 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %74 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %75 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %73, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %166

83:                                               ; preds = %72
  %84 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %85 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EXTCON_DOCK, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @extcon_set_state_sync(i32 %86, i32 %87, i32 %88)
  %90 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %91 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @EXTCON_DISP_MHL, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @extcon_set_state_sync(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %44, %83, %71
  %97 = load i32, i32* %4, align 4
  switch i32 %97, label %130 [
    i32 133, label %98
    i32 132, label %99
    i32 135, label %123
  ]

98:                                               ; preds = %96
  br label %130

99:                                               ; preds = %96
  %100 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %101 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %102 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @max77693_muic_set_path(%struct.max77693_muic_info* %100, i32 %103, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %166

110:                                              ; preds = %99
  %111 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %112 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EXTCON_USB, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @extcon_set_state_sync(i32 %113, i32 %114, i32 %115)
  %117 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %118 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @extcon_set_state_sync(i32 %119, i32 %120, i32 %121)
  br label %130

123:                                              ; preds = %96
  %124 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %125 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @extcon_set_state_sync(i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %96, %123, %110, %98
  br label %165

131:                                              ; preds = %1
  %132 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %133 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @extcon_set_state_sync(i32 %134, i32 %135, i32 %136)
  br label %165

138:                                              ; preds = %1
  %139 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %140 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @EXTCON_CHG_USB_SLOW, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @extcon_set_state_sync(i32 %141, i32 %142, i32 %143)
  br label %165

145:                                              ; preds = %1
  %146 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %147 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @EXTCON_CHG_USB_FAST, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @extcon_set_state_sync(i32 %148, i32 %149, i32 %150)
  br label %165

152:                                              ; preds = %1
  br label %165

153:                                              ; preds = %1
  %154 = load %struct.max77693_muic_info*, %struct.max77693_muic_info** %3, align 8
  %155 = getelementptr inbounds %struct.max77693_muic_info, %struct.max77693_muic_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @dev_err(i32 %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %160, i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %166

165:                                              ; preds = %152, %145, %138, %131, %130
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %153, %108, %81
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @max77693_muic_get_cable_type(%struct.max77693_muic_info*, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @max77693_muic_set_path(%struct.max77693_muic_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
