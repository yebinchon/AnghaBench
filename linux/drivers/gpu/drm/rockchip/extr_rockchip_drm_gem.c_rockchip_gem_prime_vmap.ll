; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.rockchip_gem_object = type { i32, i8*, i32, i64 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rockchip_gem_prime_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.rockchip_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %6 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %5)
  store %struct.rockchip_gem_object* %6, %struct.rockchip_gem_object** %4, align 8
  %7 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %8 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %13 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %16 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VM_MAP, align 4
  %19 = load i32, i32* @PAGE_KERNEL, align 4
  %20 = call i32 @pgprot_writecombine(i32 %19)
  %21 = call i8* @vmap(i64 %14, i32 %17, i32 %18, i32 %20)
  store i8* %21, i8** %2, align 8
  br label %34

22:                                               ; preds = %1
  %23 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %32 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %30, %29, %11
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local i8* @vmap(i64, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
