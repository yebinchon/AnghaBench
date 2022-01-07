; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_base.c_nvkm_fault_oneinit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_base.c_nvkm_fault_oneinit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault = type { %struct.TYPE_4__*, %struct.nvkm_fault_buffer**, %struct.nvkm_subdev }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (%struct.nvkm_fault_buffer*)* }
%struct.nvkm_fault_buffer = type { i32, i32, i64, i32, %struct.nvkm_fault* }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buffer %d: %d entries\0A\00", align 1
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fault*, i32)* @nvkm_fault_oneinit_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fault_oneinit_buffer(%struct.nvkm_fault* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_fault_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_fault* %0, %struct.nvkm_fault** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nvkm_fault*, %struct.nvkm_fault** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %10, i32 0, i32 2
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %6, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvkm_fault_buffer* @kzalloc(i32 32, i32 %15)
  store %struct.nvkm_fault_buffer* %16, %struct.nvkm_fault_buffer** %8, align 8
  %17 = icmp ne %struct.nvkm_fault_buffer* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.nvkm_fault*, %struct.nvkm_fault** %4, align 8
  %23 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %23, i32 0, i32 4
  store %struct.nvkm_fault* %22, %struct.nvkm_fault** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.nvkm_fault*, %struct.nvkm_fault** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.nvkm_fault_buffer*)*, i32 (%struct.nvkm_fault_buffer*)** %32, align 8
  %34 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %35 = call i32 %33(%struct.nvkm_fault_buffer* %34)
  %36 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %37 = load %struct.nvkm_fault*, %struct.nvkm_fault** %4, align 8
  %38 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %37, i32 0, i32 1
  %39 = load %struct.nvkm_fault_buffer**, %struct.nvkm_fault_buffer*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %39, i64 %41
  store %struct.nvkm_fault_buffer* %36, %struct.nvkm_fault_buffer** %42, align 8
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %46 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nvkm_debug(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %50 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %51 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %52 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nvkm_fault*, %struct.nvkm_fault** %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %53, %59
  %61 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %61, i32 0, i32 3
  %63 = call i32 @nvkm_memory_new(%struct.nvkm_device* %49, i32 %50, i32 %60, i32 4096, i32 1, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %21
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %83

68:                                               ; preds = %21
  %69 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @nvkm_memory_bar2(i32 %71)
  %73 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %74 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.nvkm_fault_buffer*, %struct.nvkm_fault_buffer** %8, align 8
  %76 = getelementptr inbounds %struct.nvkm_fault_buffer, %struct.nvkm_fault_buffer* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %66, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.nvkm_fault_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @nvkm_memory_bar2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
