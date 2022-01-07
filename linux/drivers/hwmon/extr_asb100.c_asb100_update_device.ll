; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asb100.c_asb100_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asb100_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i64, i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"starting device update...\0A\00", align 1
@ASB100_REG_VID_FANDIV = common dso_local global i32 0, align 4
@ASB100_REG_CHIPID = common dso_local global i32 0, align 4
@ASB100_REG_PIN = common dso_local global i32 0, align 4
@ASB100_REG_PWM1 = common dso_local global i32 0, align 4
@ASB100_REG_ALARM1 = common dso_local global i32 0, align 4
@ASB100_REG_ALARM2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"... device update complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asb100_data* (%struct.device*)* @asb100_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asb100_data* @asb100_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.asb100_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.asb100_data* %9, %struct.asb100_data** %4, align 8
  %10 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %11 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %10, i32 0, i32 12
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %15 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @time_after(i64 %13, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %28 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %204, label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %69, %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 7
  br i1 %37, label %38, label %72

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ASB100_REG_IN(i32 %40)
  %42 = call i32 @asb100_read_value(%struct.i2c_client* %39, i32 %41)
  %43 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %44 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ASB100_REG_IN_MIN(i32 %50)
  %52 = call i32 @asb100_read_value(%struct.i2c_client* %49, i32 %51)
  %53 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %54 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ASB100_REG_IN_MAX(i32 %60)
  %62 = call i32 @asb100_read_value(%struct.i2c_client* %59, i32 %61)
  %63 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %64 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %38
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %35

72:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 3
  br i1 %75, label %76, label %100

76:                                               ; preds = %73
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ASB100_REG_FAN(i32 %78)
  %80 = call i32 @asb100_read_value(%struct.i2c_client* %77, i32 %79)
  %81 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %82 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ASB100_REG_FAN_MIN(i32 %88)
  %90 = call i32 @asb100_read_value(%struct.i2c_client* %87, i32 %89)
  %91 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %92 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %76
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %73

100:                                              ; preds = %73
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %138, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp sle i32 %102, 4
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ASB100_REG_TEMP(i32 %106)
  %108 = call i32 @asb100_read_value(%struct.i2c_client* %105, i32 %107)
  %109 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %110 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %108, i32* %115, align 4
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @ASB100_REG_TEMP_MAX(i32 %117)
  %119 = call i32 @asb100_read_value(%struct.i2c_client* %116, i32 %118)
  %120 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %121 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %120, i32 0, i32 7
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @ASB100_REG_TEMP_HYST(i32 %128)
  %130 = call i32 @asb100_read_value(%struct.i2c_client* %127, i32 %129)
  %131 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %132 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  br label %138

138:                                              ; preds = %104
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %101

141:                                              ; preds = %101
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %144 = call i32 @asb100_read_value(%struct.i2c_client* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, 15
  %147 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %148 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %147, i32 0, i32 9
  store i32 %146, i32* %148, align 8
  %149 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %150 = load i32, i32* @ASB100_REG_CHIPID, align 4
  %151 = call i32 @asb100_read_value(%struct.i2c_client* %149, i32 %150)
  %152 = and i32 %151, 1
  %153 = shl i32 %152, 4
  %154 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %155 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %5, align 4
  %159 = ashr i32 %158, 4
  %160 = and i32 %159, 3
  %161 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %162 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %161, i32 0, i32 10
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %5, align 4
  %166 = ashr i32 %165, 6
  %167 = and i32 %166, 3
  %168 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %169 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %168, i32 0, i32 10
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %167, i32* %171, align 4
  %172 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %173 = load i32, i32* @ASB100_REG_PIN, align 4
  %174 = call i32 @asb100_read_value(%struct.i2c_client* %172, i32 %173)
  %175 = ashr i32 %174, 6
  %176 = and i32 %175, 3
  %177 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %178 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %177, i32 0, i32 10
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  store i32 %176, i32* %180, align 4
  %181 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %182 = load i32, i32* @ASB100_REG_PWM1, align 4
  %183 = call i32 @asb100_read_value(%struct.i2c_client* %181, i32 %182)
  %184 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %185 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 8
  %186 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %187 = load i32, i32* @ASB100_REG_ALARM1, align 4
  %188 = call i32 @asb100_read_value(%struct.i2c_client* %186, i32 %187)
  %189 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %190 = load i32, i32* @ASB100_REG_ALARM2, align 4
  %191 = call i32 @asb100_read_value(%struct.i2c_client* %189, i32 %190)
  %192 = shl i32 %191, 8
  %193 = add nsw i32 %188, %192
  %194 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %195 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %194, i32 0, i32 14
  store i32 %193, i32* %195, align 8
  %196 = load i64, i64* @jiffies, align 8
  %197 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %198 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %197, i32 0, i32 13
  store i64 %196, i64* %198, align 8
  %199 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %200 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %202 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %201, i32 0, i32 0
  %203 = call i32 @dev_dbg(i32* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %141, %26
  %205 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  %206 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %205, i32 0, i32 12
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load %struct.asb100_data*, %struct.asb100_data** %4, align 8
  ret %struct.asb100_data* %208
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ASB100_REG_IN(i32) #1

declare dso_local i32 @ASB100_REG_IN_MIN(i32) #1

declare dso_local i32 @ASB100_REG_IN_MAX(i32) #1

declare dso_local i32 @ASB100_REG_FAN(i32) #1

declare dso_local i32 @ASB100_REG_FAN_MIN(i32) #1

declare dso_local i32 @ASB100_REG_TEMP(i32) #1

declare dso_local i32 @ASB100_REG_TEMP_MAX(i32) #1

declare dso_local i32 @ASB100_REG_TEMP_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
