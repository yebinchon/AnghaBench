; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_calibrate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_calibrate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.elan_tp_data = type { i32, i32, %struct.i2c_client*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*, i32*)* }

@ETP_CALIBRATE_MAX_LEN = common dso_local global i32 0, align 4
@ETP_ENABLE_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to enable calibration mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to start calibration: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to check calibration result: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to calibrate. Timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to disable calibration mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @calibrate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.elan_tp_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.elan_tp_data* %21, %struct.elan_tp_data** %11, align 8
  store i32 20, i32* %12, align 4
  %22 = load i32, i32* @ETP_CALIBRATE_MAX_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %15, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %16, align 8
  %26 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %27 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock_interruptible(i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %158

33:                                               ; preds = %4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @disable_irq(i32 %36)
  %38 = load i32, i32* @ETP_ENABLE_CALIBRATE, align 4
  %39 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %40 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %44 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)** %46, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %49 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %50 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %47(%struct.i2c_client* %48, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %141

59:                                               ; preds = %33
  %60 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %61 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %63, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %66 = call i32 %64(%struct.i2c_client* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %110

73:                                               ; preds = %59
  %74 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 255, i32* %74, align 16
  br label %75

75:                                               ; preds = %97, %73
  %76 = call i32 @msleep(i32 250)
  %77 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %78 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32 (%struct.i2c_client*, i32*)*, i32 (%struct.i2c_client*, i32*)** %80, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %83 = call i32 %81(%struct.i2c_client* %82, i32* %25)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %96

90:                                               ; preds = %75
  %91 = getelementptr inbounds i32, i32* %25, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %101

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %75, label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %104, %101
  br label %110

110:                                              ; preds = %109, %69
  %111 = load i32, i32* @ETP_ENABLE_CALIBRATE, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %114 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %118 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.i2c_client*, i32)*, i32 (%struct.i2c_client*, i32)** %120, align 8
  %122 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %123 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %122, i32 0, i32 2
  %124 = load %struct.i2c_client*, %struct.i2c_client** %123, align 8
  %125 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %126 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 %121(%struct.i2c_client* %124, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %110
  %132 = load %struct.device*, %struct.device** %6, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %137, %131
  br label %140

140:                                              ; preds = %139, %110
  br label %141

141:                                              ; preds = %140, %55
  %142 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @enable_irq(i32 %144)
  %146 = load %struct.elan_tp_data*, %struct.elan_tp_data** %11, align 8
  %147 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = sext i32 %149 to i64
  br label %155

153:                                              ; preds = %141
  %154 = load i64, i64* %9, align 8
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i64 [ %152, %151 ], [ %154, %153 ]
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %158

158:                                              ; preds = %155, %31
  %159 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %159)
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
