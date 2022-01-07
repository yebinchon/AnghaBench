; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_twl4030-madc.c_twl4030_madc_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.twl4030_madc_conversion_method = type { i32, i32, i32, i32 }
%struct.twl4030_madc_request = type { i64, i32, i32, i32, i64 }

@twl4030_madc = common dso_local global %struct.TYPE_7__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@TWL4030_MADC_RT = common dso_local global i64 0, align 8
@TWL4030_MADC_SW2 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@twl4030_conversion_methods = common dso_local global %struct.twl4030_madc_conversion_method* null, align 8
@TWL4030_MODULE_MADC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to write sel register 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to write avg register 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_request*)* @twl4030_madc_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_conversion(%struct.twl4030_madc_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twl4030_madc_request*, align 8
  %4 = alloca %struct.twl4030_madc_conversion_method*, align 8
  %5 = alloca i32, align 4
  store %struct.twl4030_madc_request* %0, %struct.twl4030_madc_request** %3, align 8
  %6 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %7 = icmp ne %struct.twl4030_madc_request* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %166

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %19 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TWL4030_MADC_RT, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %25 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TWL4030_MADC_SW2, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %14
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %161

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %37 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %161

46:                                               ; preds = %32
  %47 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** @twl4030_conversion_methods, align 8
  %48 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %49 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %47, i64 %50
  store %struct.twl4030_madc_conversion_method* %51, %struct.twl4030_madc_conversion_method** %4, align 8
  %52 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %53 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %54 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %57 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @twl_i2c_write_u16(i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %46
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %67 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %161

70:                                               ; preds = %46
  %71 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %72 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %70
  %76 = load i32, i32* @TWL4030_MODULE_MADC, align 4
  %77 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %78 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %81 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @twl_i2c_write_u16(i32 %76, i32 %79, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %91 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %161

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %97 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TWL4030_MADC_RT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %161

104:                                              ; preds = %95
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %106 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %107 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @twl4030_madc_start_conversion(%struct.TYPE_7__* %105, i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %161

113:                                              ; preds = %104
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %118 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %123 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %124 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @twl4030_madc_wait_conversion_ready(%struct.TYPE_7__* %122, i32 5, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %113
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %134 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 4
  br label %161

138:                                              ; preds = %113
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %140 = load %struct.twl4030_madc_conversion_method*, %struct.twl4030_madc_conversion_method** %4, align 8
  %141 = getelementptr inbounds %struct.twl4030_madc_conversion_method, %struct.twl4030_madc_conversion_method* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %144 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %147 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %150 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @twl4030_madc_read_channels(%struct.TYPE_7__* %139, i32 %142, i32 %145, i32 %148, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load %struct.twl4030_madc_request*, %struct.twl4030_madc_request** %3, align 8
  %157 = getelementptr inbounds %struct.twl4030_madc_request, %struct.twl4030_madc_request* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %138, %129, %112, %101, %86, %62, %43, %29
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl4030_madc, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %161, %11
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl_i2c_write_u16(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl4030_madc_start_conversion(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @twl4030_madc_wait_conversion_ready(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @twl4030_madc_read_channels(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
