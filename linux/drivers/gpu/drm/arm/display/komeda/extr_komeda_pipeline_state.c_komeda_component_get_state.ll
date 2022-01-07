; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_component_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component_state = type { i32 }
%struct.komeda_component = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_private_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_component_state* (%struct.komeda_component*, %struct.drm_atomic_state*)* @komeda_component_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_component_state* @komeda_component_get_state(%struct.komeda_component* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.komeda_component_state*, align 8
  %4 = alloca %struct.komeda_component*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.drm_private_state*, align 8
  store %struct.komeda_component* %0, %struct.komeda_component** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %7 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %8 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @drm_modeset_is_locked(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %18 = load %struct.komeda_component*, %struct.komeda_component** %4, align 8
  %19 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %18, i32 0, i32 0
  %20 = call %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state* %17, i32* %19)
  store %struct.drm_private_state* %20, %struct.drm_private_state** %6, align 8
  %21 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %22 = call i64 @IS_ERR(%struct.drm_private_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %26 = call %struct.komeda_component_state* @ERR_CAST(%struct.drm_private_state* %25)
  store %struct.komeda_component_state* %26, %struct.komeda_component_state** %3, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.drm_private_state*, %struct.drm_private_state** %6, align 8
  %29 = call %struct.komeda_component_state* @priv_to_comp_st(%struct.drm_private_state* %28)
  store %struct.komeda_component_state* %29, %struct.komeda_component_state** %3, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.komeda_component_state*, %struct.komeda_component_state** %3, align 8
  ret %struct.komeda_component_state* %31
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_is_locked(i32*) #1

declare dso_local %struct.drm_private_state* @drm_atomic_get_private_obj_state(%struct.drm_atomic_state*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_private_state*) #1

declare dso_local %struct.komeda_component_state* @ERR_CAST(%struct.drm_private_state*) #1

declare dso_local %struct.komeda_component_state* @priv_to_comp_st(%struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
