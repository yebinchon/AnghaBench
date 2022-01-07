; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_lima_gem_wait = type { i32, i32, i32 }

@LIMA_GEM_WAIT_READ = common dso_local global i32 0, align 4
@LIMA_GEM_WAIT_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @lima_ioctl_gem_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_ioctl_gem_wait(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lima_gem_wait*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_lima_gem_wait*
  store %struct.drm_lima_gem_wait* %10, %struct.drm_lima_gem_wait** %8, align 8
  %11 = load %struct.drm_lima_gem_wait*, %struct.drm_lima_gem_wait** %8, align 8
  %12 = getelementptr inbounds %struct.drm_lima_gem_wait, %struct.drm_lima_gem_wait* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LIMA_GEM_WAIT_READ, align 4
  %15 = load i32, i32* @LIMA_GEM_WAIT_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %25 = load %struct.drm_lima_gem_wait*, %struct.drm_lima_gem_wait** %8, align 8
  %26 = getelementptr inbounds %struct.drm_lima_gem_wait, %struct.drm_lima_gem_wait* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_lima_gem_wait*, %struct.drm_lima_gem_wait** %8, align 8
  %29 = getelementptr inbounds %struct.drm_lima_gem_wait, %struct.drm_lima_gem_wait* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_lima_gem_wait*, %struct.drm_lima_gem_wait** %8, align 8
  %32 = getelementptr inbounds %struct.drm_lima_gem_wait, %struct.drm_lima_gem_wait* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lima_gem_wait(%struct.drm_file* %24, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @lima_gem_wait(%struct.drm_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
