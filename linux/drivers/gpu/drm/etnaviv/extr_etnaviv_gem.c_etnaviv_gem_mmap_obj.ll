; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i32 }

@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@ETNA_BO_WC = common dso_local global i32 0, align 4
@ETNA_BO_UNCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_object*, %struct.vm_area_struct*)* @etnaviv_gem_mmap_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gem_mmap_obj(%struct.etnaviv_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %6 = load i32, i32* @VM_PFNMAP, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* @VM_MIXEDMAP, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vm_get_page_prot(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETNA_BO_WC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @pgprot_writecombine(i32 %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %66

32:                                               ; preds = %2
  %33 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %34 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETNA_BO_UNCACHED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pgprot_noncached(i32 %40)
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %65

44:                                               ; preds = %32
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fput(i32 %47)
  %49 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_file(i32 %52)
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %57 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %44, %39
  br label %66

66:                                               ; preds = %65, %27
  ret i32 0
}

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @get_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
