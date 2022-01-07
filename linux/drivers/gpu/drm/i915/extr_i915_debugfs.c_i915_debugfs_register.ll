; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_debugfs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_debugfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_minor* }
%struct.drm_minor = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"i915_forcewake_user\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@i915_forcewake_fops = common dso_local global i32 0, align 4
@i915_debugfs_files = common dso_local global %struct.TYPE_5__* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@i915_debugfs_list = common dso_local global i32 0, align 4
@I915_DEBUGFS_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_debugfs_register(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  store %struct.drm_minor* %8, %struct.drm_minor** %3, align 8
  %9 = load i32, i32* @S_IRUSR, align 4
  %10 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %14 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @to_i915(i32 %15)
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %16, i32* @i915_forcewake_fops)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i915_debugfs_files, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i915_debugfs_files, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @S_IRUGO, align 4
  %31 = load i32, i32* @S_IWUSR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %34 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %37 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_i915(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @i915_debugfs_files, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @debugfs_create_file(i8* %29, i32 %32, i32 %35, i32 %39, i32* %45)
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load i32, i32* @i915_debugfs_list, align 4
  %52 = load i32, i32* @I915_DEBUGFS_ENTRIES, align 4
  %53 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %54 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %57 = call i32 @drm_debugfs_create_files(i32 %51, i32 %52, i32 %55, %struct.drm_minor* %56)
  ret i32 %57
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @to_i915(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_debugfs_create_files(i32, i32, i32, %struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
