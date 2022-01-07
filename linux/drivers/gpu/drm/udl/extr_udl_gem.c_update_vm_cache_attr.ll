; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_update_vm_cache_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_gem.c_update_vm_cache_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_gem_object = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@UDL_BO_CACHEABLE = common dso_local global i32 0, align 4
@UDL_BO_WC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udl_gem_object*, %struct.vm_area_struct*)* @update_vm_cache_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_vm_cache_attr(%struct.udl_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.udl_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.udl_gem_object* %0, %struct.udl_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UDL_BO_CACHEABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vm_get_page_prot(i32 %18)
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.udl_gem_object*, %struct.udl_gem_object** %3, align 8
  %24 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UDL_BO_WC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vm_get_page_prot(i32 %32)
  %34 = call i32 @pgprot_writecombine(i32 %33)
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %22
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vm_get_page_prot(i32 %40)
  %42 = call i32 @pgprot_noncached(i32 %41)
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %29
  br label %46

46:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
