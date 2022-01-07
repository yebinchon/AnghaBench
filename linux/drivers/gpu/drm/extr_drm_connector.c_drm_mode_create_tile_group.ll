; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_mode_create_tile_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_mode_create_tile_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_tile_group = type { i32, %struct.drm_device*, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_tile_group* @drm_mode_create_tile_group(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_tile_group*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_tile_group*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.drm_tile_group* @kzalloc(i32 24, i32 %8)
  store %struct.drm_tile_group* %9, %struct.drm_tile_group** %6, align 8
  %10 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %11 = icmp ne %struct.drm_tile_group* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.drm_tile_group* null, %struct.drm_tile_group** %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %15 = getelementptr inbounds %struct.drm_tile_group, %struct.drm_tile_group* %14, i32 0, i32 3
  %16 = call i32 @kref_init(i32* %15)
  %17 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %18 = getelementptr inbounds %struct.drm_tile_group, %struct.drm_tile_group* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @memcpy(i32 %19, i8* %20, i32 8)
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %24 = getelementptr inbounds %struct.drm_tile_group, %struct.drm_tile_group* %23, i32 0, i32 1
  store %struct.drm_device* %22, %struct.drm_device** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @idr_alloc(i32* %31, %struct.drm_tile_group* %32, i32 1, i32 0, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %13
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %40 = getelementptr inbounds %struct.drm_tile_group, %struct.drm_tile_group* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %44

41:                                               ; preds = %13
  %42 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  %43 = call i32 @kfree(%struct.drm_tile_group* %42)
  store %struct.drm_tile_group* null, %struct.drm_tile_group** %6, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.drm_tile_group*, %struct.drm_tile_group** %6, align 8
  store %struct.drm_tile_group* %49, %struct.drm_tile_group** %3, align 8
  br label %50

50:                                               ; preds = %44, %12
  %51 = load %struct.drm_tile_group*, %struct.drm_tile_group** %3, align 8
  ret %struct.drm_tile_group* %51
}

declare dso_local %struct.drm_tile_group* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.drm_tile_group*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_tile_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
