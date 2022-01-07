; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_ioctl_gem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_ioctl_gem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_omap_gem_new = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OMAP_BO_USER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%p:%p: size=0x%08x, flags=%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @ioctl_gem_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_gem_new(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_omap_gem_new*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.drm_omap_gem_new*
  store %struct.drm_omap_gem_new* %10, %struct.drm_omap_gem_new** %7, align 8
  %11 = load %struct.drm_omap_gem_new*, %struct.drm_omap_gem_new** %7, align 8
  %12 = getelementptr inbounds %struct.drm_omap_gem_new, %struct.drm_omap_gem_new* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OMAP_BO_USER_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %18 = load %struct.drm_omap_gem_new*, %struct.drm_omap_gem_new** %7, align 8
  %19 = getelementptr inbounds %struct.drm_omap_gem_new, %struct.drm_omap_gem_new* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @VERB(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %16, %struct.drm_file* %17, i32 %21, i32 %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %26 = load %struct.drm_omap_gem_new*, %struct.drm_omap_gem_new** %7, align 8
  %27 = getelementptr inbounds %struct.drm_omap_gem_new, %struct.drm_omap_gem_new* %26, i32 0, i32 2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.drm_omap_gem_new*, %struct.drm_omap_gem_new** %7, align 8
  %30 = getelementptr inbounds %struct.drm_omap_gem_new, %struct.drm_omap_gem_new* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @omap_gem_new_handle(%struct.drm_device* %24, %struct.drm_file* %25, i32 %32, i32 %28, i32* %30)
  ret i32 %33
}

declare dso_local i32 @VERB(i8*, %struct.drm_device*, %struct.drm_file*, i32, i32) #1

declare dso_local i32 @omap_gem_new_handle(%struct.drm_device*, %struct.drm_file*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
