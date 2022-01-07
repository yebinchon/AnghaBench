; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_send_display_ready_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_send_display_ready_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.kobject }
%struct.kobject = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"GVT_DISPLAY_READY=%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"VMID=%d\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @send_display_ready_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_display_ready_uevent(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [20 x i8], align 16
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.kobject* %21, %struct.kobject** %6, align 8
  %22 = bitcast [3 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 24, i1 false)
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @snprintf(i8* %23, i32 20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* %26, i8** %27, align 16
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @snprintf(i8* %28, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.kobject*, %struct.kobject** %6, align 8
  %36 = load i32, i32* @KOBJ_ADD, align 4
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %38 = call i32 @kobject_uevent_env(%struct.kobject* %35, i32 %36, i8** %37)
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
