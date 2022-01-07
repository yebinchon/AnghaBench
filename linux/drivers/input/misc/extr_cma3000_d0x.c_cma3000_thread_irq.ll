; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_thread_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_thread_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i64, i32 }

@CMA3000_INTSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"interrupt status\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@CMA3000_INTSTATUS_FFDET = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@CMA3000_DOUTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@CMA3000_DOUTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@CMA3000_DOUTZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@CMA3000_CTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@CMA3000_MODEMASK = common dso_local global i32 0, align 4
@CMA3000_GRANGEMASK = common dso_local global i32 0, align 4
@mode_to_mg = common dso_local global i64** null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cma3000_thread_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma3000_thread_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cma3000_accl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.cma3000_accl_data*
  store %struct.cma3000_accl_data* %15, %struct.cma3000_accl_data** %6, align 8
  %16 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %17 = load i32, i32* @CMA3000_INTSTATUS, align 4
  %18 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %108

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CMA3000_INTSTATUS_FFDET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %30 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ABS_MISC, align 4
  %33 = call i32 @input_report_abs(i32 %31, i32 %32, i32 1)
  %34 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %35 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @input_sync(i32 %36)
  br label %44

38:                                               ; preds = %23
  %39 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %40 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ABS_MISC, align 4
  %43 = call i32 @input_report_abs(i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %38, %28
  %45 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %46 = load i32, i32* @CMA3000_DOUTX, align 4
  %47 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %45, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %7, align 4
  %48 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %49 = load i32, i32* @CMA3000_DOUTY, align 4
  %50 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %48, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %8, align 4
  %51 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %52 = load i32, i32* @CMA3000_DOUTZ, align 4
  %53 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %51, i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %53, i32* %9, align 4
  %54 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %55 = load i32, i32* @CMA3000_CTRL, align 4
  %56 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CMA3000_MODEMASK, align 4
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @CMA3000_GRANGEMASK, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 7
  store i32 %64, i32* %13, align 4
  %65 = load i64**, i64*** @mode_to_mg, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %75 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %77 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %44
  %81 = load i32, i32* @IRQ_NONE, align 4
  store i32 %81, i32* %3, align 4
  br label %108

82:                                               ; preds = %44
  %83 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %84 = call i32 @decode_mg(%struct.cma3000_accl_data* %83, i32* %7, i32* %8, i32* %9)
  %85 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %86 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ABS_X, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @input_report_abs(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %92 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ABS_Y, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @input_report_abs(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %98 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ABS_Z, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @input_report_abs(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %6, align 8
  %104 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @input_sync(i32 %105)
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %82, %80, %21
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @CMA3000_READ(%struct.cma3000_accl_data*, i32, i8*) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @decode_mg(%struct.cma3000_accl_data*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
