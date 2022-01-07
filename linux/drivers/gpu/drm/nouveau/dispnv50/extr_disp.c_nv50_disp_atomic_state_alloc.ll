; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_disp_atomic_state_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_disp_atomic_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32 }
%struct.drm_device = type { i32 }
%struct.nv50_atom = type { %struct.drm_atomic_state, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_atomic_state* (%struct.drm_device*)* @nv50_disp_atomic_state_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_atomic_state* @nv50_disp_atomic_state_alloc(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv50_atom*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nv50_atom* @kzalloc(i32 8, i32 %5)
  store %struct.nv50_atom* %6, %struct.nv50_atom** %4, align 8
  %7 = icmp ne %struct.nv50_atom* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %11 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %10, i32 0, i32 0
  %12 = call i64 @drm_atomic_state_init(%struct.drm_device* %9, %struct.drm_atomic_state* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %1
  %15 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %16 = call i32 @kfree(%struct.nv50_atom* %15)
  store %struct.drm_atomic_state* null, %struct.drm_atomic_state** %2, align 8
  br label %23

17:                                               ; preds = %8
  %18 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %19 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.nv50_atom*, %struct.nv50_atom** %4, align 8
  %22 = getelementptr inbounds %struct.nv50_atom, %struct.nv50_atom* %21, i32 0, i32 0
  store %struct.drm_atomic_state* %22, %struct.drm_atomic_state** %2, align 8
  br label %23

23:                                               ; preds = %17, %14
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  ret %struct.drm_atomic_state* %24
}

declare dso_local %struct.nv50_atom* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_atomic_state_init(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @kfree(%struct.nv50_atom*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
