; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_clean_caches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_clean_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, %struct.drm_device }
%struct.drm_device = type { i32 }

@V3D_CTL_L2TCACTL = common dso_local global i32 0, align 4
@V3D_L2TCACTL_TMUWCF = common dso_local global i32 0, align 4
@V3D_L2TCACTL_L2TFLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Timeout waiting for L1T write combiner flush\0A\00", align 1
@V3D_L2TCACTL_FLM_CLEAN = common dso_local global i32 0, align 4
@V3D_L2TCACTL_FLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Timeout waiting for L2T clean\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v3d_clean_caches(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %5 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %6 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %5, i32 0, i32 1
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call i32 @trace_v3d_cache_clean_begin(%struct.drm_device* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @V3D_CTL_L2TCACTL, align 4
  %11 = load i32, i32* @V3D_L2TCACTL_TMUWCF, align 4
  %12 = call i32 @V3D_CORE_WRITE(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @V3D_CTL_L2TCACTL, align 4
  %15 = call i32 @V3D_CORE_READ(i32 %13, i32 %14)
  %16 = load i32, i32* @V3D_L2TCACTL_L2TFLS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @wait_for(i32 %20, i32 100)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %27 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @V3D_CTL_L2TCACTL, align 4
  %31 = load i32, i32* @V3D_L2TCACTL_L2TFLS, align 4
  %32 = load i32, i32* @V3D_L2TCACTL_FLM_CLEAN, align 4
  %33 = load i32, i32* @V3D_L2TCACTL_FLM, align 4
  %34 = call i32 @V3D_SET_FIELD(i32 %32, i32 %33)
  %35 = or i32 %31, %34
  %36 = call i32 @V3D_CORE_WRITE(i32 %29, i32 %30, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @V3D_CTL_L2TCACTL, align 4
  %39 = call i32 @V3D_CORE_READ(i32 %37, i32 %38)
  %40 = load i32, i32* @V3D_L2TCACTL_L2TFLS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @wait_for(i32 %44, i32 100)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %25
  %50 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %51 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %54 = call i32 @trace_v3d_cache_clean_end(%struct.drm_device* %53)
  ret void
}

declare dso_local i32 @trace_v3d_cache_clean_begin(%struct.drm_device*) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @V3D_SET_FIELD(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_v3d_cache_clean_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
