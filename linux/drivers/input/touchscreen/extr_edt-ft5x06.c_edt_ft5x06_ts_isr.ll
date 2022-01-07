; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt_ft5x06_ts_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to fetch data, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unexpected header: %02x%02x%02x!\0A\00", align 1
@TOUCH_EVENT_RESERVED = common dso_local global i32 0, align 4
@TOUCH_EVENT_DOWN = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@TOUCH_EVENT_UP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @edt_ft5x06_ts_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edt_ft5x06_ts_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [63 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.edt_ft5x06_ts_data*
  store %struct.edt_ft5x06_ts_data* %21, %struct.edt_ft5x06_ts_data** %5, align 8
  %22 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %23 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %6, align 8
  %26 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %27 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %31 [
    i32 132, label %29
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
  ]

29:                                               ; preds = %2
  store i32 249, i32* %7, align 4
  store i32 5, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %32

30:                                               ; preds = %2, %2, %2, %2
  store i32 0, i32* %7, align 4
  store i32 3, i32* %14, align 4
  store i32 6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %32

31:                                               ; preds = %2
  br label %183

32:                                               ; preds = %30, %29
  %33 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 252)
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %37 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %17, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %45 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %49 = call i32 @edt_ft5x06_ts_readwrite(%struct.TYPE_2__* %46, i32 4, i32* %7, i32 %47, i32* %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i32 (%struct.device*, i8*, i32, ...) @dev_err_ratelimited(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %183

56:                                               ; preds = %32
  %57 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %58 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = icmp ne i32 %63, 170
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 170
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69, %65, %61
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.device*, i8*, i32, ...) @dev_err_ratelimited(%struct.device* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i32 %81)
  br label %183

83:                                               ; preds = %69
  %84 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %85 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @edt_ft5x06_ts_check_crc(%struct.edt_ft5x06_ts_data* %84, i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %183

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %56
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %171, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %95 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %174

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 %104
  store i32* %105, i32** %19, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 6
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @TOUCH_EVENT_RESERVED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %171

114:                                              ; preds = %98
  %115 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %116 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 132
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @TOUCH_EVENT_DOWN, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %171

124:                                              ; preds = %119, %114
  %125 = load i32*, i32** %19, align 8
  %126 = call i32 @get_unaligned_be16(i32* %125)
  %127 = and i32 %126, 4095
  store i32 %127, i32* %11, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = call i32 @get_unaligned_be16(i32* %129)
  %131 = and i32 %130, 4095
  store i32 %131, i32* %12, align 4
  %132 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %133 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 129
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @swap(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %124
  %141 = load i32*, i32** %19, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 4
  %145 = and i32 %144, 15
  store i32 %145, i32* %13, align 4
  %146 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %147 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @input_mt_slot(i32 %148, i32 %149)
  %151 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %152 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MT_TOOL_FINGER, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @TOUCH_EVENT_UP, align 4
  %157 = icmp ne i32 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i64 @input_mt_report_slot_state(i32 %153, i32 %154, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %140
  %162 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %163 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %166 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %165, i32 0, i32 3
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @touchscreen_report_pos(i32 %164, i32* %166, i32 %167, i32 %168, i32 1)
  br label %170

170:                                              ; preds = %161, %140
  br label %171

171:                                              ; preds = %170, %123, %113
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %92

174:                                              ; preds = %92
  %175 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %176 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @input_mt_report_pointer_emulation(i32 %177, i32 1)
  %179 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %180 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @input_sync(i32 %181)
  br label %183

183:                                              ; preds = %174, %89, %74, %52, %31
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %184
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @edt_ft5x06_ts_readwrite(%struct.TYPE_2__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @edt_ft5x06_ts_check_crc(%struct.edt_ft5x06_ts_data*, i32*, i32) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i64 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @input_mt_report_pointer_emulation(i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
