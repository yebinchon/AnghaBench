; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_get_surface_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_get_surface_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i64, i64, %struct.TYPE_6__, i32, i32, %struct.radeon_device* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_device = type { %struct.radeon_surface_reg* }
%struct.radeon_surface_reg = type { %struct.radeon_bo* }

@RADEON_GEM_MAX_SURFACES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"stealing surface reg %d from %p\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_get_surface_reg(%struct.radeon_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_bo*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_surface_reg*, align 8
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %3, align 8
  %9 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %9, i32 0, i32 5
  %11 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  store %struct.radeon_device* %11, %struct.radeon_device** %4, align 8
  %12 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dma_resv_assert_held(i32 %16)
  %18 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %131

23:                                               ; preds = %1
  %24 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %30, align 8
  %32 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %31, i64 %34
  store %struct.radeon_surface_reg* %35, %struct.radeon_surface_reg** %5, align 8
  %36 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  br label %108

40:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %68, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @RADEON_GEM_MAX_SURFACES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %48, i64 %50
  store %struct.radeon_surface_reg* %51, %struct.radeon_surface_reg** %5, align 8
  %52 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %52, i32 0, i32 0
  %54 = load %struct.radeon_bo*, %struct.radeon_bo** %53, align 8
  %55 = icmp ne %struct.radeon_bo* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %71

57:                                               ; preds = %45
  %58 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %58, i32 0, i32 0
  %60 = load %struct.radeon_bo*, %struct.radeon_bo** %59, align 8
  store %struct.radeon_bo* %60, %struct.radeon_bo** %6, align 8
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %41

71:                                               ; preds = %56, %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @RADEON_GEM_MAX_SURFACES, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %131

81:                                               ; preds = %75
  %82 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 0
  %84 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %84, i64 %86
  store %struct.radeon_surface_reg* %87, %struct.radeon_surface_reg** %5, align 8
  %88 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %88, i32 0, i32 0
  %90 = load %struct.radeon_bo*, %struct.radeon_bo** %89, align 8
  store %struct.radeon_bo* %90, %struct.radeon_bo** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %93 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %91, %struct.radeon_bo* %92)
  %94 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %94, i32 0, i32 2
  %96 = call i32 @ttm_bo_unmap_virtual(%struct.TYPE_6__* %95)
  %97 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %97, i32 0, i32 0
  store i64 -1, i64* %98, align 8
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %81, %71
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %104 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %106 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %106, i32 0, i32 0
  store %struct.radeon_bo* %105, %struct.radeon_bo** %107, align 8
  br label %108

108:                                              ; preds = %100, %28
  %109 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PAGE_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PAGE_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = call i32 @radeon_set_surface_reg(%struct.radeon_device* %109, i32 %110, i32 %113, i32 %116, i32 %123, i32 %129)
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %108, %78, %22
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, %struct.radeon_bo*) #1

declare dso_local i32 @ttm_bo_unmap_virtual(%struct.TYPE_6__*) #1

declare dso_local i32 @radeon_set_surface_reg(%struct.radeon_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
