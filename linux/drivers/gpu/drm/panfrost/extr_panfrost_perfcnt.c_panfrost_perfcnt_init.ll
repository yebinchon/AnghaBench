; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_perfcnt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.panfrost_perfcnt*, i32, %struct.TYPE_2__ }
%struct.panfrost_perfcnt = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HW_FEATURE_V4 = common dso_local global i32 0, align 4
@BLOCKS_PER_COREGROUP = common dso_local global i32 0, align 4
@COUNTERS_PER_BLOCK = common dso_local global i32 0, align 4
@BYTES_PER_COUNTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG = common dso_local global i32 0, align 4
@GPU_PERFCNT_CFG_MODE_OFF = common dso_local global i32 0, align 4
@GPU_PRFCNT_JM_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_SHADER_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_MMU_L2_EN = common dso_local global i32 0, align 4
@GPU_PRFCNT_TILER_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_perfcnt_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca %struct.panfrost_perfcnt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %10 = load i32, i32* @HW_FEATURE_V4, align 4
  %11 = call i64 @panfrost_has_hw_feature(%struct.panfrost_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %15 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hweight64(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BLOCKS_PER_COREGROUP, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* @COUNTERS_PER_BLOCK, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, i32* @BYTES_PER_COUNTER, align 4
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %29 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = call i32 @GENMASK(i32 3, i32 0)
  %34 = and i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %37 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fls64(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %41, %42
  %44 = add i32 %43, 2
  %45 = load i32, i32* @COUNTERS_PER_BLOCK, align 4
  %46 = mul i32 %44, %45
  %47 = load i32, i32* @BYTES_PER_COUNTER, align 4
  %48 = mul i32 %46, %47
  %49 = zext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %27, %13
  %51 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %52 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.panfrost_perfcnt* @devm_kzalloc(i32 %53, i32 16, i32 %54)
  store %struct.panfrost_perfcnt* %55, %struct.panfrost_perfcnt** %4, align 8
  %56 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %57 = icmp ne %struct.panfrost_perfcnt* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %91

61:                                               ; preds = %50
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %64 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %66 = load i32, i32* @GPU_PERFCNT_CFG, align 4
  %67 = load i32, i32* @GPU_PERFCNT_CFG_MODE_OFF, align 4
  %68 = call i32 @GPU_PERFCNT_CFG_MODE(i32 %67)
  %69 = call i32 @gpu_write(%struct.panfrost_device* %65, i32 %66, i32 %68)
  %70 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %71 = load i32, i32* @GPU_PRFCNT_JM_EN, align 4
  %72 = call i32 @gpu_write(%struct.panfrost_device* %70, i32 %71, i32 0)
  %73 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %74 = load i32, i32* @GPU_PRFCNT_SHADER_EN, align 4
  %75 = call i32 @gpu_write(%struct.panfrost_device* %73, i32 %74, i32 0)
  %76 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %77 = load i32, i32* @GPU_PRFCNT_MMU_L2_EN, align 4
  %78 = call i32 @gpu_write(%struct.panfrost_device* %76, i32 %77, i32 0)
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %80 = load i32, i32* @GPU_PRFCNT_TILER_EN, align 4
  %81 = call i32 @gpu_write(%struct.panfrost_device* %79, i32 %80, i32 0)
  %82 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %83 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %82, i32 0, i32 2
  %84 = call i32 @init_completion(i32* %83)
  %85 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %86 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %85, i32 0, i32 1
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %4, align 8
  %89 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %90 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %89, i32 0, i32 0
  store %struct.panfrost_perfcnt* %88, %struct.panfrost_perfcnt** %90, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %61, %58
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @panfrost_has_hw_feature(%struct.panfrost_device*, i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @fls64(i32) #1

declare dso_local %struct.panfrost_perfcnt* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @GPU_PERFCNT_CFG_MODE(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
