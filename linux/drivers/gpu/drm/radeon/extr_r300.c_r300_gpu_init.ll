; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@R300_ENABLE_TILING = common dso_local global i32 0, align 4
@R300_TILE_SIZE_16 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R300 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420_3P = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_R420 = common dso_local global i32 0, align 4
@R300_PIPE_COUNT_RV350 = common dso_local global i32 0, align 4
@R300_GB_TILE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Failed to wait GUI idle while programming pipes. Bad things might happen.\0A\00", align 1
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@R300_PIPE_AUTO_CONFIG = common dso_local global i32 0, align 4
@R300_RB2D_DSTCACHE_MODE = common dso_local global i32 0, align 4
@R300_DC_AUTOFLUSH_ENABLE = common dso_local global i32 0, align 4
@R300_DC_DC_DISABLE_IGNORE_PE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"radeon: %d quad pipes, %d Z pipes initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r300_gpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r300_gpu_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_R300, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 16708
  br i1 %16, label %30, label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_R350, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 16712
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %10
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  store i32 2, i32* %32, align 8
  br label %36

33:                                               ; preds = %23, %17
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @R300_ENABLE_TILING, align 4
  %40 = load i32, i32* @R300_TILE_SIZE_16, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %3, align 4
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %57 [
    i32 2, label %45
    i32 3, label %49
    i32 4, label %53
    i32 1, label %58
  ]

45:                                               ; preds = %36
  %46 = load i32, i32* @R300_PIPE_COUNT_R300, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %36
  %50 = load i32, i32* @R300_PIPE_COUNT_R420_3P, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %62

53:                                               ; preds = %36
  %54 = load i32, i32* @R300_PIPE_COUNT_R420, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %36, %57
  %59 = load i32, i32* @R300_PIPE_COUNT_RV350, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %53, %49, %45
  %63 = load i32, i32* @R300_GB_TILE_CONFIG, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  %72 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %73 = call i32 @RREG32(i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @R300_PIPE_AUTO_CONFIG, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @WREG32(i32 %74, i32 %77)
  %79 = load i32, i32* @R300_RB2D_DSTCACHE_MODE, align 4
  %80 = load i32, i32* @R300_DC_AUTOFLUSH_ENABLE, align 4
  %81 = load i32, i32* @R300_DC_DC_DISABLE_IGNORE_PE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WREG32(i32 %79, i32 %82)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %71
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = call i64 @r300_mc_wait_for_idle(%struct.radeon_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %101)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @r100_gui_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i64 @r300_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
