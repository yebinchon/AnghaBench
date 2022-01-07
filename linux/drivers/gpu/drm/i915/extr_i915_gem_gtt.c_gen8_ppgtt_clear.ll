; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GEN8_PTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, i32, i32)* @gen8_ppgtt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_ppgtt_clear(%struct.i915_address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %9 = call i32 @BIT_ULL(i32 %8)
  %10 = call i32 @IS_ALIGNED(i32 %7, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %17 = call i32 @BIT_ULL(i32 %16)
  %18 = call i32 @IS_ALIGNED(i32 %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %26 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @range_overflows(i32 %23, i32 %24, i32 %27)
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @GEN8_PTE_SHIFT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @GEM_BUG_ON(i32 %38)
  %40 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %41 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %42 = call %struct.TYPE_2__* @i915_vm_to_ppgtt(%struct.i915_address_space* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %50 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__gen8_ppgtt_clear(%struct.i915_address_space* %40, i32 %44, i32 %45, i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @range_overflows(i32, i32, i32) #1

declare dso_local i32 @__gen8_ppgtt_clear(%struct.i915_address_space*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
