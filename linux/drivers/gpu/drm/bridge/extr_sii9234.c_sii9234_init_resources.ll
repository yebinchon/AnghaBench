; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_init_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { %struct.i2c_client**, %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"not DT device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get reset gpio from DT\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"avcc12\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"avcc33\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"iovcc18\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"cvcc12\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"regulator_bulk failed\0A\00", align 1
@I2C_MHL = common dso_local global i64 0, align 8
@I2C_TPI_ADDR = common dso_local global i32 0, align 4
@I2C_TPI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to create TPI client\0A\00", align 1
@I2C_HDMI_ADDR = common dso_local global i32 0, align 4
@I2C_HDMI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to create HDMI RX client\0A\00", align 1
@I2C_CBUS_ADDR = common dso_local global i32 0, align 4
@I2C_CBUS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to create CBUS client\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*, %struct.i2c_client*)* @sii9234_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_init_resources(%struct.sii9234* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sii9234*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %12 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %19 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @dev_err(%struct.TYPE_5__* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %175

24:                                               ; preds = %2
  %25 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %26 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %29 = call i32 @devm_gpiod_get(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %31 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %33 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %39 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @dev_err(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %43 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %175

46:                                               ; preds = %24
  %47 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %48 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %53 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %58 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %63 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %68 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %71 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @devm_regulator_bulk_get(%struct.TYPE_5__* %69, i32 4, %struct.TYPE_6__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %46
  %77 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %78 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @dev_err(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %175

82:                                               ; preds = %46
  %83 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %84 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %85 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %84, i32 0, i32 0
  %86 = load %struct.i2c_client**, %struct.i2c_client*** %85, align 8
  %87 = load i64, i64* @I2C_MHL, align 8
  %88 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %86, i64 %87
  store %struct.i2c_client* %83, %struct.i2c_client** %88, align 8
  %89 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %90 = load i32, i32* @I2C_TPI_ADDR, align 4
  %91 = call i8* @i2c_new_dummy(%struct.i2c_adapter* %89, i32 %90)
  %92 = bitcast i8* %91 to %struct.i2c_client*
  %93 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %94 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %93, i32 0, i32 0
  %95 = load %struct.i2c_client**, %struct.i2c_client*** %94, align 8
  %96 = load i64, i64* @I2C_TPI, align 8
  %97 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %95, i64 %96
  store %struct.i2c_client* %92, %struct.i2c_client** %97, align 8
  %98 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %99 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %98, i32 0, i32 0
  %100 = load %struct.i2c_client**, %struct.i2c_client*** %99, align 8
  %101 = load i64, i64* @I2C_TPI, align 8
  %102 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %100, i64 %101
  %103 = load %struct.i2c_client*, %struct.i2c_client** %102, align 8
  %104 = icmp ne %struct.i2c_client* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %82
  %106 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %107 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = call i32 @dev_err(%struct.TYPE_5__* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %175

112:                                              ; preds = %82
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %114 = load i32, i32* @I2C_HDMI_ADDR, align 4
  %115 = call i8* @i2c_new_dummy(%struct.i2c_adapter* %113, i32 %114)
  %116 = bitcast i8* %115 to %struct.i2c_client*
  %117 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %118 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %117, i32 0, i32 0
  %119 = load %struct.i2c_client**, %struct.i2c_client*** %118, align 8
  %120 = load i64, i64* @I2C_HDMI, align 8
  %121 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %119, i64 %120
  store %struct.i2c_client* %116, %struct.i2c_client** %121, align 8
  %122 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %123 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %122, i32 0, i32 0
  %124 = load %struct.i2c_client**, %struct.i2c_client*** %123, align 8
  %125 = load i64, i64* @I2C_HDMI, align 8
  %126 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %124, i64 %125
  %127 = load %struct.i2c_client*, %struct.i2c_client** %126, align 8
  %128 = icmp ne %struct.i2c_client* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %112
  %130 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %131 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @dev_err(%struct.TYPE_5__* %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %165

134:                                              ; preds = %112
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %136 = load i32, i32* @I2C_CBUS_ADDR, align 4
  %137 = call i8* @i2c_new_dummy(%struct.i2c_adapter* %135, i32 %136)
  %138 = bitcast i8* %137 to %struct.i2c_client*
  %139 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %140 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %139, i32 0, i32 0
  %141 = load %struct.i2c_client**, %struct.i2c_client*** %140, align 8
  %142 = load i64, i64* @I2C_CBUS, align 8
  %143 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %141, i64 %142
  store %struct.i2c_client* %138, %struct.i2c_client** %143, align 8
  %144 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %145 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %144, i32 0, i32 0
  %146 = load %struct.i2c_client**, %struct.i2c_client*** %145, align 8
  %147 = load i64, i64* @I2C_CBUS, align 8
  %148 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %146, i64 %147
  %149 = load %struct.i2c_client*, %struct.i2c_client** %148, align 8
  %150 = icmp ne %struct.i2c_client* %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %134
  %152 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %153 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = call i32 @dev_err(%struct.TYPE_5__* %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %157

156:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %175

157:                                              ; preds = %151
  %158 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %159 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %158, i32 0, i32 0
  %160 = load %struct.i2c_client**, %struct.i2c_client*** %159, align 8
  %161 = load i64, i64* @I2C_HDMI, align 8
  %162 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %160, i64 %161
  %163 = load %struct.i2c_client*, %struct.i2c_client** %162, align 8
  %164 = call i32 @i2c_unregister_device(%struct.i2c_client* %163)
  br label %165

165:                                              ; preds = %157, %129
  %166 = load %struct.sii9234*, %struct.sii9234** %4, align 8
  %167 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %166, i32 0, i32 0
  %168 = load %struct.i2c_client**, %struct.i2c_client*** %167, align 8
  %169 = load i64, i64* @I2C_TPI, align 8
  %170 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %168, i64 %169
  %171 = load %struct.i2c_client*, %struct.i2c_client** %170, align 8
  %172 = call i32 @i2c_unregister_device(%struct.i2c_client* %171)
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %165, %156, %105, %76, %37, %17
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #1

declare dso_local i8* @i2c_new_dummy(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
