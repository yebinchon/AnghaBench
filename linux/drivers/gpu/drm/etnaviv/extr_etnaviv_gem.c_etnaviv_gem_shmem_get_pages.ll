; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_shmem_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_shmem_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { %struct.page**, %struct.TYPE_2__ }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"could not get pages: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_object*)* @etnaviv_gem_shmem_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gem_shmem_get_pages(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.page**, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  %6 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %10, i32 0, i32 1
  %12 = call %struct.page** @drm_gem_get_pages(%struct.TYPE_2__* %11)
  store %struct.page** %12, %struct.page*** %5, align 8
  %13 = load %struct.page**, %struct.page*** %5, align 8
  %14 = call i64 @IS_ERR(%struct.page** %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.page**, %struct.page*** %5, align 8
  %21 = call i32 @PTR_ERR(%struct.page** %20)
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.page**, %struct.page*** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.page** %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.page**, %struct.page*** %5, align 8
  %27 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %28 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %27, i32 0, i32 0
  store %struct.page** %26, %struct.page*** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.page** @drm_gem_get_pages(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
