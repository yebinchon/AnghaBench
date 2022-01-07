; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c_qcom_scm_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c_qcom_scm_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qcom_scm_command = type { i8*, i8*, i8*, i8* }
%struct.qcom_scm_response = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@qcom_scm_lock = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i8*, i64, i8*, i64)* @qcom_scm_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_scm_call(%struct.device* %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.qcom_scm_command*, align 8
  %18 = alloca %struct.qcom_scm_response*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i64, i64* %13, align 8
  %22 = add i64 32, %21
  %23 = add i64 %22, 8
  %24 = load i64, i64* %15, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* %19, align 8
  %27 = call i32 @PAGE_ALIGN(i64 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.qcom_scm_command* @kzalloc(i32 %27, i32 %28)
  store %struct.qcom_scm_command* %29, %struct.qcom_scm_command** %17, align 8
  %30 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %31 = icmp ne %struct.qcom_scm_command* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %143

35:                                               ; preds = %7
  %36 = load i64, i64* %19, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %40 = getelementptr inbounds %struct.qcom_scm_command, %struct.qcom_scm_command* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = call i8* @cpu_to_le32(i32 32)
  %42 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %43 = getelementptr inbounds %struct.qcom_scm_command, %struct.qcom_scm_command* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add i64 32, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %49 = getelementptr inbounds %struct.qcom_scm_command, %struct.qcom_scm_command* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 10
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %51, %52
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %56 = getelementptr inbounds %struct.qcom_scm_command, %struct.qcom_scm_command* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %35
  %60 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %61 = call i8* @qcom_scm_get_command_buffer(%struct.qcom_scm_command* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  br label %65

65:                                               ; preds = %59, %35
  %66 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %67 = call %struct.qcom_scm_response* @qcom_scm_command_to_response(%struct.qcom_scm_command* %66)
  store %struct.qcom_scm_response* %67, %struct.qcom_scm_response** %18, align 8
  %68 = load %struct.device*, %struct.device** %9, align 8
  %69 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i64 @dma_map_single(%struct.device* %68, %struct.qcom_scm_command* %69, i64 %70, i32 %71)
  store i64 %72, i64* %20, align 8
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = load i64, i64* %20, align 8
  %75 = call i64 @dma_mapping_error(%struct.device* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %79 = call i32 @kfree(%struct.qcom_scm_command* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %143

82:                                               ; preds = %65
  %83 = call i32 @mutex_lock(i32* @qcom_scm_lock)
  %84 = load i64, i64* %20, align 8
  %85 = call i32 @smc(i64 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @qcom_scm_remap_error(i32 %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = call i32 @mutex_unlock(i32* @qcom_scm_lock)
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %134

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %105, %96
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = load i64, i64* %20, align 8
  %100 = add i64 %99, 32
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %100, %101
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_sync_single_for_cpu(%struct.device* %98, i64 %102, i64 8, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load %struct.qcom_scm_response*, %struct.qcom_scm_response** %18, align 8
  %107 = getelementptr inbounds %struct.qcom_scm_response, %struct.qcom_scm_response* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %97, label %111

111:                                              ; preds = %105
  %112 = load i8*, i8** %14, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load i64, i64* %20, align 8
  %117 = add i64 %116, 32
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.qcom_scm_response*, %struct.qcom_scm_response** %18, align 8
  %121 = getelementptr inbounds %struct.qcom_scm_response, %struct.qcom_scm_response* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @le32_to_cpu(i32 %122)
  %124 = add i64 %119, %123
  %125 = load i64, i64* %15, align 8
  %126 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %127 = call i32 @dma_sync_single_for_cpu(%struct.device* %115, i64 %124, i64 %125, i32 %126)
  %128 = load i8*, i8** %14, align 8
  %129 = load %struct.qcom_scm_response*, %struct.qcom_scm_response** %18, align 8
  %130 = call i8* @qcom_scm_get_response_buffer(%struct.qcom_scm_response* %129)
  %131 = load i64, i64* %15, align 8
  %132 = call i32 @memcpy(i8* %128, i8* %130, i64 %131)
  br label %133

133:                                              ; preds = %114, %111
  br label %134

134:                                              ; preds = %133, %95
  %135 = load %struct.device*, %struct.device** %9, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i32, i32* @DMA_TO_DEVICE, align 4
  %139 = call i32 @dma_unmap_single(%struct.device* %135, i64 %136, i64 %137, i32 %138)
  %140 = load %struct.qcom_scm_command*, %struct.qcom_scm_command** %17, align 8
  %141 = call i32 @kfree(%struct.qcom_scm_command* %140)
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %134, %77, %32
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local %struct.qcom_scm_command* @kzalloc(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @qcom_scm_get_command_buffer(%struct.qcom_scm_command*) #1

declare dso_local %struct.qcom_scm_response* @qcom_scm_command_to_response(%struct.qcom_scm_command*) #1

declare dso_local i64 @dma_map_single(%struct.device*, %struct.qcom_scm_command*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @kfree(%struct.qcom_scm_command*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smc(i64) #1

declare dso_local i32 @qcom_scm_remap_error(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i64, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @qcom_scm_get_response_buffer(%struct.qcom_scm_response*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
