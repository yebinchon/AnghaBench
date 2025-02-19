; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_pm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_pm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_v3d_pm_get(%struct.vc4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.vc4_dev* %0, %struct.vc4_dev** %3, align 8
  %5 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %6 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %15 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_get_sync(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %29 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
