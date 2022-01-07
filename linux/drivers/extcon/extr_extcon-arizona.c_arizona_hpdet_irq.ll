; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_hpdet_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_extcon_info = type { i32, i32, i32, i32, i64, i32, %struct.arizona* }
%struct.arizona = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXTCON_JACK_HEADPHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Spurious HPDET IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@EXTCON_MECHANICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to check cable state: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Ignoring HPDET for removed cable\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ARIZONA_HEADPHONE_DETECT_1 = common dso_local global i32 0, align 4
@ARIZONA_HP_IMPEDANCE_RANGE_MASK = common dso_local global i32 0, align 4
@ARIZONA_HP_POLL = common dso_local global i32 0, align 4
@EXTCON_JACK_LINE_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to report HP/line: %d\0A\00", align 1
@ARIZONA_ACCESSORY_DETECT_MODE_1 = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MASK = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_MODE_MIC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_hpdet_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_hpdet_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arizona_extcon_info*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.arizona_extcon_info*
  store %struct.arizona_extcon_info* %14, %struct.arizona_extcon_info** %6, align 8
  %15 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %16 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %15, i32 0, i32 6
  %17 = load %struct.arizona*, %struct.arizona** %16, align 8
  store %struct.arizona* %17, %struct.arizona** %7, align 8
  %18 = load %struct.arizona*, %struct.arizona** %7, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @EXTCON_JACK_HEADPHONE, align 4
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %24 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %27 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load %struct.arizona*, %struct.arizona** %7, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %36 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @IRQ_NONE, align 4
  store i32 %38, i32* %3, align 4
  br label %173

39:                                               ; preds = %2
  %40 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %41 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EXTCON_MECHANICAL, align 4
  %44 = call i32 @extcon_get_state(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.arizona*, %struct.arizona** %7, align 8
  %49 = getelementptr inbounds %struct.arizona, %struct.arizona* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %168

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.arizona*, %struct.arizona** %7, align 8
  %58 = getelementptr inbounds %struct.arizona, %struct.arizona* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %119

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %64 = call i32 @arizona_hpdet_read(%struct.arizona_extcon_info* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %168

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %119

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.arizona*, %struct.arizona** %7, align 8
  %78 = getelementptr inbounds %struct.arizona, %struct.arizona* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %81 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %82 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @regmap_update_bits(i32 %79, i32 %80, i32 %83, i32 0)
  %85 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %86 = call i32 @arizona_hpdet_do_id(%struct.arizona_extcon_info* %85, i32* %11, i32* %12)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %168

92:                                               ; preds = %75
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %119

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 5000
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @EXTCON_JACK_LINE_OUT, align 4
  store i32 %101, i32* %9, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @EXTCON_JACK_HEADPHONE, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %106 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @extcon_set_state_sync(i32 %107, i32 %108, i32 1)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load %struct.arizona*, %struct.arizona** %7, align 8
  %114 = getelementptr inbounds %struct.arizona, %struct.arizona* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118, %95, %73, %56
  %120 = load %struct.arizona*, %struct.arizona** %7, align 8
  %121 = getelementptr inbounds %struct.arizona, %struct.arizona* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ARIZONA_HEADPHONE_DETECT_1, align 4
  %124 = load i32, i32* @ARIZONA_HP_IMPEDANCE_RANGE_MASK, align 4
  %125 = load i32, i32* @ARIZONA_HP_POLL, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @regmap_update_bits(i32 %122, i32 %123, i32 %126, i32 0)
  %128 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %129 = call i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info* %128, i32 0)
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @gpio_set_value_cansleep(i32 %133, i32 0)
  br label %135

135:                                              ; preds = %132, %119
  %136 = load %struct.arizona*, %struct.arizona** %7, align 8
  %137 = getelementptr inbounds %struct.arizona, %struct.arizona* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ARIZONA_ACCESSORY_DETECT_MODE_1, align 4
  %140 = load i32, i32* @ARIZONA_ACCDET_MODE_MASK, align 4
  %141 = load i32, i32* @ARIZONA_ACCDET_MODE_MIC, align 4
  %142 = call i32 @regmap_update_bits(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %135
  %146 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %147 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145, %135
  %151 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %152 = call i32 @arizona_start_mic(%struct.arizona_extcon_info* %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %155 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %160 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @pm_runtime_put_autosuspend(i32 %161)
  %163 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %164 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %167 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %91, %69, %47
  %169 = load %struct.arizona_extcon_info*, %struct.arizona_extcon_info** %6, align 8
  %170 = getelementptr inbounds %struct.arizona_extcon_info, %struct.arizona_extcon_info* %169, i32 0, i32 2
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %30
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @extcon_get_state(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @arizona_hpdet_read(%struct.arizona_extcon_info*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @arizona_hpdet_do_id(%struct.arizona_extcon_info*, i32*, i32*) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @arizona_extcon_hp_clamp(%struct.arizona_extcon_info*, i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @arizona_start_mic(%struct.arizona_extcon_info*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
