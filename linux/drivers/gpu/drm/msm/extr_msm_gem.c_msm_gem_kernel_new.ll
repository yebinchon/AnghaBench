; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_kernel_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_kernel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.msm_gem_address_space = type { i32 }
%struct.drm_gem_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @msm_gem_kernel_new(%struct.drm_device* %0, i32 %1, i32 %2, %struct.msm_gem_address_space* %3, %struct.drm_gem_object** %4, i32* %5) #0 {
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_gem_address_space*, align 8
  %11 = alloca %struct.drm_gem_object**, align 8
  %12 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.msm_gem_address_space* %3, %struct.msm_gem_address_space** %10, align 8
  store %struct.drm_gem_object** %4, %struct.drm_gem_object*** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.msm_gem_address_space*, %struct.msm_gem_address_space** %10, align 8
  %17 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %11, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i8* @_msm_gem_kernel_new(%struct.drm_device* %13, i32 %14, i32 %15, %struct.msm_gem_address_space* %16, %struct.drm_gem_object** %17, i32* %18, i32 0)
  ret i8* %19
}

declare dso_local i8* @_msm_gem_kernel_new(%struct.drm_device*, i32, i32, %struct.msm_gem_address_space*, %struct.drm_gem_object**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
