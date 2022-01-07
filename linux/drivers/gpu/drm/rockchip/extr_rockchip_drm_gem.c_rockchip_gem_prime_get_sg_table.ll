; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_gem.c_rockchip_gem_prime_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.rockchip_gem_object = type { i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to allocate sgt, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sg_table* @rockchip_gem_prime_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.sg_table*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.rockchip_gem_object*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %9 = call %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object* %8)
  store %struct.rockchip_gem_object* %9, %struct.rockchip_gem_object** %4, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %19 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %22 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sg_table* @drm_prime_pages_to_sg(i64 %20, i32 %23)
  store %struct.sg_table* %24, %struct.sg_table** %2, align 8
  br label %63

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sg_table* @kzalloc(i32 4, i32 %26)
  store %struct.sg_table* %27, %struct.sg_table** %6, align 8
  %28 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %29 = icmp ne %struct.sg_table* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.sg_table* @ERR_PTR(i32 %32)
  store %struct.sg_table* %33, %struct.sg_table** %2, align 8
  br label %63

34:                                               ; preds = %25
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %39 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %40 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %43 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rockchip_gem_object*, %struct.rockchip_gem_object** %4, align 8
  %49 = getelementptr inbounds %struct.rockchip_gem_object, %struct.rockchip_gem_object* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_get_sgtable_attrs(i32 %37, %struct.sg_table* %38, i32 %41, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %58 = call i32 @kfree(%struct.sg_table* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.sg_table* @ERR_PTR(i32 %59)
  store %struct.sg_table* %60, %struct.sg_table** %2, align 8
  br label %63

61:                                               ; preds = %34
  %62 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  store %struct.sg_table* %62, %struct.sg_table** %2, align 8
  br label %63

63:                                               ; preds = %61, %54, %30, %17
  %64 = load %struct.sg_table*, %struct.sg_table** %2, align 8
  ret %struct.sg_table* %64
}

declare dso_local %struct.rockchip_gem_object* @to_rockchip_obj(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @drm_prime_pages_to_sg(i64, i32) #1

declare dso_local %struct.sg_table* @kzalloc(i32, i32) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @dma_get_sgtable_attrs(i32, %struct.sg_table*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
