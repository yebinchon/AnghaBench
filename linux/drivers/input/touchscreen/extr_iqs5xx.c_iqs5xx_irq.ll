; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iqs5xx_private = type { i64, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.iqs5xx_touch_data = type { i32, i32, i32 }

@IQS5XX_NUM_CONTACTS = common dso_local global i32 0, align 4
@IQS5XX_BL_STATUS_RESET = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IQS5XX_ABS_X = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@IQS5XX_END_COMM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @iqs5xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iqs5xx_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iqs5xx_private*
  store %struct.iqs5xx_private* %16, %struct.iqs5xx_private** %6, align 8
  %17 = load i32, i32* @IQS5XX_NUM_CONTACTS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.iqs5xx_touch_data, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %22 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %9, align 8
  %24 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %25 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %24, i32 0, i32 1
  %26 = load %struct.input_dev*, %struct.input_dev** %25, align 8
  store %struct.input_dev* %26, %struct.input_dev** %10, align 8
  %27 = load %struct.iqs5xx_private*, %struct.iqs5xx_private** %6, align 8
  %28 = getelementptr inbounds %struct.iqs5xx_private, %struct.iqs5xx_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IQS5XX_BL_STATUS_RESET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

34:                                               ; preds = %2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %36 = load i32, i32* @IQS5XX_ABS_X, align 4
  %37 = mul nuw i64 12, %18
  %38 = trunc i64 %37 to i32
  %39 = call i32 @iqs5xx_read_burst(%struct.i2c_client* %35, i32 %36, %struct.iqs5xx_touch_data* %20, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

44:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %90, %44
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @ARRAY_SIZE(%struct.iqs5xx_touch_data* %20)
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %20, i64 %51
  %53 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be16_to_cpu(i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @input_mt_slot(%struct.input_dev* %56, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %60 = load i32, i32* @MT_TOOL_FINGER, align 4
  %61 = load i64, i64* %14, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @input_mt_report_slot_state(%struct.input_dev* %59, i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %49
  %67 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %68 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %20, i64 %70
  %72 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @be16_to_cpu(i32 %73)
  %75 = call i32 @input_report_abs(%struct.input_dev* %67, i32 %68, i64 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %77 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %20, i64 %79
  %81 = getelementptr inbounds %struct.iqs5xx_touch_data, %struct.iqs5xx_touch_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be16_to_cpu(i32 %82)
  %84 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i64 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %86 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @input_report_abs(%struct.input_dev* %85, i32 %86, i64 %87)
  br label %89

89:                                               ; preds = %66, %49
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %45

93:                                               ; preds = %45
  %94 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %95 = call i32 @input_mt_sync_frame(%struct.input_dev* %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %97 = call i32 @input_sync(%struct.input_dev* %96)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %99 = load i32, i32* @IQS5XX_END_COMM, align 4
  %100 = call i32 @iqs5xx_write_byte(%struct.i2c_client* %98, i32 %99, i32 0)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @IRQ_NONE, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

105:                                              ; preds = %93
  %106 = call i32 @usleep_range(i32 50, i32 100)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %103, %42, %32
  %109 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iqs5xx_read_burst(%struct.i2c_client*, i32, %struct.iqs5xx_touch_data*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.iqs5xx_touch_data*) #2

declare dso_local i64 @be16_to_cpu(i32) #2

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #2

declare dso_local i64 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #2

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

declare dso_local i32 @iqs5xx_write_byte(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
