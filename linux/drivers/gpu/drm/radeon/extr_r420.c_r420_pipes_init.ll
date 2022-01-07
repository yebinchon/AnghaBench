; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_pipes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r420.c_r420_pipes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@R300_GA_ENHANCE = common dso_local global i32 0, align 4
@R300_GA_DEADLOCK_CNTL = common dso_local global i32 0, align 4
@R300_GA_FASTSYNC_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Failed to wait GUI idle while programming pipes. Bad things might happen.\0A\00", align 1
@R400_GB_PIPE_SELECT = common dso_local global i32 0, align 4
@R500_SU_REG_DEST = common dso_local global i32 0, align 4
@R300_TILE_SIZE_16 = common dso_local global i32 0, align 4
@R300_ENABLE_TILING = common dso_local global i32 0, align 4
@R300_GB_TILE_CONFIG = common dso_local global i32 0, align 4
@R300_DST_PIPE_CONFIG = common dso_local global i32 0, align 4
@R300_PIPE_AUTO_CONFIG = common dso_local global i32 0, align 4
@R300_RB2D_DSTCACHE_MODE = common dso_local global i32 0, align 4
@R300_DC_AUTOFLUSH_ENABLE = common dso_local global i32 0, align 4
@R300_DC_DC_DISABLE_IGNORE_PE = common dso_local global i32 0, align 4
@CHIP_RV530 = common dso_local global i64 0, align 8
@RV530_GB_PIPE_SELECT2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"radeon: %d quad pipes, %d z pipes initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r420_pipes_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load i32, i32* @R300_GA_ENHANCE, align 4
  %7 = load i32, i32* @R300_GA_DEADLOCK_CNTL, align 4
  %8 = load i32, i32* @R300_GA_FASTSYNC_CNTL, align 4
  %9 = or i32 %7, %8
  %10 = or i32 %9, 4
  %11 = or i32 %10, 8
  %12 = call i32 @WREG32(i32 %6, i32 %11)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %14 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* @R400_GB_PIPE_SELECT, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = lshr i32 %21, 12
  %23 = and i32 %22, 3
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 24140
  br i1 %30, label %38, label %31

31:                                               ; preds = %18
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 24143
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %18
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %44 [
    i32 1, label %45
    i32 2, label %46
    i32 3, label %47
    i32 4, label %48
  ]

44:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %44
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %39
  store i32 6, i32* %3, align 4
  br label %49

47:                                               ; preds = %39
  store i32 12, i32* %3, align 4
  br label %49

48:                                               ; preds = %39
  store i32 14, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %46, %45
  %50 = load i32, i32* @R500_SU_REG_DEST, align 4
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 1, %51
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @WREG32(i32 %50, i32 %53)
  %55 = load i32, i32* @R300_TILE_SIZE_16, align 4
  %56 = load i32, i32* @R300_ENABLE_TILING, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* @R300_GB_TILE_CONFIG, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %49
  %69 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %70 = call i32 @RREG32(i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @R300_DST_PIPE_CONFIG, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @R300_PIPE_AUTO_CONFIG, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @WREG32(i32 %71, i32 %74)
  %76 = load i32, i32* @R300_RB2D_DSTCACHE_MODE, align 4
  %77 = load i32, i32* @R300_RB2D_DSTCACHE_MODE, align 4
  %78 = call i32 @RREG32(i32 %77)
  %79 = load i32, i32* @R300_DC_AUTOFLUSH_ENABLE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @R300_DC_DC_DISABLE_IGNORE_PE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @WREG32(i32 %76, i32 %82)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %68
  %88 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %68
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CHIP_RV530, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32, i32* @RV530_GB_PIPE_SELECT2, align 4
  %97 = call i32 @RREG32(i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, 3
  %100 = icmp eq i32 %99, 3
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 2
  store i32 2, i32* %103, align 8
  br label %107

104:                                              ; preds = %95
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %111

108:                                              ; preds = %89
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %107
  %112 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @r100_gui_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
