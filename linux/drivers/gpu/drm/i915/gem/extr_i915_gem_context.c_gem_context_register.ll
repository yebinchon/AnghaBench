; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gem_context_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_gem_context_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.i915_gem_context = type { i32, i32, %struct.TYPE_4__*, %struct.drm_i915_file_private* }
%struct.TYPE_4__ = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32, i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@PIDTYPE_PID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.drm_i915_file_private*)* @gem_context_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_context_register(%struct.i915_gem_context* %0, %struct.drm_i915_file_private* %1) #0 {
  %3 = alloca %struct.i915_gem_context*, align 8
  %4 = alloca %struct.drm_i915_file_private*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %3, align 8
  store %struct.drm_i915_file_private* %1, %struct.drm_i915_file_private** %4, align 8
  %6 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %7 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %8 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %7, i32 0, i32 3
  store %struct.drm_i915_file_private* %6, %struct.drm_i915_file_private** %8, align 8
  %9 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %10 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %15 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %16 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.drm_i915_file_private* %14, %struct.drm_i915_file_private** %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = load i32, i32* @PIDTYPE_PID, align 4
  %22 = call i32 @get_task_pid(%struct.TYPE_5__* %20, i32 %21)
  %23 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %24 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %30 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pid_nr(i32 %31)
  %33 = call i32 @kasprintf(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  %34 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %35 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %37 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %19
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %19
  %44 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %45 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %48 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %47, i32 0, i32 1
  %49 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @idr_alloc(i32* %48, %struct.i915_gem_context* %49, i32 0, i32 0, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %53 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %68

58:                                               ; preds = %43
  %59 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %60 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %59, i32 0, i32 1
  %61 = call i32 @fetch_and_zero(i32* %60)
  %62 = call i32 @kfree(i32 %61)
  br label %63

63:                                               ; preds = %58, %40
  %64 = load %struct.i915_gem_context*, %struct.i915_gem_context** %3, align 8
  %65 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %64, i32 0, i32 0
  %66 = call i32 @fetch_and_zero(i32* %65)
  %67 = call i32 @put_pid(i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @get_task_pid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @pid_nr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i915_gem_context*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fetch_and_zero(i32*) #1

declare dso_local i32 @put_pid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
