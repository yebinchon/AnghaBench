; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_drm_debugfs_crtc_crc_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_drm_debugfs_crtc_crc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@drm_crtc_crc_control_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@drm_crtc_crc_data_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_debugfs_crtc_crc_add(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  br label %31

18:                                               ; preds = %10
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.dentry* %22, %struct.dentry** %3, align 8
  %23 = load i32, i32* @S_IRUGO, align 4
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %26 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.dentry* %24, %struct.drm_crtc* %25, i32* @drm_crtc_crc_control_fops)
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %30 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27, %struct.dentry* %28, %struct.drm_crtc* %29, i32* @drm_crtc_crc_data_fops)
  br label %31

31:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.drm_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
