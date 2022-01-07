; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_gem_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_gem_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_gem_destroy(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %4)
  store %struct.vc4_dev* %5, %struct.vc4_dev** %3, align 8
  %6 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %21 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @drm_gem_object_put_unlocked(i32* %24)
  %26 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %26, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %27, align 8
  br label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %36 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @vc4_free_hang_state(%struct.drm_device* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %28
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @vc4_free_hang_state(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
