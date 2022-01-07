; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83793.c_store_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32*, i64**, i32 }

@scale_in = common dso_local global i32* null, align 8
@scale_in_add = common dso_local global i32* null, align 8
@W83793_REG_IN_LOW_BITS = common dso_local global i32* null, align 8
@W83793_REG_IN = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83793_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.i2c_client* @to_i2c_client(%struct.device* %25)
  store %struct.i2c_client* %26, %struct.i2c_client** %13, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %28 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %27)
  store %struct.w83793_data* %28, %struct.w83793_data** %14, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %5, align 4
  br label %181

35:                                               ; preds = %4
  %36 = load i64, i64* %15, align 8
  %37 = load i32*, i32** @scale_in, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = add i64 %36, %43
  %45 = load i32*, i32** @scale_in, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %44, %50
  store i64 %51, i64* %15, align 8
  %52 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %53 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %81

57:                                               ; preds = %35
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %78

63:                                               ; preds = %60, %57
  %64 = load i32*, i32** @scale_in_add, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @scale_in, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %68, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %63, %60
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @clamp_val(i64 %79, i32 0, i32 255)
  store i64 %80, i64* %15, align 8
  br label %142

81:                                               ; preds = %35
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @clamp_val(i64 %82, i32 0, i32 1023)
  store i64 %83, i64* %15, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %85 = load i32*, i32** @W83793_REG_IN_LOW_BITS, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @w83793_read_value(%struct.i2c_client* %84, i32 %89)
  %91 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %92 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 2, %97
  %99 = shl i32 3, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %102 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %100
  store i32 %108, i32* %106, align 4
  %109 = load i64, i64* %15, align 8
  %110 = and i64 %109, 3
  %111 = load i32, i32* %12, align 4
  %112 = mul nsw i32 2, %111
  %113 = zext i32 %112 to i64
  %114 = shl i64 %110, %113
  %115 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %116 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = or i64 %122, %114
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %126 = load i32*, i32** @W83793_REG_IN_LOW_BITS, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %132 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 @w83793_write_value(%struct.i2c_client* %125, i32 %130, i64 %138)
  %140 = load i64, i64* %15, align 8
  %141 = lshr i64 %140, 2
  store i64 %141, i64* %15, align 8
  br label %142

142:                                              ; preds = %81, %78
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %145 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %144, i32 0, i32 1
  %146 = load i64**, i64*** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64*, i64** %146, i64 %148
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %143, i64* %153, align 8
  %154 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %155 = load i32**, i32*** @W83793_REG_IN, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %165 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %164, i32 0, i32 1
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @w83793_write_value(%struct.i2c_client* %154, i32 %163, i64 %174)
  %176 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %177 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %176, i32 0, i32 2
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i64, i64* %9, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %142, %33
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
