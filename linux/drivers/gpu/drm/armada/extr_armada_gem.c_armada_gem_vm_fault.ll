; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.armada_gem_object = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @armada_gem_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_gem_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca %struct.vm_fault*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.armada_gem_object*, align 8
  %5 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %2, align 8
  %6 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %7 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %3, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = call %struct.armada_gem_object* @drm_to_armada_gem(%struct.drm_gem_object* %11)
  store %struct.armada_gem_object* %12, %struct.armada_gem_object** %4, align 8
  %13 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %14 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %5, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %20, %25
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %32 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.vm_fault*, %struct.vm_fault** %2, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @vmf_insert_pfn(%struct.TYPE_2__* %33, i64 %36, i64 %37)
  ret i32 %38
}

declare dso_local %struct.armada_gem_object* @drm_to_armada_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @vmf_insert_pfn(%struct.TYPE_2__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
