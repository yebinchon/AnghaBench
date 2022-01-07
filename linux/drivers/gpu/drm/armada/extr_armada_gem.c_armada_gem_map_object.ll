; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_map_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_map_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.armada_gem_object = type { i8*, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @armada_gem_map_object(%struct.drm_device* %0, %struct.armada_gem_object* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.armada_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.armada_gem_object* %1, %struct.armada_gem_object** %4, align 8
  %5 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %6 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %11 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %16 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %19 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @ioremap_wc(i32 %17, i32 %21)
  %23 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %24 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %14, %9, %2
  %26 = load %struct.armada_gem_object*, %struct.armada_gem_object** %4, align 8
  %27 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  ret i8* %28
}

declare dso_local i8* @ioremap_wc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
