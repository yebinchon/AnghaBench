; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }

@GPU_INT_STAT = common dso_local global i32 0, align 4
@GPU_FAULT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@GPU_IRQ_MASK_ERROR = common dso_local global i32 0, align 4
@GPU_FAULT_ADDRESS_HI = common dso_local global i32 0, align 4
@GPU_FAULT_ADDRESS_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GPU Fault 0x%08x (%s) at 0x%016llx\0A\00", align 1
@GPU_IRQ_MULTIPLE_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"There were multiple GPU faults - some have not been reported\0A\00", align 1
@GPU_INT_MASK = common dso_local global i32 0, align 4
@GPU_IRQ_PERFCNT_SAMPLE_COMPLETED = common dso_local global i32 0, align 4
@GPU_IRQ_CLEAN_CACHES_COMPLETED = common dso_local global i32 0, align 4
@GPU_INT_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @panfrost_gpu_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_gpu_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.panfrost_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.panfrost_device*
  store %struct.panfrost_device* %11, %struct.panfrost_device** %6, align 8
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %13 = load i32, i32* @GPU_INT_STAT, align 4
  %14 = call i32 @gpu_read(%struct.panfrost_device* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %16 = load i32, i32* @GPU_FAULT_STATUS, align 4
  %17 = call i32 @gpu_read(%struct.panfrost_device* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GPU_IRQ_MASK_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %29 = load i32, i32* @GPU_FAULT_ADDRESS_HI, align 4
  %30 = call i32 @gpu_read(%struct.panfrost_device* %28, i32 %29)
  %31 = shl i32 %30, 32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %33 = load i32, i32* @GPU_FAULT_ADDRESS_LO, align 4
  %34 = call i32 @gpu_read(%struct.panfrost_device* %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %38 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @panfrost_exception_name(%struct.panfrost_device* %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @dev_warn(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GPU_IRQ_MULTIPLE_FAULT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %27
  %52 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %53 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_warn(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %27
  %57 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %58 = load i32, i32* @GPU_INT_MASK, align 4
  %59 = call i32 @gpu_write(%struct.panfrost_device* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %22
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @GPU_IRQ_PERFCNT_SAMPLE_COMPLETED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %67 = call i32 @panfrost_perfcnt_sample_done(%struct.panfrost_device* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @GPU_IRQ_CLEAN_CACHES_COMPLETED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %75 = call i32 @panfrost_perfcnt_clean_cache_done(%struct.panfrost_device* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.panfrost_device*, %struct.panfrost_device** %6, align 8
  %78 = load i32, i32* @GPU_INT_CLEAR, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @gpu_write(%struct.panfrost_device* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %76, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @gpu_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @panfrost_exception_name(%struct.panfrost_device*, i32) #1

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @panfrost_perfcnt_sample_done(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_perfcnt_clean_cache_done(%struct.panfrost_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
