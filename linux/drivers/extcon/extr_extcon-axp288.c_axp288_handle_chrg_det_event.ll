; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_handle_chrg_det_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_handle_chrg_det_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_extcon_info = type { i32, i32, i32, i32, i64, i32, i32 }

@AXP288_BC_GLOBAL_REG = common dso_local global i32 0, align 4
@BC_GLOBAL_DET_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't complete the charger detection\0A\00", align 1
@AXP288_BC_DET_STAT_REG = common dso_local global i32 0, align 4
@DET_STAT_MASK = common dso_local global i32 0, align 4
@DET_STAT_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"sdp cable is connected\0A\00", align 1
@EXTCON_CHG_USB_SDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cdp cable is connected\0A\00", align 1
@EXTCON_CHG_USB_CDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"dcp cable is connected\0A\00", align 1
@EXTCON_CHG_USB_DCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"unknown (reserved) bc detect result\0A\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to detect BC Mod\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_extcon_info*)* @axp288_handle_chrg_det_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_handle_chrg_det_event(%struct.axp288_extcon_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp288_extcon_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.axp288_extcon_info* %0, %struct.axp288_extcon_info** %3, align 8
  %10 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %11 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %14 = call i32 @axp288_get_vbus_attach(%struct.axp288_extcon_info* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %20 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AXP288_BC_GLOBAL_REG, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %141

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BC_GLOBAL_DET_STAT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %34 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %141

37:                                               ; preds = %27
  %38 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %39 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AXP288_BC_DET_STAT_REG, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %5)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %141

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DET_STAT_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @DET_STAT_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %71 [
    i32 128, label %53
    i32 130, label %59
    i32 129, label %65
  ]

53:                                               ; preds = %46
  %54 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %55 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %58, i32* %8, align 4
  br label %77

59:                                               ; preds = %46
  %60 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %61 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EXTCON_CHG_USB_CDP, align 4
  store i32 %64, i32* %8, align 4
  br label %77

65:                                               ; preds = %46
  %66 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %67 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EXTCON_CHG_USB_DCP, align 4
  store i32 %70, i32* %8, align 4
  br label %77

71:                                               ; preds = %46
  %72 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %73 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %71, %65, %59, %53
  br label %78

78:                                               ; preds = %77, %17
  %79 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %80 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %83 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @extcon_set_state_sync(i32 %81, i32 %84, i32 0)
  %86 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %87 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %93 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @EXTCON_USB, align 4
  %96 = call i32 @extcon_set_state_sync(i32 %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %91, %78
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %102 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @extcon_set_state_sync(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @EXTCON_CHG_USB_SDP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %100
  %111 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %112 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @EXTCON_USB, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @extcon_set_state_sync(i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %100
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %120 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %97
  %122 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %123 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %128 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %135 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @system_long_wq, align 4
  %137 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %138 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %137, i32 0, i32 3
  %139 = call i32 @queue_work(i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %132, %126, %121
  store i32 0, i32* %2, align 4
  br label %151

141:                                              ; preds = %45, %32, %26
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %3, align 8
  %146 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %140
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @axp288_get_vbus_attach(%struct.axp288_extcon_info*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
