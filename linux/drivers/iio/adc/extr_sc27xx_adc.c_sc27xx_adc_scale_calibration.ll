; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_scale_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_scale_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_adc_linear_graph = type { i8*, i8* }
%struct.sc27xx_adc_data = type { i32 }
%struct.nvmem_cell = type opaque

@big_scale_graph_calib = common dso_local global %struct.sc27xx_adc_linear_graph zeroinitializer, align 8
@big_scale_graph = common dso_local global %struct.sc27xx_adc_linear_graph zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"big_scale_calib\00", align 1
@small_scale_graph_calib = common dso_local global %struct.sc27xx_adc_linear_graph zeroinitializer, align 8
@small_scale_graph = common dso_local global %struct.sc27xx_adc_linear_graph zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"small_scale_calib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_adc_data*, i32)* @sc27xx_adc_scale_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_scale_calibration(%struct.sc27xx_adc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc27xx_adc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc27xx_adc_linear_graph*, align 8
  %7 = alloca %struct.sc27xx_adc_linear_graph*, align 8
  %8 = alloca %struct.nvmem_cell*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.sc27xx_adc_data* %0, %struct.sc27xx_adc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.sc27xx_adc_linear_graph* @big_scale_graph_calib, %struct.sc27xx_adc_linear_graph** %6, align 8
  store %struct.sc27xx_adc_linear_graph* @big_scale_graph, %struct.sc27xx_adc_linear_graph** %7, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.sc27xx_adc_linear_graph* @small_scale_graph_calib, %struct.sc27xx_adc_linear_graph** %6, align 8
  store %struct.sc27xx_adc_linear_graph* @small_scale_graph, %struct.sc27xx_adc_linear_graph** %7, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %4, align 8
  %19 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @nvmem_cell_get(i32 %20, i8* %21)
  %23 = bitcast i8* %22 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %23, %struct.nvmem_cell** %8, align 8
  %24 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %25 = bitcast %struct.nvmem_cell* %24 to i8*
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %30 = bitcast %struct.nvmem_cell* %29 to i8*
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %17
  %33 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %34 = bitcast %struct.nvmem_cell* %33 to i8*
  %35 = call i8* @nvmem_cell_read(i8* %34, i64* %12)
  store i8* %35, i8** %11, align 8
  %36 = load %struct.nvmem_cell*, %struct.nvmem_cell** %8, align 8
  %37 = bitcast %struct.nvmem_cell* %36 to i8*
  %38 = call i32 @nvmem_cell_put(i8* %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i64 @IS_ERR(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %32
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @min(i64 %47, i32 4)
  %49 = call i32 @memcpy(i32* %10, i8* %46, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %6, align 8
  %52 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @sc27xx_adc_get_calib_data(i32 %50, i8* %53)
  %55 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %7, align 8
  %56 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 8
  %59 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %6, align 8
  %60 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @sc27xx_adc_get_calib_data(i32 %58, i8* %61)
  %63 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %7, align 8
  %64 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @kfree(i8* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %45, %42, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @nvmem_cell_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i8* @sc27xx_adc_get_calib_data(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
