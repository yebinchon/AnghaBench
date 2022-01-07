; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_check_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_check_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@RADEON_TILING_SURFACE = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_check_tiling(%struct.radeon_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %12 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dma_resv_assert_held(i32 %15)
  br label %17

17:                                               ; preds = %10, %3
  %18 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RADEON_TILING_SURFACE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %64

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %30 = call i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo* %29)
  store i32 0, i32* %4, align 4
  br label %64

31:                                               ; preds = %25
  %32 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %33 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TTM_PL_VRAM, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %64

43:                                               ; preds = %39
  %44 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %50 = call i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo* %49)
  br label %51

51:                                               ; preds = %48, %43
  store i32 0, i32* %4, align 4
  br label %64

52:                                               ; preds = %31
  %53 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %54 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %64

61:                                               ; preds = %57, %52
  %62 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %63 = call i32 @radeon_bo_get_surface_reg(%struct.radeon_bo* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %60, %51, %42, %28, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @dma_resv_assert_held(i32) #1

declare dso_local i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_surface_reg(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
