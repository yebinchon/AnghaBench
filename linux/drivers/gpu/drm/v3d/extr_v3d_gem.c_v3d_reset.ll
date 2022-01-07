; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { %struct.drm_device }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Resetting GPU for hang.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"V3D_ERR_STAT: 0x%08x\0A\00", align 1
@V3D_ERR_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v3d_reset(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %4 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %5 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %4, i32 0, i32 0
  store %struct.drm_device* %5, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V3D_ERR_STAT, align 4
  %14 = call i32 @V3D_CORE_READ(i32 0, i32 %13)
  %15 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = call i32 @trace_v3d_reset_begin(%struct.drm_device* %16)
  %18 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %19 = call i32 @v3d_idle_gca(%struct.v3d_dev* %18)
  %20 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %21 = call i32 @v3d_reset_v3d(%struct.v3d_dev* %20)
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %23 = call i32 @v3d_mmu_set_page_table(%struct.v3d_dev* %22)
  %24 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %25 = call i32 @v3d_irq_reset(%struct.v3d_dev* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i32 @trace_v3d_reset_end(%struct.drm_device* %26)
  ret void
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @trace_v3d_reset_begin(%struct.drm_device*) #1

declare dso_local i32 @v3d_idle_gca(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_reset_v3d(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_mmu_set_page_table(%struct.v3d_dev*) #1

declare dso_local i32 @v3d_irq_reset(%struct.v3d_dev*) #1

declare dso_local i32 @trace_v3d_reset_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
