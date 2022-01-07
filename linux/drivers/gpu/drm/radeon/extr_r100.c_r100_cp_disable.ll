; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_cp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_CP_CSQ_MODE = common dso_local global i32 0, align 4
@RADEON_CP_CSQ_CNTL = common dso_local global i32 0, align 4
@R_000770_SCRATCH_UMSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Failed to wait GUI idle while programming pipes. Bad things might happen.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_cp_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device* %3, i32 %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @RADEON_CP_CSQ_MODE, align 4
  %16 = call i32 @WREG32(i32 %15, i32 0)
  %17 = load i32, i32* @RADEON_CP_CSQ_CNTL, align 4
  %18 = call i32 @WREG32(i32 %17, i32 0)
  %19 = load i32, i32* @R_000770_SCRATCH_UMSK, align 4
  %20 = call i32 @WREG32(i32 %19, i32 0)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i64 @r100_gui_wait_for_idle(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @radeon_ttm_set_active_vram_size(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @r100_gui_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
