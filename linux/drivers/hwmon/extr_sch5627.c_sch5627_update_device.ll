; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sch5627_data = type { i32, i32, i32*, i32*, i32*, i32, i8*, i32, i8* }
%struct.device = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@SCH5627_REG_CTRL = common dso_local global i32 0, align 4
@SCH5627_NO_TEMPS = common dso_local global i32 0, align 4
@SCH5627_REG_TEMP_MSB = common dso_local global i32* null, align 8
@SCH5627_REG_TEMP_LSN = common dso_local global i32* null, align 8
@SCH5627_REG_TEMP_HIGH_NIBBLE = common dso_local global i32* null, align 8
@SCH5627_NO_FANS = common dso_local global i32 0, align 4
@SCH5627_REG_FAN = common dso_local global i32* null, align 8
@SCH5627_NO_IN = common dso_local global i32 0, align 4
@SCH5627_REG_IN_MSB = common dso_local global i32* null, align 8
@SCH5627_REG_IN_LSN = common dso_local global i32* null, align 8
@SCH5627_REG_IN_HIGH_NIBBLE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sch5627_data* (%struct.device*)* @sch5627_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sch5627_data* @sch5627_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sch5627_data*, align 8
  %4 = alloca %struct.sch5627_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.sch5627_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.sch5627_data* %8, %struct.sch5627_data** %3, align 8
  %9 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  store %struct.sch5627_data* %9, %struct.sch5627_data** %4, align 8
  %10 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %11 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i8*, i8** @jiffies, align 8
  %14 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %15 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %14, i32 0, i32 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 300, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %16, i64 %19
  %21 = call i64 @time_after(i8* %13, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %25 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SCH5627_REG_CTRL, align 4
  %28 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %29 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, 16
  %32 = call i32 @sch56xx_write_virtual_reg(i32 %26, i32 %27, i32 %31)
  %33 = load i8*, i8** @jiffies, align 8
  %34 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %35 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %23, %1
  %37 = load i8*, i8** @jiffies, align 8
  %38 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %39 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %38, i32 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @HZ, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = call i64 @time_after(i8* %37, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %48 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %179, label %51

51:                                               ; preds = %46, %36
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SCH5627_NO_TEMPS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %58 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** @SCH5627_REG_TEMP_MSB, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @SCH5627_REG_TEMP_LSN, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @SCH5627_REG_TEMP_HIGH_NIBBLE, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sch56xx_read_virtual_reg12(i32 %59, i32 %64, i32 %69, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.sch5627_data* @ERR_PTR(i32 %82)
  store %struct.sch5627_data* %83, %struct.sch5627_data** %4, align 8
  br label %180

84:                                               ; preds = %56
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %87 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %52

95:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %126, %95
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SCH5627_NO_FANS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %102 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** @SCH5627_REG_FAN, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @sch56xx_read_virtual_reg16(i32 %103, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %100
  %116 = load i32, i32* %6, align 4
  %117 = call %struct.sch5627_data* @ERR_PTR(i32 %116)
  store %struct.sch5627_data* %117, %struct.sch5627_data** %4, align 8
  br label %180

118:                                              ; preds = %100
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %121 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %96

129:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %170, %129
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @SCH5627_NO_IN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %173

134:                                              ; preds = %130
  %135 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %136 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** @SCH5627_REG_IN_MSB, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** @SCH5627_REG_IN_LSN, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** @SCH5627_REG_IN_HIGH_NIBBLE, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sch56xx_read_virtual_reg12(i32 %137, i32 %142, i32 %147, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %134
  %160 = load i32, i32* %6, align 4
  %161 = call %struct.sch5627_data* @ERR_PTR(i32 %160)
  store %struct.sch5627_data* %161, %struct.sch5627_data** %4, align 8
  br label %180

162:                                              ; preds = %134
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %165 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %163, i32* %169, align 4
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %130

173:                                              ; preds = %130
  %174 = load i8*, i8** @jiffies, align 8
  %175 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %176 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %175, i32 0, i32 6
  store i8* %174, i8** %176, align 8
  %177 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %178 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %173, %46
  br label %180

180:                                              ; preds = %179, %159, %115, %81
  %181 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %182 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %181, i32 0, i32 5
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.sch5627_data*, %struct.sch5627_data** %4, align 8
  ret %struct.sch5627_data* %184
}

declare dso_local %struct.sch5627_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @sch56xx_write_virtual_reg(i32, i32, i32) #1

declare dso_local i32 @sch56xx_read_virtual_reg12(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sch5627_data* @ERR_PTR(i32) #1

declare dso_local i32 @sch56xx_read_virtual_reg16(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
