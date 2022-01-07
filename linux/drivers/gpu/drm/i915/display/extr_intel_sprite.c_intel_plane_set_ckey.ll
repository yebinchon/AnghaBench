; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_plane_set_ckey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sprite.c_intel_plane_set_ckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.drm_intel_sprite_colorkey, %struct.TYPE_3__ }
%struct.drm_intel_sprite_colorkey = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PLANE_PRIMARY = common dso_local global i64 0, align 8
@I915_SET_COLORKEY_SOURCE = common dso_local global i32 0, align 4
@I915_SET_COLORKEY_DESTINATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_plane_state*, %struct.drm_intel_sprite_colorkey*)* @intel_plane_set_ckey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_plane_set_ckey(%struct.intel_plane_state* %0, %struct.drm_intel_sprite_colorkey* %1) #0 {
  %3 = alloca %struct.intel_plane_state*, align 8
  %4 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_intel_sprite_colorkey*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  store %struct.drm_intel_sprite_colorkey* %1, %struct.drm_intel_sprite_colorkey** %4, align 8
  %8 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_plane* @to_intel_plane(i32 %11)
  store %struct.intel_plane* %12, %struct.intel_plane** %5, align 8
  %13 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %14 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %18, i32 0, i32 0
  store %struct.drm_intel_sprite_colorkey* %19, %struct.drm_intel_sprite_colorkey** %7, align 8
  %20 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %7, align 8
  %21 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %22 = bitcast %struct.drm_intel_sprite_colorkey* %20 to i8*
  %23 = bitcast %struct.drm_intel_sprite_colorkey* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %25 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PLANE_PRIMARY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %31 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I915_SET_COLORKEY_SOURCE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %7, align 8
  %38 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29, %2
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %41 = call i32 @INTEL_GEN(%struct.drm_i915_private* %40)
  %42 = icmp sge i32 %41, 9
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %45 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PLANE_PRIMARY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %4, align 8
  %51 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @I915_SET_COLORKEY_DESTINATION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.drm_intel_sprite_colorkey*, %struct.drm_intel_sprite_colorkey** %7, align 8
  %58 = getelementptr inbounds %struct.drm_intel_sprite_colorkey, %struct.drm_intel_sprite_colorkey* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %49, %43, %39
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
