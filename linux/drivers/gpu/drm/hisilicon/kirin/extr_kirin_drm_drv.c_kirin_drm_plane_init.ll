; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_drv.c_kirin_drm_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }
%struct.kirin_drm_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"fail to init plane, ch=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_plane*, i32, %struct.kirin_drm_data*)* @kirin_drm_plane_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_drm_plane_init(%struct.drm_device* %0, %struct.drm_plane* %1, i32 %2, %struct.kirin_drm_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kirin_drm_data*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kirin_drm_data* %3, %struct.kirin_drm_data** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %13 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %14 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %17 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %20 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @drm_universal_plane_init(%struct.drm_device* %11, %struct.drm_plane* %12, i32 1, i32 %15, i32 %18, i32 %21, i32* null, i32 %22, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %31 = load %struct.kirin_drm_data*, %struct.kirin_drm_data** %9, align 8
  %32 = getelementptr inbounds %struct.kirin_drm_data, %struct.kirin_drm_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @drm_plane_helper_add(%struct.drm_plane* %30, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
