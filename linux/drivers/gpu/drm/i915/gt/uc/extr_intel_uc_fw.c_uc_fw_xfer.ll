; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_uc_fw_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c_uc_fw_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i32, i32 }
%struct.intel_gt = type { %struct.TYPE_4__*, i32, %struct.intel_uncore* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_uncore = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@FORCEWAKE_ALL = common dso_local global i32 0, align 4
@DMA_ADDR_0_LOW = common dso_local global i32 0, align 4
@DMA_ADDR_0_HIGH = common dso_local global i32 0, align 4
@DMA_ADDR_1_LOW = common dso_local global i32 0, align 4
@DMA_ADDR_1_HIGH = common dso_local global i32 0, align 4
@DMA_ADDRESS_SPACE_WOPCM = common dso_local global i32 0, align 4
@DMA_COPY_SIZE = common dso_local global i32 0, align 4
@DMA_CTRL = common dso_local global i32 0, align 4
@START_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DMA for %s fw failed, DMA_CTRL=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uc_fw*, %struct.intel_gt*, i32, i32)* @uc_fw_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uc_fw_xfer(%struct.intel_uc_fw* %0, %struct.intel_gt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_uc_fw*, align 8
  %7 = alloca %struct.intel_gt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_uncore*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %6, align 8
  store %struct.intel_gt* %1, %struct.intel_gt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %14 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %13, i32 0, i32 2
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  store %struct.intel_uncore* %15, %struct.intel_uncore** %10, align 8
  %16 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @i915_inject_load_error(%struct.TYPE_4__* %18, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %104

26:                                               ; preds = %4
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %28 = load i32, i32* @FORCEWAKE_ALL, align 4
  %29 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %27, i32 %28)
  %30 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %31 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %32 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @upper_32_bits(i32 %35)
  %37 = and i32 %36, -65536
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %40 = load i32, i32* @DMA_ADDR_0_LOW, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @lower_32_bits(i32 %41)
  %43 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %39, i32 %40, i32 %42)
  %44 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %45 = load i32, i32* @DMA_ADDR_0_HIGH, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @upper_32_bits(i32 %46)
  %48 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %44, i32 %45, i32 %47)
  %49 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %50 = load i32, i32* @DMA_ADDR_1_LOW, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %49, i32 %50, i32 %51)
  %53 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %54 = load i32, i32* @DMA_ADDR_1_HIGH, align 4
  %55 = load i32, i32* @DMA_ADDRESS_SPACE_WOPCM, align 4
  %56 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %53, i32 %54, i32 %55)
  %57 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %58 = load i32, i32* @DMA_COPY_SIZE, align 4
  %59 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %60 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %57, i32 %58, i32 %64)
  %66 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %67 = load i32, i32* @DMA_CTRL, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @START_DMA, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @_MASKED_BIT_ENABLE(i32 %70)
  %72 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %66, i32 %67, i32 %71)
  %73 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %74 = load i32, i32* @DMA_CTRL, align 4
  %75 = load i32, i32* @START_DMA, align 4
  %76 = call i32 @intel_wait_for_register_fw(%struct.intel_uncore* %73, i32 %74, i32 %75, i32 0, i32 100)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %26
  %80 = load %struct.intel_gt*, %struct.intel_gt** %7, align 8
  %81 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %6, align 8
  %87 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @intel_uc_fw_type_repr(i32 %88)
  %90 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %91 = load i32, i32* @DMA_CTRL, align 4
  %92 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %90, i32 %91)
  %93 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %79, %26
  %95 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %96 = load i32, i32* @DMA_CTRL, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @_MASKED_BIT_DISABLE(i32 %97)
  %99 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %95, i32 %96, i32 %98)
  %100 = load %struct.intel_uncore*, %struct.intel_uncore** %10, align 8
  %101 = load i32, i32* @FORCEWAKE_ALL, align 4
  %102 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %94, %24
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @i915_inject_load_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i32 @uc_fw_ggtt_offset(%struct.intel_uc_fw*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @intel_uc_fw_type_repr(i32) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
