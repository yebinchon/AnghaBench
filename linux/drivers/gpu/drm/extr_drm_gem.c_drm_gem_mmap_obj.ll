; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_3__ = type { i64 }
%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32, i32, %struct.drm_gem_object*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_mmap_obj(%struct.drm_gem_object* %0, i64 %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.drm_device*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = icmp ult i64 %12, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %93

24:                                               ; preds = %3
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %26 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %38 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  br label %63

44:                                               ; preds = %29, %24
  %45 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  br label %62

59:                                               ; preds = %44
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %93

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* @VM_IO, align 4
  %65 = load i32, i32* @VM_PFNMAP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @VM_DONTEXPAND, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @VM_DONTDUMP, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 4
  store %struct.drm_gem_object* %75, %struct.drm_gem_object** %77, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vm_get_page_prot(i32 %80)
  %82 = call i32 @pgprot_writecombine(i32 %81)
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pgprot_decrypted(i32 %87)
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %92 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %63, %59, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_decrypted(i32) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
