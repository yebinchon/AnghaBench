; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_file.c_drm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_minor = type { %struct.drm_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_minor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = call %struct.drm_minor* @drm_minor_acquire(i32 %11)
  store %struct.drm_minor* %12, %struct.drm_minor** %7, align 8
  %13 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %14 = call i64 @IS_ERR(%struct.drm_minor* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %18 = call i32 @PTR_ERR(%struct.drm_minor* %17)
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %21 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %39 = call i32 @drm_open_helper(%struct.file* %37, %struct.drm_minor* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %56

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = call i32 @drm_legacy_setup(%struct.drm_device* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = call i32 @drm_close_helper(%struct.file* %52)
  br label %56

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43
  store i32 0, i32* %3, align 4
  br label %64

56:                                               ; preds = %51, %42
  %57 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %62 = call i32 @drm_minor_release(%struct.drm_minor* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %55, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.drm_minor* @drm_minor_acquire(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.drm_minor*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_minor*) #1

declare dso_local i32 @drm_open_helper(%struct.file*, %struct.drm_minor*) #1

declare dso_local i32 @drm_legacy_setup(%struct.drm_device*) #1

declare dso_local i32 @drm_close_helper(%struct.file*) #1

declare dso_local i32 @drm_minor_release(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
