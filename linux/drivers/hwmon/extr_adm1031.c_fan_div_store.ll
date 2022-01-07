; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1031.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1031_data = type { i32*, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1031_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.adm1031_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.adm1031_data* %19, %struct.adm1031_data** %10, align 8
  %20 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %21 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %20, i32 0, i32 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %11, align 8
  %23 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %24 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtol(i8* %27, i32 10, i64* %13)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %5, align 4
  br label %166

33:                                               ; preds = %4
  %34 = load i64, i64* %13, align 8
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %54

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %50

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 255
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i32 [ 64, %44 ], [ %49, %45 ]
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i32 [ 128, %40 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %36
  %55 = phi i32 [ 192, %36 ], [ %53, %52 ]
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 255
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %166

61:                                               ; preds = %54
  %62 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %63 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %62, i32 0, i32 2
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @ADM1031_REG_FAN_DIV(i32 %66)
  %68 = call i8* @adm1031_read_value(%struct.i2c_client* %65, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %71 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ADM1031_REG_FAN_MIN(i32 %77)
  %79 = call i8* @adm1031_read_value(%struct.i2c_client* %76, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %82 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %88 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @FAN_DIV_FROM_REG(i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %97 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 63, %102
  %104 = or i32 %95, %103
  %105 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %106 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %112 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %13, align 8
  %122 = sdiv i64 %120, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %124, 255
  br i1 %125, label %126, label %127

126:                                              ; preds = %61
  br label %129

127:                                              ; preds = %61
  %128 = load i32, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i32 [ 255, %126 ], [ %128, %127 ]
  %131 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %132 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  %137 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @ADM1031_REG_FAN_DIV(i32 %138)
  %140 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %141 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @adm1031_write_value(%struct.i2c_client* %137, i32 %139, i32 %146)
  %148 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @ADM1031_REG_FAN_MIN(i32 %149)
  %151 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %152 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @adm1031_write_value(%struct.i2c_client* %148, i32 %150, i32 %157)
  %159 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %160 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %162 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %161, i32 0, i32 2
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i64, i64* %9, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %129, %58, %31
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.adm1031_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @adm1031_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1031_REG_FAN_DIV(i32) #1

declare dso_local i32 @ADM1031_REG_FAN_MIN(i32) #1

declare dso_local i32 @FAN_DIV_FROM_REG(i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
