; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts.c_egalax_ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_egalax_ts.c_egalax_ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.egalax_ts = type { %struct.i2c_client*, %struct.input_dev* }
%struct.i2c_client = type { i32 }
%struct.input_dev = type { i32 }

@MAX_I2C_DATA_LEN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EGALAX_MAX_TRIES = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@REPORT_MODE_MTTOUCH = common dso_local global i32 0, align 4
@EVENT_VALID_MASK = common dso_local global i32 0, align 4
@EVENT_ID_MASK = common dso_local global i32 0, align 4
@EVENT_ID_OFFSET = common dso_local global i32 0, align 4
@EVENT_DOWN_UP = common dso_local global i32 0, align 4
@MAX_SUPPORT_POINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"point invalid\0A\00", align 1
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s id:%d x:%d y:%d z:%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @egalax_ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egalax_ts_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.egalax_ts*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.egalax_ts*
  store %struct.egalax_ts* %22, %struct.egalax_ts** %6, align 8
  %23 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %24 = getelementptr inbounds %struct.egalax_ts, %struct.egalax_ts* %23, i32 0, i32 1
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %7, align 8
  %26 = load %struct.egalax_ts*, %struct.egalax_ts** %6, align 8
  %27 = getelementptr inbounds %struct.egalax_ts, %struct.egalax_ts* %26, i32 0, i32 0
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  store %struct.i2c_client* %28, %struct.i2c_client** %8, align 8
  %29 = load i32, i32* @MAX_I2C_DATA_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %9, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %47, %2
  %34 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %35 = load i32, i32* @MAX_I2C_DATA_LEN, align 4
  %36 = call i32 @i2c_master_recv(%struct.i2c_client* %34, i32* %32, i32 %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @EGALAX_MAX_TRIES, align 4
  %46 = icmp slt i32 %43, %45
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %33, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %144

54:                                               ; preds = %49
  %55 = getelementptr inbounds i32, i32* %32, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32, i32* @REPORT_MODE_MTTOUCH, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %144

61:                                               ; preds = %54
  %62 = getelementptr inbounds i32, i32* %32, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %19, align 4
  %64 = getelementptr inbounds i32, i32* %32, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds i32, i32* %32, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = getelementptr inbounds i32, i32* %32, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = getelementptr inbounds i32, i32* %32, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = or i32 %72, %74
  store i32 %75, i32* %14, align 4
  %76 = getelementptr inbounds i32, i32* %32, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = getelementptr inbounds i32, i32* %32, i64 6
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %78, %80
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @EVENT_VALID_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @EVENT_ID_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @EVENT_ID_OFFSET, align 4
  %89 = ashr i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @EVENT_DOWN_UP, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %61
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MAX_SUPPORT_POINTS, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %61
  %100 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %144

104:                                              ; preds = %95
  %105 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @input_mt_slot(%struct.input_dev* %105, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = load i32, i32* @MT_TOOL_FINGER, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @input_mt_report_slot_state(%struct.input_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %104
  %126 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %127 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @input_report_abs(%struct.input_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %131 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @input_report_abs(%struct.input_dev* %130, i32 %131, i32 %132)
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @input_report_abs(%struct.input_dev* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %125, %104
  %139 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %140 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %139, i32 1)
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = call i32 @input_sync(%struct.input_dev* %141)
  %143 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %143, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %144

144:                                              ; preds = %138, %99, %59, %52
  %145 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #2

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #2

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
