; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crc_control_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crc_control_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.file = type { i32 }

@crc_control_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @crc_control_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_control_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  store %struct.drm_crtc* %8, %struct.drm_crtc** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = load i32, i32* @crc_control_show, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %12 = call i32 @single_open(%struct.file* %9, i32 %10, %struct.drm_crtc* %11)
  ret i32 %12
}

declare dso_local i32 @single_open(%struct.file*, i32, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
