; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i64 }
%struct.msm_gem_object = type { i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@MSM_BO_WC = common dso_local global i32 0, align 4
@MSM_BO_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_mmap_obj(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %6)
  store %struct.msm_gem_object* %7, %struct.msm_gem_object** %5, align 8
  %8 = load i32, i32* @VM_PFNMAP, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @VM_MIXEDMAP, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %20 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSM_BO_WC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vm_get_page_prot(i32 %28)
  %30 = call i32 @pgprot_writecombine(i32 %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %71

33:                                               ; preds = %2
  %34 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %35 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vm_get_page_prot(i32 %43)
  %45 = call i32 @pgprot_noncached(i32 %44)
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %70

48:                                               ; preds = %33
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @fput(i32 %51)
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %54 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @get_file(i32 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %60 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vm_get_page_prot(i32 %66)
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %48, %40
  br label %71

71:                                               ; preds = %70, %25
  ret i32 0
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @get_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
