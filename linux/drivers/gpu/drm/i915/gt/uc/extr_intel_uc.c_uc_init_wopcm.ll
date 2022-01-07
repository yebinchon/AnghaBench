; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_uc_init_wopcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_uc_init_wopcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { i32 }
%struct.intel_gt = type { %struct.TYPE_3__*, %struct.intel_uncore* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_uncore = type { i32 }

@HUC_LOADING_AGENT_GUC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsuccessful WOPCM partitioning\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@GUC_WOPCM_OFFSET_MASK = common dso_local global i32 0, align 4
@GUC_WOPCM_SIZE_MASK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GUC_WOPCM_SIZE_LOCKED = common dso_local global i32 0, align 4
@GUC_WOPCM_SIZE = common dso_local global i32 0, align 4
@GUC_WOPCM_OFFSET_VALID = common dso_local global i32 0, align 4
@DMA_GUC_WOPCM_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to init uC WOPCM registers!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s(%#x)=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"DMA_GUC_WOPCM_OFFSET\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"GUC_WOPCM_SIZE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uc*)* @uc_init_wopcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uc_init_wopcm(%struct.intel_uc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_uc*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %3, align 8
  %11 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %12 = call %struct.intel_gt* @uc_to_gt(%struct.intel_uc* %11)
  store %struct.intel_gt* %12, %struct.intel_gt** %4, align 8
  %13 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %14 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %13, i32 0, i32 1
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  store %struct.intel_uncore* %15, %struct.intel_uncore** %5, align 8
  %16 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @intel_wopcm_guc_base(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %22 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @intel_wopcm_guc_size(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %27 = call i64 @intel_uc_uses_huc(%struct.intel_uc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @HUC_LOADING_AGENT_GUC, align 4
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ true, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %47 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = call i32 (%struct.TYPE_3__*, i8*, ...) @i915_probe_error(%struct.TYPE_3__* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @E2BIG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %154

52:                                               ; preds = %40
  %53 = load %struct.intel_uc*, %struct.intel_uc** %3, align 8
  %54 = call i32 @intel_uc_supports_guc(%struct.intel_uc* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @GEM_BUG_ON(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GUC_WOPCM_OFFSET_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @GEM_BUG_ON(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @GUC_WOPCM_OFFSET_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @GEM_BUG_ON(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @GUC_WOPCM_SIZE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @GEM_BUG_ON(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @GUC_WOPCM_SIZE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @GEM_BUG_ON(i32 %81)
  %83 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %84 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @i915_inject_load_error(%struct.TYPE_3__* %85, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %52
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  br label %154

93:                                               ; preds = %52
  %94 = load i32, i32* @GUC_WOPCM_SIZE_MASK, align 4
  %95 = load i32, i32* @GUC_WOPCM_SIZE_LOCKED, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %98 = load i32, i32* @GUC_WOPCM_SIZE, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @GUC_WOPCM_SIZE_LOCKED, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @intel_uncore_write_and_verify(%struct.intel_uncore* %97, i32 %98, i32 %99, i32 %100, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %130

108:                                              ; preds = %93
  %109 = load i32, i32* @GUC_WOPCM_OFFSET_MASK, align 4
  %110 = load i32, i32* @GUC_WOPCM_OFFSET_VALID, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %9, align 4
  %114 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %115 = load i32, i32* @DMA_GUC_WOPCM_OFFSET, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @GUC_WOPCM_OFFSET_VALID, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @intel_uncore_write_and_verify(%struct.intel_uncore* %114, i32 %115, i32 %118, i32 %119, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %108
  br label %130

129:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %154

130:                                              ; preds = %128, %107
  %131 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %132 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = call i32 (%struct.TYPE_3__*, i8*, ...) @i915_probe_error(%struct.TYPE_3__* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %136 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* @DMA_GUC_WOPCM_OFFSET, align 4
  %139 = call i32 @i915_mmio_reg_offset(i32 %138)
  %140 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %141 = load i32, i32* @DMA_GUC_WOPCM_OFFSET, align 4
  %142 = call i32 @intel_uncore_read(%struct.intel_uncore* %140, i32 %141)
  %143 = call i32 (%struct.TYPE_3__*, i8*, ...) @i915_probe_error(%struct.TYPE_3__* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %145 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* @GUC_WOPCM_SIZE, align 4
  %148 = call i32 @i915_mmio_reg_offset(i32 %147)
  %149 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %150 = load i32, i32* @GUC_WOPCM_SIZE, align 4
  %151 = call i32 @intel_uncore_read(%struct.intel_uncore* %149, i32 %150)
  %152 = call i32 (%struct.TYPE_3__*, i8*, ...) @i915_probe_error(%struct.TYPE_3__* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %130, %129, %91, %45
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.intel_gt* @uc_to_gt(%struct.intel_uc*) #1

declare dso_local i32 @intel_wopcm_guc_base(i32*) #1

declare dso_local i32 @intel_wopcm_guc_size(i32*) #1

declare dso_local i64 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_probe_error(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_supports_guc(%struct.intel_uc*) #1

declare dso_local i32 @i915_inject_load_error(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @intel_uncore_write_and_verify(%struct.intel_uncore*, i32, i32, i32, i32) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
