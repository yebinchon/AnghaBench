; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_prepare_shadow_wa_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_prepare_shadow_wa_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shadow_wa_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.i915_vma = type { i32 }

@CACHELINE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_shadow_wa_ctx*)* @prepare_shadow_wa_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_shadow_wa_ctx(%struct.intel_shadow_wa_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_shadow_wa_ctx*, align 8
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca i8*, align 8
  store %struct.intel_shadow_wa_ctx* %0, %struct.intel_shadow_wa_ctx** %3, align 8
  %6 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  store i8* %16, i8** %5, align 8
  %17 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CACHELINE_BYTES, align 4
  %29 = call %struct.i915_vma* @i915_gem_object_ggtt_pin(i32 %27, i32* null, i32 0, i32 %28, i32 0)
  store %struct.i915_vma* %29, %struct.i915_vma** %4, align 8
  %30 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %31 = call i64 @IS_ERR(%struct.i915_vma* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.i915_vma* %34)
  store i32 %35, i32* %2, align 4
  br label %54

36:                                               ; preds = %23
  %37 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  %38 = call i32 @i915_ggtt_offset(%struct.i915_vma* %37)
  %39 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.intel_shadow_wa_ctx, %struct.intel_shadow_wa_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @CACHELINE_BYTES, align 4
  %51 = call i32 @memset(i8* %49, i32 0, i32 %50)
  %52 = load %struct.intel_shadow_wa_ctx*, %struct.intel_shadow_wa_ctx** %3, align 8
  %53 = call i32 @update_wa_ctx_2_shadow_ctx(%struct.intel_shadow_wa_ctx* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %36, %33, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.i915_vma* @i915_gem_object_ggtt_pin(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @update_wa_ctx_2_shadow_ctx(%struct.intel_shadow_wa_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
