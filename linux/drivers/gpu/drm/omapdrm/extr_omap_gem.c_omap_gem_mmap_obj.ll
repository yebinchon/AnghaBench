; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i64 }
%struct.omap_gem_object = type { i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@OMAP_BO_WC = common dso_local global i32 0, align 4
@OMAP_BO_UNCACHED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_mmap_obj(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.omap_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %8 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %7)
  store %struct.omap_gem_object* %8, %struct.omap_gem_object** %6, align 8
  %9 = load i32, i32* @VM_PFNMAP, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @VM_MIXEDMAP, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %21 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OMAP_BO_WC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vm_get_page_prot(i32 %29)
  %31 = call i32 @pgprot_writecombine(i32 %30)
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %81

34:                                               ; preds = %2
  %35 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %36 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OMAP_BO_UNCACHED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vm_get_page_prot(i32 %44)
  %46 = call i32 @pgprot_noncached(i32 %45)
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %80

49:                                               ; preds = %34
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %51 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %82

61:                                               ; preds = %49
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @fput(i32 %64)
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %69 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @get_file(i32 %70)
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vm_get_page_prot(i32 %76)
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %61, %41
  br label %81

81:                                               ; preds = %80, %26
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @get_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
