; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_drm.c_mock_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_drm.c_mock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { %struct.drm_file*, i32 }
%struct.inode = type { %struct.drm_file*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POISON_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_file* @mock_file(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_file*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.inode* @kzalloc(i32 16, i32 %8)
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = icmp ne %struct.inode* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.inode* @kzalloc(i32 16, i32 %24)
  %26 = bitcast %struct.inode* %25 to %struct.file*
  store %struct.file* %26, %struct.file** %4, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %60

32:                                               ; preds = %15
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = bitcast %struct.file* %34 to %struct.inode*
  %36 = call i32 @drm_open(%struct.inode* %33, %struct.inode* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %56

40:                                               ; preds = %32
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load %struct.drm_file*, %struct.drm_file** %42, align 8
  store %struct.drm_file* %43, %struct.drm_file** %6, align 8
  %44 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %45 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %44, i32 0, i32 1
  %46 = load i32, i32* @POISON_INUSE, align 4
  %47 = call i32 @memset(i32* %45, i32 %46, i32 4)
  %48 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %49 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = bitcast %struct.file* %50 to %struct.inode*
  %52 = call i32 @kfree(%struct.inode* %51)
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @kfree(%struct.inode* %53)
  %55 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  store %struct.drm_file* %55, %struct.drm_file** %2, align 8
  br label %66

56:                                               ; preds = %39
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = bitcast %struct.file* %57 to %struct.inode*
  %59 = call i32 @kfree(%struct.inode* %58)
  br label %60

60:                                               ; preds = %56, %29
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call i32 @kfree(%struct.inode* %61)
  br label %63

63:                                               ; preds = %60, %12
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.drm_file* @ERR_PTR(i32 %64)
  store %struct.drm_file* %65, %struct.drm_file** %2, align 8
  br label %66

66:                                               ; preds = %63, %40
  %67 = load %struct.drm_file*, %struct.drm_file** %2, align 8
  ret %struct.drm_file* %67
}

declare dso_local %struct.inode* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_open(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.inode*) #1

declare dso_local %struct.drm_file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
