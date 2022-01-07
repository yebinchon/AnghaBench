; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_set_plane_base_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_planes.c_malidp_set_plane_base_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i64 }
%struct.malidp_plane = type { i32, %struct.TYPE_2__*, %struct.drm_plane }
%struct.TYPE_2__ = type { i64 }
%struct.drm_plane = type { i32 }
%struct.drm_gem_cma_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_framebuffer*, %struct.malidp_plane*, i32)* @malidp_set_plane_base_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_set_plane_base_addr(%struct.drm_framebuffer* %0, %struct.malidp_plane* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.malidp_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_gem_cma_object*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store %struct.malidp_plane* %1, %struct.malidp_plane** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.malidp_plane*, %struct.malidp_plane** %5, align 8
  %13 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %12, i32 0, i32 2
  store %struct.drm_plane* %13, %struct.drm_plane** %9, align 8
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %10, align 4
  %20 = load %struct.malidp_plane*, %struct.malidp_plane** %5, align 8
  %21 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %33 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer* %32, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %39, i32 %40)
  store %struct.drm_gem_cma_object* %41, %struct.drm_gem_cma_object** %11, align 8
  %42 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %43 = icmp ne %struct.drm_gem_cma_object* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %69

49:                                               ; preds = %38
  %50 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %51 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %31
  %54 = load %struct.malidp_plane*, %struct.malidp_plane** %5, align 8
  %55 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @malidp_hw_write(i32 %56, i32 %58, i64 %59)
  %61 = load %struct.malidp_plane*, %struct.malidp_plane** %5, align 8
  %62 = getelementptr inbounds %struct.malidp_plane, %struct.malidp_plane* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @upper_32_bits(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 4
  %68 = call i32 @malidp_hw_write(i32 %63, i32 %65, i64 %67)
  br label %69

69:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @drm_fb_cma_get_gem_addr(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @malidp_hw_write(i32, i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
