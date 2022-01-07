; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GEN8_PTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_address_space*, i32, i32)* @gen8_ppgtt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_ppgtt_alloc(%struct.i915_address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %11 = call i32 @BIT_ULL(i32 %10)
  %12 = call i32 @IS_ALIGNED(i32 %9, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @GEM_BUG_ON(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %19 = call i32 @BIT_ULL(i32 %18)
  %20 = call i32 @IS_ALIGNED(i32 %17, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %28 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @range_overflows(i32 %25, i32 %26, i32 %29)
  %31 = call i32 @GEM_BUG_ON(i32 %30)
  %32 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @GEM_BUG_ON(i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %44 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %45 = call %struct.TYPE_2__* @i915_vm_to_ppgtt(%struct.i915_address_space* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %52 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__gen8_ppgtt_alloc(%struct.i915_address_space* %43, i32 %47, i32* %5, i32 %50, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br label %61

61:                                               ; preds = %57, %3
  %62 = phi i1 [ false, %3 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %68 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %69 = call %struct.TYPE_2__* @i915_vm_to_ppgtt(%struct.i915_address_space* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %75 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__gen8_ppgtt_clear(%struct.i915_address_space* %67, i32 %71, i32 %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %66, %61
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @range_overflows(i32, i32, i32) #1

declare dso_local i32 @__gen8_ppgtt_alloc(%struct.i915_address_space*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__gen8_ppgtt_clear(%struct.i915_address_space*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
