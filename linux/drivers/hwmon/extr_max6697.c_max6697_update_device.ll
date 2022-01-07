; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6697_data = type { i32, i32**, i32, i32, i64, %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX6697_REG_TEMP_EXT = common dso_local global i32* null, align 8
@MAX6697_TEMP_EXT = common dso_local global i64 0, align 8
@MAX6697_REG_TEMP = common dso_local global i32* null, align 8
@MAX6697_TEMP_INPUT = common dso_local global i64 0, align 8
@MAX6697_REG_MAX = common dso_local global i32* null, align 8
@MAX6697_TEMP_MAX = common dso_local global i64 0, align 8
@MAX6697_REG_CRIT = common dso_local global i32* null, align 8
@MAX6697_TEMP_CRIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max6697_data* (%struct.device*)* @max6697_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max6697_data* @max6697_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.max6697_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.max6697_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.max6697_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.max6697_data* %10, %struct.max6697_data** %3, align 8
  %11 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %12 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %11, i32 0, i32 7
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  store %struct.max6697_data* %14, %struct.max6697_data** %5, align 8
  %15 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %16 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %19 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %25 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %28 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @msecs_to_jiffies(i32 %29)
  %31 = add nsw i64 %26, %30
  %32 = call i32 @time_after(i64 %23, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %208

35:                                               ; preds = %22, %1
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %171, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %39 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %174

44:                                               ; preds = %36
  %45 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %46 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %44
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32*, i32** @MAX6697_REG_TEMP_EXT, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.max6697_data* @ERR_PTR(i32 %68)
  store %struct.max6697_data* %69, %struct.max6697_data** %5, align 8
  br label %208

70:                                               ; preds = %54
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %73 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @MAX6697_TEMP_EXT, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %71, i32* %80, align 4
  br label %81

81:                                               ; preds = %70, %44
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load i32*, i32** @MAX6697_REG_TEMP, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %81
  %95 = load i32, i32* %6, align 4
  %96 = call %struct.max6697_data* @ERR_PTR(i32 %95)
  store %struct.max6697_data* %96, %struct.max6697_data** %5, align 8
  br label %208

97:                                               ; preds = %81
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %100 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @MAX6697_TEMP_INPUT, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %98, i32* %107, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load i32*, i32** @MAX6697_REG_MAX, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %108, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load i32, i32* %6, align 4
  %122 = call %struct.max6697_data* @ERR_PTR(i32 %121)
  store %struct.max6697_data* %122, %struct.max6697_data** %5, align 8
  br label %208

123:                                              ; preds = %97
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %126 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @MAX6697_TEMP_MAX, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %124, i32* %133, align 4
  %134 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %135 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %134, i32 0, i32 5
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 1, %139
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %170

143:                                              ; preds = %123
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = load i32*, i32** @MAX6697_REG_CRIT, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %144, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i32, i32* %6, align 4
  %158 = call %struct.max6697_data* @ERR_PTR(i32 %157)
  store %struct.max6697_data* %158, %struct.max6697_data** %5, align 8
  br label %208

159:                                              ; preds = %143
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %162 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %161, i32 0, i32 1
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @MAX6697_TEMP_CRIT, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %160, i32* %169, align 4
  br label %170

170:                                              ; preds = %159, %123
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %36

174:                                              ; preds = %36
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %196, %174
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %199

178:                                              ; preds = %175
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @MAX6697_REG_STAT(i32 %180)
  %182 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %179, i32 %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %178
  %189 = load i32, i32* %6, align 4
  %190 = call %struct.max6697_data* @ERR_PTR(i32 %189)
  store %struct.max6697_data* %190, %struct.max6697_data** %5, align 8
  br label %208

191:                                              ; preds = %178
  %192 = load i32, i32* %8, align 4
  %193 = shl i32 %192, 8
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %175

199:                                              ; preds = %175
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %202 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i64, i64* @jiffies, align 8
  %204 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %205 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %204, i32 0, i32 4
  store i64 %203, i64* %205, align 8
  %206 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %207 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  br label %208

208:                                              ; preds = %199, %188, %156, %120, %94, %67, %34
  %209 = load %struct.max6697_data*, %struct.max6697_data** %3, align 8
  %210 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %209, i32 0, i32 3
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load %struct.max6697_data*, %struct.max6697_data** %5, align 8
  ret %struct.max6697_data* %212
}

declare dso_local %struct.max6697_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.max6697_data* @ERR_PTR(i32) #1

declare dso_local i32 @MAX6697_REG_STAT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
