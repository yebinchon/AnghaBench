; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max11801_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@XY_BUFSIZE = common dso_local global i32 0, align 4
@GENERNAL_STATUS_REG = common dso_local global i32 0, align 4
@MAX11801_FIFO_INT = common dso_local global i32 0, align 4
@MAX11801_FIFO_OVERFLOW = common dso_local global i32 0, align 4
@FIFO_RD_CMD = common dso_local global i32 0, align 4
@MEASURE_TAG_MASK = common dso_local global i32 0, align 4
@MEASURE_X_TAG = common dso_local global i32 0, align 4
@XY_BUF_OFFSET = common dso_local global i32 0, align 4
@MEASURE_Y_TAG = common dso_local global i32 0, align 4
@EVENT_TAG_MASK = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max11801_ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max11801_ts_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max11801_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.max11801_data*
  store %struct.max11801_data* %15, %struct.max11801_data** %5, align 8
  %16 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %17 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %6, align 8
  %19 = load i32, i32* @XY_BUFSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %23 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %24 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %23, i32 0, i32 1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  %26 = load i32, i32* @GENERNAL_STATUS_REG, align 4
  %27 = call i32 @read_register(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MAX11801_FIFO_INT, align 4
  %30 = load i32, i32* @MAX11801_FIFO_OVERFLOW, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %162

34:                                               ; preds = %2
  %35 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %36 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %35, i32 0, i32 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %36, align 8
  %38 = load i32, i32* @GENERNAL_STATUS_REG, align 4
  %39 = call i32 @read_register(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = load i32, i32* @FIFO_RD_CMD, align 4
  %42 = load i32, i32* @XY_BUFSIZE, align 4
  %43 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %40, i32 %41, i32 %42, i32* %22)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @XY_BUFSIZE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %163

48:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %105, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @XY_BUFSIZE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %22, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MEASURE_TAG_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @MEASURE_X_TAG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %22, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XY_BUF_OFFSET, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %22, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XY_BUF_OFFSET, align 4
  %76 = ashr i32 %74, %75
  %77 = add nsw i32 %69, %76
  store i32 %77, i32* %12, align 4
  br label %104

78:                                               ; preds = %53
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %22, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MEASURE_TAG_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @MEASURE_Y_TAG, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %22, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @XY_BUF_OFFSET, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %22, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XY_BUF_OFFSET, align 4
  %101 = ashr i32 %99, %100
  %102 = add nsw i32 %94, %101
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %88, %78
  br label %104

104:                                              ; preds = %103, %63
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* @XY_BUFSIZE, align 4
  %107 = sdiv i32 %106, 2
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %49

110:                                              ; preds = %49
  %111 = getelementptr inbounds i32, i32* %22, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @EVENT_TAG_MASK, align 4
  %114 = and i32 %112, %113
  %115 = getelementptr inbounds i32, i32* %22, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EVENT_TAG_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %163

121:                                              ; preds = %110
  %122 = getelementptr inbounds i32, i32* %22, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @EVENT_TAG_MASK, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %161 [
    i32 130, label %126
    i32 129, label %126
    i32 128, label %149
    i32 131, label %160
  ]

126:                                              ; preds = %121, %121
  %127 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %128 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ABS_X, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @input_report_abs(i32 %129, i32 %130, i32 %131)
  %133 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %134 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ABS_Y, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @input_report_abs(i32 %135, i32 %136, i32 %137)
  %139 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %140 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @EV_KEY, align 4
  %143 = load i32, i32* @BTN_TOUCH, align 4
  %144 = call i32 @input_event(i32 %141, i32 %142, i32 %143, i32 1)
  %145 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %146 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @input_sync(i32 %147)
  br label %161

149:                                              ; preds = %121
  %150 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %151 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @EV_KEY, align 4
  %154 = load i32, i32* @BTN_TOUCH, align 4
  %155 = call i32 @input_event(i32 %152, i32 %153, i32 %154, i32 0)
  %156 = load %struct.max11801_data*, %struct.max11801_data** %5, align 8
  %157 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @input_sync(i32 %158)
  br label %161

160:                                              ; preds = %121
  br label %161

161:                                              ; preds = %121, %160, %149, %126
  br label %162

162:                                              ; preds = %161, %2
  br label %163

163:                                              ; preds = %162, %120, %47
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  %165 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_register(%struct.i2c_client*, i32) #2

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #2

declare dso_local i32 @input_report_abs(i32, i32, i32) #2

declare dso_local i32 @input_event(i32, i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
