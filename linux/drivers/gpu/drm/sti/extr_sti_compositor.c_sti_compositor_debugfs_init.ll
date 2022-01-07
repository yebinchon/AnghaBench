; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_compositor = type { i64*, i64* }
%struct.drm_minor = type { i32 }

@STI_MAX_VID = common dso_local global i32 0, align 4
@STI_MAX_MIXER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_compositor_debugfs_init(%struct.sti_compositor* %0, %struct.drm_minor* %1) #0 {
  %3 = alloca %struct.sti_compositor*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca i32, align 4
  store %struct.sti_compositor* %0, %struct.sti_compositor** %3, align 8
  store %struct.drm_minor* %1, %struct.drm_minor** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @STI_MAX_VID, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.sti_compositor*, %struct.sti_compositor** %3, align 8
  %12 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.sti_compositor*, %struct.sti_compositor** %3, align 8
  %21 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %28 = call i32 @vid_debugfs_init(i64 %26, %struct.drm_minor* %27)
  br label %29

29:                                               ; preds = %19, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @STI_MAX_MIXER, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.sti_compositor*, %struct.sti_compositor** %3, align 8
  %40 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.sti_compositor*, %struct.sti_compositor** %3, align 8
  %49 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %56 = call i32 @sti_mixer_debugfs_init(i64 %54, %struct.drm_minor* %55)
  br label %57

57:                                               ; preds = %47, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %34

61:                                               ; preds = %34
  ret i32 0
}

declare dso_local i32 @vid_debugfs_init(i64, %struct.drm_minor*) #1

declare dso_local i32 @sti_mixer_debugfs_init(i64, %struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
