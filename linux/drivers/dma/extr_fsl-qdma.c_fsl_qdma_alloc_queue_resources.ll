; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_alloc_queue_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_alloc_queue_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qdma_queue = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.platform_device = type { i32 }
%struct.fsl_qdma_engine = type { i32, i32, i64 }

@FSL_QDMA_QUEUE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"queue-sizes\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't get queue-sizes.\0A\00", align 1
@FSL_QDMA_CIRCULAR_DESC_SIZE_MAX = common dso_local global i32 0, align 4
@FSL_QDMA_CIRCULAR_DESC_SIZE_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Get wrong queue-sizes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_qdma_queue* (%struct.platform_device*, %struct.fsl_qdma_engine*)* @fsl_qdma_alloc_queue_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_qdma_queue* @fsl_qdma_alloc_queue_resources(%struct.platform_device* %0, %struct.fsl_qdma_engine* %1) #0 {
  %3 = alloca %struct.fsl_qdma_queue*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.fsl_qdma_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fsl_qdma_queue*, align 8
  %15 = alloca %struct.fsl_qdma_queue*, align 8
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.fsl_qdma_engine* %1, %struct.fsl_qdma_engine** %5, align 8
  %17 = load i32, i32* @FSL_QDMA_QUEUE_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %22 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @FSL_QDMA_QUEUE_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @FSL_QDMA_QUEUE_MAX, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 56, %34
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.fsl_qdma_queue* @devm_kzalloc(i32* %41, i32 %42, i32 %43)
  store %struct.fsl_qdma_queue* %44, %struct.fsl_qdma_queue** %14, align 8
  %45 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %14, align 8
  %46 = icmp ne %struct.fsl_qdma_queue* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %3, align 8
  store i32 1, i32* %16, align 4
  br label %161

48:                                               ; preds = %32
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @device_property_read_u32_array(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %20, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %3, align 8
  store i32 1, i32* %16, align 4
  br label %161

59:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %156, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %159

64:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %152, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %155

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %20, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FSL_QDMA_CIRCULAR_DESC_SIZE_MAX, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %20, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FSL_QDMA_CIRCULAR_DESC_SIZE_MIN, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %76, %69
  %84 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %3, align 8
  store i32 1, i32* %16, align 4
  br label %161

87:                                               ; preds = %76
  %88 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %14, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %88, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %91, i64 %95
  store %struct.fsl_qdma_queue* %96, %struct.fsl_qdma_queue** %15, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %20, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = trunc i64 %104 to i32
  %106 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %107 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %106, i32 0, i32 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i64 @dma_alloc_coherent(i32* %98, i32 %105, i32* %107, i32 %108)
  %110 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %111 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %113 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %87
  store %struct.fsl_qdma_queue* null, %struct.fsl_qdma_queue** %3, align 8
  store i32 1, i32* %16, align 4
  br label %161

117:                                              ; preds = %87
  %118 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %119 = getelementptr inbounds %struct.fsl_qdma_engine, %struct.fsl_qdma_engine* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.fsl_qdma_engine*, %struct.fsl_qdma_engine** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @FSL_QDMA_BLOCK_BASE_OFFSET(%struct.fsl_qdma_engine* %121, i32 %122)
  %124 = add nsw i64 %120, %123
  %125 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %126 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %125, i32 0, i32 7
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %20, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %132 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %135 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %137 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %140 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %139, i32 0, i32 6
  store i64 %138, i64* %140, align 8
  %141 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %142 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %145 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %144, i32 0, i32 5
  store i64 %143, i64* %145, align 8
  %146 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %147 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %146, i32 0, i32 3
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %15, align 8
  %150 = getelementptr inbounds %struct.fsl_qdma_queue, %struct.fsl_qdma_queue* %149, i32 0, i32 2
  %151 = call i32 @spin_lock_init(i32* %150)
  br label %152

152:                                              ; preds = %117
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %65

155:                                              ; preds = %65
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %60

159:                                              ; preds = %60
  %160 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %14, align 8
  store %struct.fsl_qdma_queue* %160, %struct.fsl_qdma_queue** %3, align 8
  store i32 1, i32* %16, align 4
  br label %161

161:                                              ; preds = %159, %116, %83, %55, %47
  %162 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load %struct.fsl_qdma_queue*, %struct.fsl_qdma_queue** %3, align 8
  ret %struct.fsl_qdma_queue* %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.fsl_qdma_queue* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @device_property_read_u32_array(i32*, i8*, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i64 @FSL_QDMA_BLOCK_BASE_OFFSET(%struct.fsl_qdma_engine*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
