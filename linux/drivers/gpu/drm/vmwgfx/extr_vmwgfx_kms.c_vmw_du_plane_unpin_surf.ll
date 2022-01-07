; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_unpin_surf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_plane_unpin_surf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_plane_state = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Surface still pinned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_du_plane_unpin_surf(%struct.vmw_plane_state* %0, i32 %1) #0 {
  %3 = alloca %struct.vmw_plane_state*, align 8
  %4 = alloca i32, align 4
  store %struct.vmw_plane_state* %0, %struct.vmw_plane_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %6 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @vmw_resource_unpin(i32* %18)
  %20 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %21 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %14, %9
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %29 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.vmw_plane_state*, %struct.vmw_plane_state** %3, align 8
  %36 = getelementptr inbounds %struct.vmw_plane_state, %struct.vmw_plane_state* %35, i32 0, i32 0
  %37 = call i32 @vmw_surface_unreference(%struct.TYPE_2__** %36)
  br label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @vmw_resource_unpin(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_surface_unreference(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
