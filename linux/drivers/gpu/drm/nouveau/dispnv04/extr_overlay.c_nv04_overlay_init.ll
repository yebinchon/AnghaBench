; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv04_overlay_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv04_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_plane = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nv04_plane_funcs = common dso_local global i32 0, align 4
@formats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to create plane\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nv04_overlay_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_overlay_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_plane*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %6)
  store %struct.nouveau_drm* %7, %struct.nouveau_drm** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nouveau_plane* @kzalloc(i32 32, i32 %8)
  store %struct.nouveau_plane* %9, %struct.nouveau_plane** %4, align 8
  %10 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %11 = icmp ne %struct.nouveau_plane* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %84

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %15, i32 0, i32 2
  %17 = load i32, i32* @formats, align 4
  %18 = call i32 @drm_plane_init(%struct.drm_device* %14, %struct.TYPE_6__* %16, i32 1, i32* @nv04_plane_funcs, i32 %17, i32 2, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %79

22:                                               ; preds = %13
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = call i8* @drm_property_create_range(%struct.drm_device* %23, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 33554431)
  %25 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = call i8* @drm_property_create_range(%struct.drm_device* %28, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1024)
  %30 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %31 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %34 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %22
  %39 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %40 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38, %22
  br label %75

45:                                               ; preds = %38
  %46 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %47 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %56 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @drm_object_attach_property(i32* %50, i8* %54, i32 %57)
  %59 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %59, i32 0, i32 1
  store i32 512, i32* %60, align 4
  %61 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %62 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %65 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %69 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_object_attach_property(i32* %63, i8* %67, i32 %70)
  %72 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %73 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %72, i32 0, i32 2
  %74 = call i32 @drm_plane_force_disable(%struct.TYPE_6__* %73)
  br label %84

75:                                               ; preds = %44
  %76 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %77 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %76, i32 0, i32 2
  %78 = call i32 @drm_plane_cleanup(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %75, %21
  %80 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %81 = call i32 @kfree(%struct.nouveau_plane* %80)
  %82 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %83 = call i32 @NV_ERROR(%struct.nouveau_drm* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %45, %12
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_plane_init(%struct.drm_device*, %struct.TYPE_6__*, i32, i32*, i32, i32, i32) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i8*, i32) #1

declare dso_local i32 @drm_plane_force_disable(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.nouveau_plane*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
