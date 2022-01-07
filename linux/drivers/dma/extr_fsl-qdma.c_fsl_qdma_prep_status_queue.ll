; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_prep_status_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_prep_status_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qdma_queue = type { i32, i32*, i64, i64, i64, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"status-sizes\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't get status-sizes.\0A\00", align 1
@FSL_QDMA_CIRCULAR_DESC_SIZE_MAX = common dso_local global i32 0, align 4
@FSL_QDMA_CIRCULAR_DESC_SIZE_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Get wrong status_size.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_qdma_queue* (%struct.platform_device*)* @fsl_qdma_prep_status_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_qdma_queue* @fsl_qdma_prep_status_queue(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.fsl_qdma_queue*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_qdma_queue*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %2, align 8
  br label %79

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @FSL_QDMA_CIRCULAR_DESC_SIZE_MAX, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FSL_QDMA_CIRCULAR_DESC_SIZE_MIN, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %2, align 8
  br label %79

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.fsl_qdma_queue* @devm_kzalloc(%struct.TYPE_5__* %34, i32 48, i32 %35)
  store %struct.fsl_qdma_queue* %36, %struct.fsl_qdma_queue** %6, align 8
  %37 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %38 = icmp ne %struct.fsl_qdma_queue* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %2, align 8
  br label %79

40:                                               ; preds = %32
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %48 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %47, i32 0, i32 5
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i64 @dma_alloc_coherent(%struct.TYPE_5__* %42, i32 %46, i32* %48, i32 %49)
  %51 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %52 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %54 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %40
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %61 = call i32 @devm_kfree(%struct.TYPE_5__* %59, %struct.fsl_qdma_queue* %60)
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %2, align 8
  br label %79

62:                                               ; preds = %40
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %65 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %67 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %70 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %72 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %75 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  %77 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %6, align 8
  store %struct.fsl_qdma_queue* %78, %struct.fsl_qdma_queue** %2, align 8
  br label %79

79:                                               ; preds = %62, %57, %39, %28, %16
  %80 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %2, align 8
  ret %struct.fsl_qdma_queue* %80
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.fsl_qdma_queue* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.TYPE_5__*, i32, i32*, i32) #1

declare dso_local i32 @devm_kfree(%struct.TYPE_5__*, %struct.fsl_qdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
