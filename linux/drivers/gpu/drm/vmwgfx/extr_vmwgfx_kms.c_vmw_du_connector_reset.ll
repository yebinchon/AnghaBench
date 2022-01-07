; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64 }
%struct.vmw_connector_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate vmw_connector_state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_du_connector_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.vmw_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @__drm_atomic_helper_connector_destroy_state(i64 %11)
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @vmw_connector_state_to_vcs(i64 %15)
  %17 = call i32 @kfree(i32 %16)
  br label %18

18:                                               ; preds = %8, %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.vmw_connector_state* @kzalloc(i32 4, i32 %19)
  store %struct.vmw_connector_state* %20, %struct.vmw_connector_state** %3, align 8
  %21 = load %struct.vmw_connector_state*, %struct.vmw_connector_state** %3, align 8
  %22 = icmp ne %struct.vmw_connector_state* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %30

25:                                               ; preds = %18
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = load %struct.vmw_connector_state*, %struct.vmw_connector_state** %3, align 8
  %28 = getelementptr inbounds %struct.vmw_connector_state, %struct.vmw_connector_state* %27, i32 0, i32 0
  %29 = call i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector* %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @__drm_atomic_helper_connector_destroy_state(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vmw_connector_state_to_vcs(i64) #1

declare dso_local %struct.vmw_connector_state* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
