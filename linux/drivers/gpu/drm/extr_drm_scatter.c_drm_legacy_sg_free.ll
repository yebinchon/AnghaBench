; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_scatter.c_drm_legacy_sg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_scatter.c_drm_legacy_sg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { i64, i32 }
%struct.drm_file = type { i32 }
%struct.drm_scatter_gather = type { i64 }

@DRIVER_LEGACY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRIVER_SG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"virtual  = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_legacy_sg_free(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_scatter_gather*, align 8
  %9 = alloca %struct.drm_sg_mem*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_scatter_gather*
  store %struct.drm_scatter_gather* %11, %struct.drm_scatter_gather** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* @DRIVER_LEGACY, align 4
  %14 = call i32 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load i32, i32* @DRIVER_SG, align 4
  %22 = call i32 @drm_core_check_feature(%struct.drm_device* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %29, align 8
  store %struct.drm_sg_mem* %30, %struct.drm_sg_mem** %9, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  store %struct.drm_sg_mem* null, %struct.drm_sg_mem** %32, align 8
  %33 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %34 = icmp ne %struct.drm_sg_mem* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %37 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.drm_scatter_gather*, %struct.drm_scatter_gather** %8, align 8
  %40 = getelementptr inbounds %struct.drm_scatter_gather, %struct.drm_scatter_gather* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %48 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %52 = call i32 @drm_sg_cleanup(%struct.drm_sg_mem* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %43, %24, %16
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_sg_cleanup(%struct.drm_sg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
