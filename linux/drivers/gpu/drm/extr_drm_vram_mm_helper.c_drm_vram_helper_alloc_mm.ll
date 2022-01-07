; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_helper_alloc_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vram_mm_helper.c_drm_vram_helper_alloc_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_vram_mm = type { i32 }
%struct.drm_device = type { %struct.drm_vram_mm* }
%struct.drm_vram_mm_funcs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_vram_mm* @drm_vram_helper_alloc_mm(%struct.drm_device* %0, i32 %1, i64 %2, %struct.drm_vram_mm_funcs* %3) #0 {
  %5 = alloca %struct.drm_vram_mm*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_vram_mm_funcs*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.drm_vram_mm_funcs* %3, %struct.drm_vram_mm_funcs** %9, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %12, align 8
  %14 = call i64 @WARN_ON(%struct.drm_vram_mm* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %18, align 8
  store %struct.drm_vram_mm* %19, %struct.drm_vram_mm** %5, align 8
  br label %58

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.drm_vram_mm* @kzalloc(i32 4, i32 %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  store %struct.drm_vram_mm* %22, %struct.drm_vram_mm** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %26, align 8
  %28 = icmp ne %struct.drm_vram_mm* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.drm_vram_mm* @ERR_PTR(i32 %31)
  store %struct.drm_vram_mm* %32, %struct.drm_vram_mm** %5, align 8
  br label %58

33:                                               ; preds = %20
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %35, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.drm_vram_mm_funcs*, %struct.drm_vram_mm_funcs** %9, align 8
  %41 = call i32 @drm_vram_mm_init(%struct.drm_vram_mm* %36, %struct.drm_device* %37, i32 %38, i64 %39, %struct.drm_vram_mm_funcs* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %47, align 8
  store %struct.drm_vram_mm* %48, %struct.drm_vram_mm** %5, align 8
  br label %58

49:                                               ; preds = %44
  %50 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %51, align 8
  %53 = call i32 @kfree(%struct.drm_vram_mm* %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  store %struct.drm_vram_mm* null, %struct.drm_vram_mm** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.drm_vram_mm* @ERR_PTR(i32 %56)
  store %struct.drm_vram_mm* %57, %struct.drm_vram_mm** %5, align 8
  br label %58

58:                                               ; preds = %49, %45, %29, %16
  %59 = load %struct.drm_vram_mm*, %struct.drm_vram_mm** %5, align 8
  ret %struct.drm_vram_mm* %59
}

declare dso_local i64 @WARN_ON(%struct.drm_vram_mm*) #1

declare dso_local %struct.drm_vram_mm* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_vram_mm* @ERR_PTR(i32) #1

declare dso_local i32 @drm_vram_mm_init(%struct.drm_vram_mm*, %struct.drm_device*, i32, i64, %struct.drm_vram_mm_funcs*) #1

declare dso_local i32 @kfree(%struct.drm_vram_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
