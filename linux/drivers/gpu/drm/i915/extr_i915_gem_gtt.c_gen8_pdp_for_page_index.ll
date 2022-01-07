; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_pdp_for_page_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_pdp_for_page_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_directory = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.i915_ppgtt = type { %struct.i915_page_directory* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_page_directory* (%struct.i915_address_space*, i32)* @gen8_pdp_for_page_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_page_directory* @gen8_pdp_for_page_index(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_page_directory*, align 8
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_ppgtt*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %8 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %7)
  store %struct.i915_ppgtt* %8, %struct.i915_ppgtt** %6, align 8
  %9 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %10 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %15 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %14, i32 0, i32 0
  %16 = load %struct.i915_page_directory*, %struct.i915_page_directory** %15, align 8
  store %struct.i915_page_directory* %16, %struct.i915_page_directory** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %19 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %18, i32 0, i32 0
  %20 = load %struct.i915_page_directory*, %struct.i915_page_directory** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %23 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gen8_pd_index(i32 %21, i32 %24)
  %26 = call %struct.i915_page_directory* @i915_pd_entry(%struct.i915_page_directory* %20, i32 %25)
  store %struct.i915_page_directory* %26, %struct.i915_page_directory** %3, align 8
  br label %27

27:                                               ; preds = %17, %13
  %28 = load %struct.i915_page_directory*, %struct.i915_page_directory** %3, align 8
  ret %struct.i915_page_directory* %28
}

declare dso_local %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

declare dso_local %struct.i915_page_directory* @i915_pd_entry(%struct.i915_page_directory*, i32) #1

declare dso_local i32 @gen8_pd_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
