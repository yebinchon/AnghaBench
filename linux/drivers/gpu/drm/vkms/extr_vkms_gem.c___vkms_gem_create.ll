; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c___vkms_gem_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_gem.c___vkms_gem_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_gem_object = type { i32, i32 }
%struct.drm_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vkms_gem_object* (%struct.drm_device*, i32)* @__vkms_gem_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vkms_gem_object* @__vkms_gem_create(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vkms_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vkms_gem_object*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vkms_gem_object* @kzalloc(i32 8, i32 %8)
  store %struct.vkms_gem_object* %9, %struct.vkms_gem_object** %6, align 8
  %10 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %6, align 8
  %11 = icmp ne %struct.vkms_gem_object* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.vkms_gem_object* @ERR_PTR(i32 %14)
  store %struct.vkms_gem_object* %15, %struct.vkms_gem_object** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @roundup(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %6, align 8
  %22 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %21, i32 0, i32 1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @drm_gem_object_init(%struct.drm_device* %20, i32* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %6, align 8
  %29 = call i32 @kfree(%struct.vkms_gem_object* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.vkms_gem_object* @ERR_PTR(i32 %30)
  store %struct.vkms_gem_object* %31, %struct.vkms_gem_object** %3, align 8
  br label %37

32:                                               ; preds = %16
  %33 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %6, align 8
  %34 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %33, i32 0, i32 0
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %6, align 8
  store %struct.vkms_gem_object* %36, %struct.vkms_gem_object** %3, align 8
  br label %37

37:                                               ; preds = %32, %27, %12
  %38 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %3, align 8
  ret %struct.vkms_gem_object* %38
}

declare dso_local %struct.vkms_gem_object* @kzalloc(i32, i32) #1

declare dso_local %struct.vkms_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.vkms_gem_object*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
