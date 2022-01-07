; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via686a_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i64 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@VIA686A_REG_TEMP = common dso_local global i32* null, align 8
@VIA686A_REG_TEMP_OVER = common dso_local global i32* null, align 8
@VIA686A_REG_TEMP_HYST = common dso_local global i32* null, align 8
@VIA686A_REG_TEMP_LOW1 = common dso_local global i32 0, align 4
@VIA686A_REG_TEMP_LOW23 = common dso_local global i32 0, align 4
@VIA686A_REG_ALARM1 = common dso_local global i32 0, align 4
@VIA686A_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.via686a_data* (%struct.device*)* @via686a_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.via686a_data* @via686a_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.via686a_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.via686a_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.via686a_data* %6, %struct.via686a_data** %3, align 8
  %7 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %8 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %7, i32 0, i32 10
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %12 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %10, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %25 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %195, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @VIA686A_REG_IN(i32 %34)
  %36 = call i32 @via686a_read_value(%struct.via686a_data* %33, i32 %35)
  %37 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %38 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @VIA686A_REG_IN_MIN(i32 %44)
  %46 = call i32 @via686a_read_value(%struct.via686a_data* %43, i32 %45)
  %47 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %48 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @VIA686A_REG_IN_MAX(i32 %54)
  %56 = call i32 @via686a_read_value(%struct.via686a_data* %53, i32 %55)
  %57 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %58 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %32
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %29

66:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp sle i32 %68, 2
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @VIA686A_REG_FAN(i32 %72)
  %74 = call i32 @via686a_read_value(%struct.via686a_data* %71, i32 %73)
  %75 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %76 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @VIA686A_REG_FAN_MIN(i32 %83)
  %85 = call i32 @via686a_read_value(%struct.via686a_data* %82, i32 %84)
  %86 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %87 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %70
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %67

96:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %141, %96
  %98 = load i32, i32* %4, align 4
  %99 = icmp sle i32 %98, 2
  br i1 %99, label %100, label %144

100:                                              ; preds = %97
  %101 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %102 = load i32*, i32** @VIA686A_REG_TEMP, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @via686a_read_value(%struct.via686a_data* %101, i32 %106)
  %108 = shl i32 %107, 2
  %109 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %110 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  %115 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %116 = load i32*, i32** @VIA686A_REG_TEMP_OVER, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @via686a_read_value(%struct.via686a_data* %115, i32 %120)
  %122 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %123 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %122, i32 0, i32 7
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %129 = load i32*, i32** @VIA686A_REG_TEMP_HYST, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @via686a_read_value(%struct.via686a_data* %128, i32 %133)
  %135 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %136 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %135, i32 0, i32 8
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %100
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %97

144:                                              ; preds = %97
  %145 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %146 = load i32, i32* @VIA686A_REG_TEMP_LOW1, align 4
  %147 = call i32 @via686a_read_value(%struct.via686a_data* %145, i32 %146)
  %148 = and i32 %147, 192
  %149 = ashr i32 %148, 6
  %150 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %151 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %149
  store i32 %155, i32* %153, align 4
  %156 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %157 = load i32, i32* @VIA686A_REG_TEMP_LOW23, align 4
  %158 = call i32 @via686a_read_value(%struct.via686a_data* %156, i32 %157)
  %159 = and i32 %158, 48
  %160 = ashr i32 %159, 4
  %161 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %162 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  %167 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %168 = load i32, i32* @VIA686A_REG_TEMP_LOW23, align 4
  %169 = call i32 @via686a_read_value(%struct.via686a_data* %167, i32 %168)
  %170 = and i32 %169, 192
  %171 = ashr i32 %170, 6
  %172 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %173 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  %178 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %179 = call i32 @via686a_update_fan_div(%struct.via686a_data* %178)
  %180 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %181 = load i32, i32* @VIA686A_REG_ALARM1, align 4
  %182 = call i32 @via686a_read_value(%struct.via686a_data* %180, i32 %181)
  %183 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %184 = load i32, i32* @VIA686A_REG_ALARM2, align 4
  %185 = call i32 @via686a_read_value(%struct.via686a_data* %183, i32 %184)
  %186 = shl i32 %185, 8
  %187 = or i32 %182, %186
  %188 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %189 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 8
  %190 = load i64, i64* @jiffies, align 8
  %191 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %192 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %191, i32 0, i32 11
  store i64 %190, i64* %192, align 8
  %193 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %194 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %144, %23
  %196 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  %197 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %196, i32 0, i32 10
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load %struct.via686a_data*, %struct.via686a_data** %3, align 8
  ret %struct.via686a_data* %199
}

declare dso_local %struct.via686a_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @via686a_read_value(%struct.via686a_data*, i32) #1

declare dso_local i32 @VIA686A_REG_IN(i32) #1

declare dso_local i32 @VIA686A_REG_IN_MIN(i32) #1

declare dso_local i32 @VIA686A_REG_IN_MAX(i32) #1

declare dso_local i32 @VIA686A_REG_FAN(i32) #1

declare dso_local i32 @VIA686A_REG_FAN_MIN(i32) #1

declare dso_local i32 @via686a_update_fan_div(%struct.via686a_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
