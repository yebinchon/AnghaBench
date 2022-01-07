; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wopcm.c_intel_wopcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_wopcm.c_intel_wopcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_wopcm = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_9__, %struct.intel_gt }
%struct.TYPE_9__ = type { i32 }
%struct.intel_gt = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@WOPCM_RESERVED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"GuC WOPCM is already locked [%uK, %uK)\0A\00", align 1
@SZ_1K = common dso_local global i64 0, align 8
@GUC_WOPCM_OFFSET_ALIGNMENT = common dso_local global i32 0, align 4
@GUC_WOPCM_SIZE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Calculated GuC WOPCM [%uK, %uK)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_wopcm_init(%struct.intel_wopcm* %0) #0 {
  %2 = alloca %struct.intel_wopcm*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.intel_wopcm* %0, %struct.intel_wopcm** %2, align 8
  %10 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %11 = call %struct.drm_i915_private* @wopcm_to_i915(%struct.intel_wopcm* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 1
  store %struct.intel_gt* %13, %struct.intel_gt** %4, align 8
  %14 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i64 @intel_uc_fw_get_upload_size(i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %20 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i64 @intel_uc_fw_get_upload_size(i32* %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = call i64 @context_reserved_size(%struct.drm_i915_private* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %165

29:                                               ; preds = %1
  %30 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %31 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  %37 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %38 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @GEM_BUG_ON(i32 %40)
  %42 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %43 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GEM_BUG_ON(i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %49 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @GEM_BUG_ON(i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %56 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @GEM_BUG_ON(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @WOPCM_RESERVED_SIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %65 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @GEM_BUG_ON(i32 %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = call i64 @i915_inject_probe_failure(%struct.drm_i915_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %29
  br label %165

74:                                               ; preds = %29
  %75 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %76 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @__wopcm_regs_locked(i32 %77, i64* %8, i64* %9)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @SZ_1K, align 8
  %87 = sdiv i64 %85, %86
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @SZ_1K, align 8
  %90 = sdiv i64 %88, %89
  %91 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %90)
  br label %127

92:                                               ; preds = %74
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @WOPCM_RESERVED_SIZE, align 8
  %95 = add nsw i64 %93, %94
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* @GUC_WOPCM_OFFSET_ALIGNMENT, align 4
  %98 = call i64 @ALIGN(i64 %96, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %101 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub nsw i64 %102, %103
  %105 = call i64 @min(i64 %99, i64 %104)
  store i64 %105, i64* %8, align 8
  %106 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %107 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = sub nsw i64 %108, %109
  %111 = load i64, i64* %8, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* %9, align 8
  %113 = load i64, i64* @GUC_WOPCM_SIZE_MASK, align 8
  %114 = load i64, i64* %9, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @SZ_1K, align 8
  %122 = sdiv i64 %120, %121
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @SZ_1K, align 8
  %125 = sdiv i64 %123, %124
  %126 = call i32 @DRM_DEV_DEBUG_DRIVER(i32 %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %122, i64 %125)
  br label %127

127:                                              ; preds = %92, %80
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %129 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %130 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i64 @__check_layout(%struct.drm_i915_private* %128, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %127
  %139 = load i64, i64* %8, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %142 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = trunc i64 %144 to i32
  %146 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %147 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %150 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @GEM_BUG_ON(i32 %155)
  %157 = load %struct.intel_wopcm*, %struct.intel_wopcm** %2, align 8
  %158 = getelementptr inbounds %struct.intel_wopcm, %struct.intel_wopcm* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i32 @GEM_BUG_ON(i32 %163)
  br label %165

165:                                              ; preds = %28, %73, %138, %127
  ret void
}

declare dso_local %struct.drm_i915_private* @wopcm_to_i915(%struct.intel_wopcm*) #1

declare dso_local i64 @intel_uc_fw_get_upload_size(i32*) #1

declare dso_local i64 @context_reserved_size(%struct.drm_i915_private*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @i915_inject_probe_failure(%struct.drm_i915_private*) #1

declare dso_local i64 @__wopcm_regs_locked(i32, i64*, i64*) #1

declare dso_local i32 @DRM_DEV_DEBUG_DRIVER(i32, i8*, i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @__check_layout(%struct.drm_i915_private*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
