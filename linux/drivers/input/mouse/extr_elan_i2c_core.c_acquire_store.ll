; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_acquire_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_acquire_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.elan_tp_data = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32, i32*)* }

@ETP_ENABLE_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to enable calibration mode to get baseline: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to read max baseline form device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to read min baseline form device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Failed to disable calibration mode after acquiring baseline: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @acquire_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.elan_tp_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.elan_tp_data* %17, %struct.elan_tp_data** %11, align 8
  %18 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %19 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock_interruptible(i32* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %143

25:                                               ; preds = %4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @disable_irq(i32 %28)
  %30 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %31 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @ETP_ENABLE_CALIBRATE, align 4
  %33 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %34 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %38 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %43 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %46 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(i32 %44, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %25
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %126

55:                                               ; preds = %25
  %56 = call i32 @msleep(i32 250)
  %57 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %58 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %60, align 8
  %62 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %63 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %66 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %65, i32 0, i32 6
  %67 = call i32 %61(i32 %64, i32 1, i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %95

74:                                               ; preds = %55
  %75 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %76 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %78, align 8
  %80 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %81 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %84 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %83, i32 0, i32 5
  %85 = call i32 %79(i32 %82, i32 0, i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %95

92:                                               ; preds = %74
  %93 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %94 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %88, %70
  %96 = load i32, i32* @ETP_ENABLE_CALIBRATE, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %99 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %103 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (i32, i32)*, i32 (i32, i32)** %105, align 8
  %107 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %108 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %111 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %106(i32 %109, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %95
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %122, %116
  br label %125

125:                                              ; preds = %124, %95
  br label %126

126:                                              ; preds = %125, %51
  %127 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @enable_irq(i32 %129)
  %131 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %132 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %131, i32 0, i32 1
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = sext i32 %134 to i64
  br label %140

138:                                              ; preds = %126
  %139 = load i64, i64* %9, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %140, %23
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
