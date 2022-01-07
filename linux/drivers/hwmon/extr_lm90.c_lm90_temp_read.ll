; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_temp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_temp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm90_data = type { i32, i32 }

@lm90_temp_index = common dso_local global i32* null, align 8
@lm90_min_alarm_bits = common dso_local global i32* null, align 8
@lm90_max_alarm_bits = common dso_local global i32* null, align 8
@lm90_crit_alarm_bits = common dso_local global i32* null, align 8
@lm90_emergency_alarm_bits = common dso_local global i32* null, align 8
@lm90_fault_bits = common dso_local global i32* null, align 8
@lm90_temp_min_index = common dso_local global i32* null, align 8
@lm90_temp_max_index = common dso_local global i32* null, align 8
@lm90_temp_crit_index = common dso_local global i32* null, align 8
@lm90_temp_emerg_index = common dso_local global i32* null, align 8
@REMOTE_OFFSET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @lm90_temp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_temp_read(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.lm90_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.lm90_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.lm90_data* %13, %struct.lm90_data** %10, align 8
  %14 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %15 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @lm90_update_device(%struct.device* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %20 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %191

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %187 [
    i32 133, label %28
    i32 129, label %37
    i32 131, label %50
    i32 139, label %63
    i32 136, label %76
    i32 134, label %89
    i32 130, label %102
    i32 132, label %124
    i32 140, label %146
    i32 138, label %155
    i32 137, label %164
    i32 135, label %173
    i32 128, label %182
  ]

28:                                               ; preds = %26
  %29 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %30 = load i32*, i32** @lm90_temp_index, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @lm90_get_temp11(%struct.lm90_data* %29, i32 %34)
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %190

37:                                               ; preds = %26
  %38 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %39 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @lm90_min_alarm_bits, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %40, %45
  %47 = and i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  br label %190

50:                                               ; preds = %26
  %51 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %52 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @lm90_max_alarm_bits, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %53, %58
  %60 = and i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %190

63:                                               ; preds = %26
  %64 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %65 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @lm90_crit_alarm_bits, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %66, %71
  %73 = and i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  br label %190

76:                                               ; preds = %26
  %77 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %78 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** @lm90_emergency_alarm_bits, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %79, %84
  %86 = and i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  br label %190

89:                                               ; preds = %26
  %90 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %91 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @lm90_fault_bits, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %92, %97
  %99 = and i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  br label %190

102:                                              ; preds = %26
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %107 = load i32*, i32** @lm90_temp_min_index, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @lm90_get_temp8(%struct.lm90_data* %106, i32 %111)
  %113 = load i64*, i64** %9, align 8
  store i64 %112, i64* %113, align 8
  br label %123

114:                                              ; preds = %102
  %115 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %116 = load i32*, i32** @lm90_temp_min_index, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @lm90_get_temp11(%struct.lm90_data* %115, i32 %120)
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %114, %105
  br label %190

124:                                              ; preds = %26
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %129 = load i32*, i32** @lm90_temp_max_index, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @lm90_get_temp8(%struct.lm90_data* %128, i32 %133)
  %135 = load i64*, i64** %9, align 8
  store i64 %134, i64* %135, align 8
  br label %145

136:                                              ; preds = %124
  %137 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %138 = load i32*, i32** @lm90_temp_max_index, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @lm90_get_temp11(%struct.lm90_data* %137, i32 %142)
  %144 = load i64*, i64** %9, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %136, %127
  br label %190

146:                                              ; preds = %26
  %147 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %148 = load i32*, i32** @lm90_temp_crit_index, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @lm90_get_temp8(%struct.lm90_data* %147, i32 %152)
  %154 = load i64*, i64** %9, align 8
  store i64 %153, i64* %154, align 8
  br label %190

155:                                              ; preds = %26
  %156 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %157 = load i32*, i32** @lm90_temp_crit_index, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @lm90_get_temphyst(%struct.lm90_data* %156, i32 %161)
  %163 = load i64*, i64** %9, align 8
  store i64 %162, i64* %163, align 8
  br label %190

164:                                              ; preds = %26
  %165 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %166 = load i32*, i32** @lm90_temp_emerg_index, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @lm90_get_temp8(%struct.lm90_data* %165, i32 %170)
  %172 = load i64*, i64** %9, align 8
  store i64 %171, i64* %172, align 8
  br label %190

173:                                              ; preds = %26
  %174 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %175 = load i32*, i32** @lm90_temp_emerg_index, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @lm90_get_temphyst(%struct.lm90_data* %174, i32 %179)
  %181 = load i64*, i64** %9, align 8
  store i64 %180, i64* %181, align 8
  br label %190

182:                                              ; preds = %26
  %183 = load %struct.lm90_data*, %struct.lm90_data** %10, align 8
  %184 = load i32, i32* @REMOTE_OFFSET, align 4
  %185 = call i64 @lm90_get_temp11(%struct.lm90_data* %183, i32 %184)
  %186 = load i64*, i64** %9, align 8
  store i64 %185, i64* %186, align 8
  br label %190

187:                                              ; preds = %26
  %188 = load i32, i32* @EOPNOTSUPP, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %191

190:                                              ; preds = %182, %173, %164, %155, %146, %145, %123, %89, %76, %63, %50, %37, %28
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %187, %24
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.lm90_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm90_update_device(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @lm90_get_temp11(%struct.lm90_data*, i32) #1

declare dso_local i64 @lm90_get_temp8(%struct.lm90_data*, i32) #1

declare dso_local i64 @lm90_get_temphyst(%struct.lm90_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
