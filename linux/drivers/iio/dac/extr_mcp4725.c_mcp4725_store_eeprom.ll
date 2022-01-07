; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_store_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_store_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mcp4725_data = type { i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mcp4725_store_eeprom() failed, incomplete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mcp4725_store_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4725_store_eeprom(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.mcp4725_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %16)
  store %struct.iio_dev* %17, %struct.iio_dev** %10, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %19 = call %struct.mcp4725_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.mcp4725_data* %19, %struct.mcp4725_data** %11, align 8
  store i32 20, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strtobool(i8* %20, i32* %14)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %5, align 4
  br label %126

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %126

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 96, i32* %31, align 4
  %32 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %33 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 3
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %40 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %45 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = shl i32 %47, 1
  br label %50

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 0, %49 ]
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %56 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %61 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 15
  %64 = shl i32 %63, 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %67 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %70 = call i32 @i2c_master_send(%struct.TYPE_3__* %68, i32* %69, i32 3)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %126

75:                                               ; preds = %50
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %126

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %111, %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = call i32 @msleep(i32 20)
  %89 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %90 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %89, i32 0, i32 3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %93 = call i32 @i2c_master_recv(%struct.TYPE_3__* %91, i32* %92, i32 3)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %5, align 4
  br label %126

98:                                               ; preds = %87
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 3
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %126

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105
  br label %83

112:                                              ; preds = %110, %83
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load %struct.mcp4725_data*, %struct.mcp4725_data** %11, align 8
  %117 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %112
  %124 = load i64, i64* %9, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %115, %101, %96, %78, %73, %29, %24
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.mcp4725_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
