; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_create_dynamic_oa_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_create_dynamic_oa_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i915_oa_config = type { %struct.TYPE_7__, %struct.TYPE_8__**, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@show_dynamic_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_oa_config*)* @create_dynamic_oa_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dynamic_oa_sysfs_entry(%struct.drm_i915_private* %0, %struct.i915_oa_config* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_oa_config*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_oa_config* %1, %struct.i915_oa_config** %4, align 8
  %5 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %6 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %7)
  %9 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %10 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @S_IRUGO, align 4
  %14 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %15 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 8
  %18 = load i32, i32* @show_dynamic_id, align 4
  %19 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %20 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %23 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %26 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %29 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %31, align 8
  %32 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %33 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %37 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %40 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %43 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %46 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store %struct.TYPE_8__** %44, %struct.TYPE_8__*** %47, align 8
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %53 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %52, i32 0, i32 0
  %54 = call i32 @sysfs_create_group(i32 %51, %struct.TYPE_7__* %53)
  ret i32 %54
}

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_create_group(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
