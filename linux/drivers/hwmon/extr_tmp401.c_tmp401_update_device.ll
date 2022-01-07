; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp401_data = type { i64, i32, i64, i32*, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@tmp432 = common dso_local global i64 0, align 8
@TMP401_STATUS = common dso_local global i32 0, align 4
@TMP401_STATUS_REMOTE_OPEN = common dso_local global i32 0, align 4
@TMP401_STATUS_REMOTE_LOW = common dso_local global i32 0, align 4
@TMP401_STATUS_LOCAL_LOW = common dso_local global i32 0, align 4
@TMP401_STATUS_REMOTE_HIGH = common dso_local global i32 0, align 4
@TMP401_STATUS_LOCAL_HIGH = common dso_local global i32 0, align 4
@TMP401_STATUS_LOCAL_CRIT = common dso_local global i32 0, align 4
@TMP401_STATUS_REMOTE_CRIT = common dso_local global i32 0, align 4
@TMP432_STATUS_REG = common dso_local global i32* null, align 8
@TMP401_CONFIG_READ = common dso_local global i32 0, align 4
@TMP401_TEMP_CRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tmp401_data* (%struct.device*)* @tmp401_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tmp401_data* @tmp401_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tmp401_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tmp401_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.tmp401_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.tmp401_data* %10, %struct.tmp401_data** %3, align 8
  %11 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %12 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %11, i32 0, i32 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  store %struct.tmp401_data* %14, %struct.tmp401_data** %5, align 8
  %15 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %16 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %15, i32 0, i32 6
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %19 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %22 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @msecs_to_jiffies(i32 %23)
  %25 = add i64 %20, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @time_after(i64 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %32 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %166, label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %37 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @tmp432, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @TMP401_STATUS, align 4
  %44 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.tmp401_data* @ERR_PTR(i32 %48)
  store %struct.tmp401_data* %49, %struct.tmp401_data** %5, align 8
  br label %167

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TMP401_STATUS_REMOTE_OPEN, align 4
  %53 = and i32 %51, %52
  %54 = ashr i32 %53, 1
  %55 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %56 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TMP401_STATUS_REMOTE_LOW, align 4
  %61 = and i32 %59, %60
  %62 = ashr i32 %61, 2
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TMP401_STATUS_LOCAL_LOW, align 4
  %65 = and i32 %63, %64
  %66 = ashr i32 %65, 5
  %67 = or i32 %62, %66
  %68 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %69 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TMP401_STATUS_REMOTE_HIGH, align 4
  %74 = and i32 %72, %73
  %75 = ashr i32 %74, 3
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @TMP401_STATUS_LOCAL_HIGH, align 4
  %78 = and i32 %76, %77
  %79 = ashr i32 %78, 6
  %80 = or i32 %75, %79
  %81 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %82 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @TMP401_STATUS_LOCAL_CRIT, align 4
  %87 = load i32, i32* @TMP401_STATUS_REMOTE_CRIT, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %91 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %89, i32* %93, align 4
  br label %127

94:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %123, %94
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %98 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @ARRAY_SIZE(i32* %99)
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %95
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load i32*, i32** @TMP432_STATUS_REG, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %103, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %102
  %113 = load i32, i32* %7, align 4
  %114 = call %struct.tmp401_data* @ERR_PTR(i32 %113)
  store %struct.tmp401_data* %114, %struct.tmp401_data** %5, align 8
  br label %167

115:                                              ; preds = %102
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %118 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %95

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %126, %50
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = load i32, i32* @TMP401_CONFIG_READ, align 4
  %130 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %128, i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = call %struct.tmp401_data* @ERR_PTR(i32 %134)
  store %struct.tmp401_data* %135, %struct.tmp401_data** %5, align 8
  br label %167

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %139 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %142 = call i32 @tmp401_update_device_reg16(%struct.i2c_client* %140, %struct.tmp401_data* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load i32, i32* %7, align 4
  %147 = call %struct.tmp401_data* @ERR_PTR(i32 %146)
  store %struct.tmp401_data* %147, %struct.tmp401_data** %5, align 8
  br label %167

148:                                              ; preds = %136
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = load i32, i32* @TMP401_TEMP_CRIT_HYST, align 4
  %151 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  %156 = call %struct.tmp401_data* @ERR_PTR(i32 %155)
  store %struct.tmp401_data* %156, %struct.tmp401_data** %5, align 8
  br label %167

157:                                              ; preds = %148
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %160 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load i64, i64* @jiffies, align 8
  %162 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %163 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %165 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %164, i32 0, i32 1
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %157, %30
  br label %167

167:                                              ; preds = %166, %154, %145, %133, %112, %47
  %168 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %169 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %168, i32 0, i32 6
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.tmp401_data*, %struct.tmp401_data** %5, align 8
  ret %struct.tmp401_data* %171
}

declare dso_local %struct.tmp401_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.tmp401_data* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tmp401_update_device_reg16(%struct.i2c_client*, %struct.tmp401_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
