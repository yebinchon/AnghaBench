; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_threaded_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_threaded_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_conversion_method = type { i32 }
%struct.twl4030_madc_data = type { i32, %struct.twl4030_madc_request*, i32, i32, i32 }
%struct.twl4030_madc_request = type { i32, i64, i64, i32, i32, i32 }

@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to read isr register 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to read imr register 0x%X\0A\00", align 1
@TWL4030_MADC_NUM_METHODS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Disable interrupt failed %d\0A\00", align 1
@twl4030_conversion_methods = common dso_local global %struct.twl4030_madc_conversion_method* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl4030_madc_threaded_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_threaded_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.twl4030_madc_data*, align 8
  %7 = alloca %struct.twl4030_madc_conversion_method*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.twl4030_madc_request*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.twl4030_madc_data*
  store %struct.twl4030_madc_data* %15, %struct.twl4030_madc_data** %6, align 8
  %16 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %17 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %20 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %21 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @twl_i2c_read_u8(i32 %19, i32* %8, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %28 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %31 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %138

34:                                               ; preds = %2
  %35 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %36 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %37 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @twl_i2c_read_u8(i32 %35, i32* %9, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %44 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %47 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %138

50:                                               ; preds = %34
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %86, %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @TWL4030_MADC_NUM_METHODS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %86

66:                                               ; preds = %59
  %67 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @twl4030_madc_disable_irq(%struct.twl4030_madc_data* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %74 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %80 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %79, i32 0, i32 1
  %81 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %81, i64 %83
  %85 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %65
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %55

89:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %130, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @TWL4030_MADC_NUM_METHODS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %90
  %95 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %96 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %95, i32 0, i32 1
  %97 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %97, i64 %99
  store %struct.twl4030_madc_request* %100, %struct.twl4030_madc_request** %13, align 8
  %101 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %102 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %130

106:                                              ; preds = %94
  %107 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** @twl4030_conversion_methods, align 8
  %108 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %109 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %107, i64 %110
  store %struct.twl4030_madc_conversion_method* %111, %struct.twl4030_madc_conversion_method** %7, align 8
  %112 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %113 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %7, align 8
  %114 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %117 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %120 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %123 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @twl4030_madc_read_channels(%struct.twl4030_madc_data* %112, i32 %115, i32 %118, i32 %121, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %127 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  %128 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %129 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %106, %105
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %90

133:                                              ; preds = %90
  %134 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %135 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %137, i32* %3, align 4
  br label %187

138:                                              ; preds = %42, %26
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %179, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @TWL4030_MADC_NUM_METHODS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %182

143:                                              ; preds = %139
  %144 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %145 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %144, i32 0, i32 1
  %146 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %146, i64 %148
  store %struct.twl4030_madc_request* %149, %struct.twl4030_madc_request** %13, align 8
  %150 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %151 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %179

155:                                              ; preds = %143
  %156 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** @twl4030_conversion_methods, align 8
  %157 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %158 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %156, i64 %159
  store %struct.twl4030_madc_conversion_method* %160, %struct.twl4030_madc_conversion_method** %7, align 8
  %161 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %162 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %7, align 8
  %163 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %166 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %169 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %172 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @twl4030_madc_read_channels(%struct.twl4030_madc_data* %161, i32 %164, i32 %167, i32 %170, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %176 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %13, align 8
  %178 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %177, i32 0, i32 2
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %155, %154
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %139

182:                                              ; preds = %139
  %183 = load %struct.twl4030_madc_data*, %struct.twl4030_madc_data** %6, align 8
  %184 = getelementptr inbounds %struct.twl4030_madc_data, %struct.twl4030_madc_data* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %182, %133
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl4030_madc_disable_irq(%struct.twl4030_madc_data*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @twl4030_madc_read_channels(%struct.twl4030_madc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
