; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_compose_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_composer.c_compose_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vkms_composer = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.vkms_gem_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vkms_composer*, %struct.vkms_composer*, i8*)* @compose_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compose_cursor(%struct.vkms_composer* %0, %struct.vkms_composer* %1, i8* %2) #0 {
  %4 = alloca %struct.vkms_composer*, align 8
  %5 = alloca %struct.vkms_composer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_gem_object*, align 8
  %8 = alloca %struct.vkms_gem_object*, align 8
  store %struct.vkms_composer* %0, %struct.vkms_composer** %4, align 8
  store %struct.vkms_composer* %1, %struct.vkms_composer** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %10 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %9, i32 0, i32 0
  %11 = call %struct.drm_gem_object* @drm_gem_fb_get_obj(i32* %10, i32 0)
  store %struct.drm_gem_object* %11, %struct.drm_gem_object** %7, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %7, align 8
  %13 = call %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object* %12)
  store %struct.vkms_gem_object* %13, %struct.vkms_gem_object** %8, align 8
  %14 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %15 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %31

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.vkms_gem_object*, %struct.vkms_gem_object** %8, align 8
  %26 = getelementptr inbounds %struct.vkms_gem_object, %struct.vkms_gem_object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vkms_composer*, %struct.vkms_composer** %5, align 8
  %29 = load %struct.vkms_composer*, %struct.vkms_composer** %4, align 8
  %30 = call i32 @blend(i8* %24, i32 %27, %struct.vkms_composer* %28, %struct.vkms_composer* %29)
  br label %31

31:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(i32*, i32) #1

declare dso_local %struct.vkms_gem_object* @drm_gem_to_vkms_gem(%struct.drm_gem_object*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @blend(i8*, i32, %struct.vkms_composer*, %struct.vkms_composer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
