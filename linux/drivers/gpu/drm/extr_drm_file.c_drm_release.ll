; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.drm_minor* }
%struct.drm_minor = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@drm_global_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"open_count = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_minor*, align 8
  %7 = alloca %struct.drm_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  store %struct.drm_file* %10, %struct.drm_file** %5, align 8
  %11 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %12 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %11, i32 0, i32 0
  %13 = load %struct.drm_minor*, %struct.drm_minor** %12, align 8
  store %struct.drm_minor* %13, %struct.drm_minor** %6, align 8
  %14 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %15 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = call i32 @mutex_lock(i32* @drm_global_mutex)
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = call i32 @drm_close_helper(%struct.file* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %31 = call i32 @drm_lastclose(%struct.drm_device* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = call i32 @mutex_unlock(i32* @drm_global_mutex)
  %34 = load %struct.drm_minor*, %struct.drm_minor** %6, align 8
  %35 = call i32 @drm_minor_release(%struct.drm_minor* %34)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_close_helper(%struct.file*) #1

declare dso_local i32 @drm_lastclose(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_minor_release(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
