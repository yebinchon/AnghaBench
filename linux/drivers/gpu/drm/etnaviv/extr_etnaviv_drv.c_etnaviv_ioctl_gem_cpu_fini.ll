; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_ioctl_gem_cpu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_ioctl_gem_cpu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_etnaviv_gem_cpu_fini = type { i32, i64 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @etnaviv_ioctl_gem_cpu_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_ioctl_gem_cpu_fini(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_etnaviv_gem_cpu_fini*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_etnaviv_gem_cpu_fini*
  store %struct.drm_etnaviv_gem_cpu_fini* %12, %struct.drm_etnaviv_gem_cpu_fini** %8, align 8
  %13 = load %struct.drm_etnaviv_gem_cpu_fini*, %struct.drm_etnaviv_gem_cpu_fini** %8, align 8
  %14 = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_fini, %struct.drm_etnaviv_gem_cpu_fini* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_etnaviv_gem_cpu_fini*, %struct.drm_etnaviv_gem_cpu_fini** %8, align 8
  %23 = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_fini, %struct.drm_etnaviv_gem_cpu_fini* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %21, i32 %24)
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %9, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = icmp ne %struct.drm_gem_object* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %33 = call i32 @etnaviv_gem_cpu_fini(%struct.drm_gem_object* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %35 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @etnaviv_gem_cpu_fini(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
