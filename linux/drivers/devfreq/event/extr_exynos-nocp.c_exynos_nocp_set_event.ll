; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_set_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_exynos-nocp.c_exynos_nocp_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32 }
%struct.exynos_nocp = type { i32, i32 }

@NOCP_MAIN_CTL = common dso_local global i32 0, align 4
@NOCP_MAIN_CTL_STATEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to disable the NoC probe device\0A\00", align 1
@NOCP_STAT_PERIOD = common dso_local global i32 0, align 4
@NOCP_COUNTERS_0_SRC = common dso_local global i32 0, align 4
@NOCP_CNT_SRC_INTEVENT_MASK = common dso_local global i32 0, align 4
@NOCP_CNT_SRC_INTEVENT_BYTE_MASK = common dso_local global i32 0, align 4
@NOCP_COUNTERS_1_SRC = common dso_local global i32 0, align 4
@NOCP_CNT_SRC_INTEVENT_CHAIN_MASK = common dso_local global i32 0, align 4
@NOCP_COUNTERS_2_SRC = common dso_local global i32 0, align 4
@NOCP_CNT_SRC_INTEVENT_CYCLE_MASK = common dso_local global i32 0, align 4
@NOCP_COUNTERS_3_SRC = common dso_local global i32 0, align 4
@NOCP_STAT_ALARM_MIN = common dso_local global i32 0, align 4
@NOCP_STAT_ALARM_MAX = common dso_local global i32 0, align 4
@NOCP_COUNTERS_0_ALARM_MODE = common dso_local global i32 0, align 4
@NOCP_CNT_ALARM_MODE_MASK = common dso_local global i32 0, align 4
@NOCP_CNT_ALARM_MODE_MIN_MAX_MASK = common dso_local global i32 0, align 4
@NOCP_COUNTERS_1_ALARM_MODE = common dso_local global i32 0, align 4
@NOCP_COUNTERS_2_ALARM_MODE = common dso_local global i32 0, align 4
@NOCP_COUNTERS_3_ALARM_MODE = common dso_local global i32 0, align 4
@NOCP_MAIN_CTL_ALARMEN_MASK = common dso_local global i32 0, align 4
@NOCP_CFG_CTL = common dso_local global i32 0, align 4
@NOCP_CFG_CTL_GLOBALEN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to reset NoC probe device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*)* @exynos_nocp_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_nocp_set_event(%struct.devfreq_event_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.exynos_nocp*, align 8
  %5 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  %6 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %7 = call %struct.exynos_nocp* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %6)
  store %struct.exynos_nocp* %7, %struct.exynos_nocp** %4, align 8
  %8 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %9 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NOCP_MAIN_CTL, align 4
  %12 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %13 = call i32 @regmap_update_bits(i32 %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %190

22:                                               ; preds = %1
  %23 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NOCP_STAT_PERIOD, align 4
  %27 = call i32 @regmap_write(i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %175

31:                                               ; preds = %22
  %32 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NOCP_COUNTERS_0_SRC, align 4
  %36 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_MASK, align 4
  %37 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_BYTE_MASK, align 4
  %38 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %175

42:                                               ; preds = %31
  %43 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %44 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NOCP_COUNTERS_1_SRC, align 4
  %47 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_MASK, align 4
  %48 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_CHAIN_MASK, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %175

53:                                               ; preds = %42
  %54 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NOCP_COUNTERS_2_SRC, align 4
  %58 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_MASK, align 4
  %59 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_CYCLE_MASK, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %175

64:                                               ; preds = %53
  %65 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NOCP_COUNTERS_3_SRC, align 4
  %69 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_MASK, align 4
  %70 = load i32, i32* @NOCP_CNT_SRC_INTEVENT_CHAIN_MASK, align 4
  %71 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %175

75:                                               ; preds = %64
  %76 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %77 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NOCP_STAT_ALARM_MIN, align 4
  %80 = call i32 @regmap_write(i32 %78, i32 %79, i32 0)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %175

84:                                               ; preds = %75
  %85 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %86 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NOCP_STAT_ALARM_MAX, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 0)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %175

93:                                               ; preds = %84
  %94 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %95 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NOCP_COUNTERS_0_ALARM_MODE, align 4
  %98 = load i32, i32* @NOCP_CNT_ALARM_MODE_MASK, align 4
  %99 = load i32, i32* @NOCP_CNT_ALARM_MODE_MIN_MAX_MASK, align 4
  %100 = call i32 @regmap_update_bits(i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %175

104:                                              ; preds = %93
  %105 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %106 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NOCP_COUNTERS_1_ALARM_MODE, align 4
  %109 = load i32, i32* @NOCP_CNT_ALARM_MODE_MASK, align 4
  %110 = load i32, i32* @NOCP_CNT_ALARM_MODE_MIN_MAX_MASK, align 4
  %111 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %175

115:                                              ; preds = %104
  %116 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %117 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NOCP_COUNTERS_2_ALARM_MODE, align 4
  %120 = load i32, i32* @NOCP_CNT_ALARM_MODE_MASK, align 4
  %121 = load i32, i32* @NOCP_CNT_ALARM_MODE_MIN_MAX_MASK, align 4
  %122 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %175

126:                                              ; preds = %115
  %127 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %128 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NOCP_COUNTERS_3_ALARM_MODE, align 4
  %131 = load i32, i32* @NOCP_CNT_ALARM_MODE_MASK, align 4
  %132 = load i32, i32* @NOCP_CNT_ALARM_MODE_MIN_MAX_MASK, align 4
  %133 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %175

137:                                              ; preds = %126
  %138 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %139 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @NOCP_MAIN_CTL, align 4
  %142 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %143 = load i32, i32* @NOCP_MAIN_CTL_ALARMEN_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %146 = load i32, i32* @NOCP_MAIN_CTL_ALARMEN_MASK, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @regmap_update_bits(i32 %140, i32 %141, i32 %144, i32 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  br label %175

152:                                              ; preds = %137
  %153 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %154 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NOCP_CFG_CTL, align 4
  %157 = load i32, i32* @NOCP_CFG_CTL_GLOBALEN_MASK, align 4
  %158 = load i32, i32* @NOCP_CFG_CTL_GLOBALEN_MASK, align 4
  %159 = call i32 @regmap_update_bits(i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %175

163:                                              ; preds = %152
  %164 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %165 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NOCP_MAIN_CTL, align 4
  %168 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %169 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %170 = call i32 @regmap_update_bits(i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %175

174:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %190

175:                                              ; preds = %173, %162, %151, %136, %125, %114, %103, %92, %83, %74, %63, %52, %41, %30
  %176 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %177 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @NOCP_MAIN_CTL, align 4
  %180 = load i32, i32* @NOCP_MAIN_CTL_STATEN_MASK, align 4
  %181 = call i32 @regmap_update_bits(i32 %178, i32 %179, i32 %180, i32 0)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load %struct.exynos_nocp*, %struct.exynos_nocp** %4, align 8
  %185 = getelementptr inbounds %struct.exynos_nocp, %struct.exynos_nocp* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %188

188:                                              ; preds = %183, %175
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %174, %16
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.exynos_nocp* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
