; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_lima_gem_create = type { i64, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @lima_ioctl_gem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_ioctl_gem_create(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lima_gem_create*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_lima_gem_create*
  store %struct.drm_lima_gem_create* %10, %struct.drm_lima_gem_create** %8, align 8
  %11 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %12 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %20 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %18
  %27 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %28 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %37 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %38 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %41 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.drm_lima_gem_create*, %struct.drm_lima_gem_create** %8, align 8
  %44 = getelementptr inbounds %struct.drm_lima_gem_create, %struct.drm_lima_gem_create* %43, i32 0, i32 1
  %45 = call i32 @lima_gem_create_handle(%struct.drm_device* %35, %struct.drm_file* %36, i64 %39, i64 %42, i32* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %31, %23, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @lima_gem_create_handle(%struct.drm_device*, %struct.drm_file*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
