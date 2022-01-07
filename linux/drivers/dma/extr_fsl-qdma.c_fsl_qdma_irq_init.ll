; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_qdma_engine = type { i64, i32, i64* }

@.str = private unnamed_addr constant [11 x i8] c"qdma-error\00", align 1
@fsl_qdma_error_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"qDMA error\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't register qDMA controller IRQ.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"qdma-queue%d\00", align 1
@fsl_qdma_queue_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"qDMA queue\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Can't register qDMA queue IRQ.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Can't set cpu %d affinity to IRQ %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.fsl_qdma_engine*)* @fsl_qdma_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qdma_irq_init(%struct.platform_device* %0, %struct.fsl_qdma_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.fsl_qdma_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.fsl_qdma_engine* %1, %struct.fsl_qdma_engine** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call i8* @platform_get_irq_byname(%struct.platform_device* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = ptrtoint i8* %11 to i64
  %13 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %135

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %28 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @fsl_qdma_error_handler, align 4
  %32 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %33 = call i32 @devm_request_irq(i32* %26, i32 %30, i32 %31, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_qdma_engine* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %135

41:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %131, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %45 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %134

48:                                               ; preds = %42
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %54 = call i8* @platform_get_irq_byname(%struct.platform_device* %52, i8* %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %57 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  %62 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %63 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %48
  %71 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %72 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %135

79:                                               ; preds = %48
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %83 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @fsl_qdma_queue_handler, align 4
  %91 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %92 = call i32 @devm_request_irq(i32* %81, i32 %89, i32 %90, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.fsl_qdma_engine* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %135

100:                                              ; preds = %79
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (...) @num_online_cpus()
  %103 = srem i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %105 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @get_cpu_mask(i32 %112)
  %114 = call i32 @irq_set_affinity_hint(i32 %111, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %100
  %118 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %122 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %120, i64 %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %135

130:                                              ; preds = %100
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %42

134:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %117, %95, %70, %36, %19
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.fsl_qdma_engine*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @get_cpu_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
