; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64 }
%struct.drm_vgem_gem_object = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.drm_gem_object*)* @vgem_prime_vmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vgem_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_vgem_gem_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page**, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object* %7)
  store %struct.drm_vgem_gem_object* %8, %struct.drm_vgem_gem_object** %4, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = ashr i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %4, align 8
  %15 = call %struct.page** @vgem_pin_pages(%struct.drm_vgem_gem_object* %14)
  store %struct.page** %15, %struct.page*** %6, align 8
  %16 = load %struct.page**, %struct.page*** %6, align 8
  %17 = call i64 @IS_ERR(%struct.page** %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.page**, %struct.page*** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @PAGE_KERNEL, align 4
  %24 = call i32 @pgprot_writecombine(i32 %23)
  %25 = call i8* @vmap(%struct.page** %21, i64 %22, i32 0, i32 %24)
  store i8* %25, i8** %2, align 8
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.page** @vgem_pin_pages(%struct.drm_vgem_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i8* @vmap(%struct.page**, i64, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
