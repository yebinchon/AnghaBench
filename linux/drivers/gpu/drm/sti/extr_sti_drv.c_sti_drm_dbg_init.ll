; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_drm_dbg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_drm_dbg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i32, i32 }

@sti_drm_dbg_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fps_show\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sti_drm_fps_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: debugfs installed\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: cannot install debugfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_minor*)* @sti_drm_dbg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_drm_dbg_init(%struct.drm_minor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_minor* %0, %struct.drm_minor** %3, align 8
  %5 = load i32, i32* @sti_drm_dbg_list, align 4
  %6 = load i32, i32* @sti_drm_dbg_list, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %9 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %12 = call i32 @drm_debugfs_create_files(i32 %5, i32 %7, i32 %10, %struct.drm_minor* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @S_IRUGO, align 4
  %18 = load i32, i32* @S_IWUSR, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %21 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %24 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32* @sti_drm_fps_fops)
  %27 = load i32, i32* @DRIVER_NAME, align 4
  %28 = call i32 @DRM_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @DRIVER_NAME, align 4
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @drm_debugfs_create_files(i32, i32, i32, %struct.drm_minor*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
