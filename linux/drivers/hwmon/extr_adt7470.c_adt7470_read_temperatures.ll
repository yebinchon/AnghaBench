; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_read_temperatures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_read_temperatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7470_data = type { i32, i32, i8** }

@ADT7470_FAN_COUNT = common dso_local global i32 0, align 4
@ADT7470_PWM_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@TEMP_COLLECTION_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ha ha, interrupted\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ADT7470_TEMP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.adt7470_data*)* @adt7470_read_temperatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7470_read_temperatures(%struct.i2c_client* %0, %struct.adt7470_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.adt7470_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [2 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.adt7470_data* %1, %struct.adt7470_data** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call i32 @ADT7470_REG_PWM_CFG(i32 0)
  %13 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call i32 @ADT7470_REG_PWM_CFG(i32 2)
  %18 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %34, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ADT7470_REG_PWM(i32 %27)
  %29 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @ADT7470_REG_PWM_CFG(i32 0)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ADT7470_PWM_AUTO_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @ADT7470_REG_PWM_CFG(i32 2)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADT7470_PWM_AUTO_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i32 %47, i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %67, %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ADT7470_REG_PWM(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %59, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @ADT7470_REG_CFG, align 4
  %73 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, 128
  store i32 %76, i32* %8, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load i32, i32* @ADT7470_REG_CFG, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %77, i32 %78, i32 %79)
  %81 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %82 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %70
  %86 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %87 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 200
  br label %92

90:                                               ; preds = %70
  %91 = load i32, i32* @TEMP_COLLECTION_TIME, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i32 [ %89, %85 ], [ %91, %90 ]
  %94 = call i64 @msleep_interruptible(i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load i32, i32* @ADT7470_REG_CFG, align 4
  %97 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, -129
  store i32 %100, i32* %8, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load i32, i32* @ADT7470_REG_CFG, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %102, i32 %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = call i32 @ADT7470_REG_PWM_CFG(i32 0)
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %105, i32 %106, i32 %108)
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = call i32 @ADT7470_REG_PWM_CFG(i32 2)
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %110, i32 %111, i32 %113)
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %92
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @EAGAIN, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %163

121:                                              ; preds = %92
  %122 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %123 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %163

127:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %157, %127
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @ADT7470_TEMP_COUNT, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %128
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ADT7470_TEMP_REG(i32 %134)
  %136 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %133, i32 %135)
  %137 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %138 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %137, i32 0, i32 2
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  %143 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %144 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %143, i32 0, i32 2
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %132
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %155 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %151, %132
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %128

160:                                              ; preds = %128
  %161 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %162 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %126, %117
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7470_REG_PWM_CFG(i32) #1

declare dso_local i32 @ADT7470_REG_PWM(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ADT7470_TEMP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
