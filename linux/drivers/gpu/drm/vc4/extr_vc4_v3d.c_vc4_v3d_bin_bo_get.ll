; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_bin_bo_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_v3d.c_vc4_v3d_bin_bo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dev = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_v3d_bin_bo_get(%struct.vc4_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.vc4_dev* %0, %struct.vc4_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11, %2
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %22, i32 0, i32 1
  %24 = call i32 @kref_get(i32* %23)
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %27 = call i32 @bin_bo_alloc(%struct.vc4_dev* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31, %28
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %39 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @bin_bo_alloc(%struct.vc4_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
