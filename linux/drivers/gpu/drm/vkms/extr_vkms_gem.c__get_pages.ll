; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c__get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c__get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vkms_gem_object = type { %struct.page**, %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (%struct.vkms_gem_object*)* @_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @_get_pages(%struct.vkms_gem_object* %0) #0 {
  %2 = alloca %struct.page**, align 8
  %3 = alloca %struct.vkms_gem_object*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.page**, align 8
  store %struct.vkms_gem_object* %0, %struct.vkms_gem_object** %3, align 8
  %6 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %6, i32 0, i32 1
  store %struct.drm_gem_object* %7, %struct.drm_gem_object** %4, align 8
  %8 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %8, i32 0, i32 0
  %10 = load %struct.page**, %struct.page*** %9, align 8
  %11 = icmp ne %struct.page** %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %14 = call %struct.page** @drm_gem_get_pages(%struct.drm_gem_object* %13)
  store %struct.page** %14, %struct.page*** %5, align 8
  %15 = load %struct.page**, %struct.page*** %5, align 8
  %16 = call i64 @IS_ERR(%struct.page** %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.page**, %struct.page*** %5, align 8
  store %struct.page** %19, %struct.page*** %2, align 8
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %21, i32 0, i32 0
  %23 = load %struct.page**, %struct.page*** %5, align 8
  %24 = call i64 @cmpxchg(%struct.page*** %22, i32* null, %struct.page** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %28 = load %struct.page**, %struct.page*** %5, align 8
  %29 = call i32 @drm_gem_put_pages(%struct.drm_gem_object* %27, %struct.page** %28, i32 0, i32 1)
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  %33 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %32, i32 0, i32 0
  %34 = load %struct.page**, %struct.page*** %33, align 8
  store %struct.page** %34, %struct.page*** %2, align 8
  br label %35

35:                                               ; preds = %31, %18
  %36 = load %struct.page**, %struct.page*** %2, align 8
  ret %struct.page** %36
}

declare dso_local %struct.page** @drm_gem_get_pages(%struct.drm_gem_object*) #1

declare dso_local i64 @IS_ERR(%struct.page**) #1

declare dso_local i64 @cmpxchg(%struct.page***, i32*, %struct.page**) #1

declare dso_local i32 @drm_gem_put_pages(%struct.drm_gem_object*, %struct.page**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
