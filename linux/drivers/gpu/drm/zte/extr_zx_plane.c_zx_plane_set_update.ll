; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_plane_set_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_plane_set_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zx_plane = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unsupported plane type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zx_plane_set_update(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.zx_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = call %struct.zx_plane* @to_zx_plane(%struct.drm_plane* %4)
  store %struct.zx_plane* %5, %struct.zx_plane** %3, align 8
  %6 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %7 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %27 [
    i32 128, label %17
    i32 129, label %22
  ]

17:                                               ; preds = %13
  %18 = load %struct.zx_plane*, %struct.zx_plane** %3, align 8
  %19 = call i32 @zx_gl_rsz_set_update(%struct.zx_plane* %18)
  %20 = load %struct.zx_plane*, %struct.zx_plane** %3, align 8
  %21 = call i32 @zx_gl_set_update(%struct.zx_plane* %20)
  br label %32

22:                                               ; preds = %13
  %23 = load %struct.zx_plane*, %struct.zx_plane** %3, align 8
  %24 = call i32 @zx_vl_rsz_set_update(%struct.zx_plane* %23)
  %25 = load %struct.zx_plane*, %struct.zx_plane** %3, align 8
  %26 = call i32 @zx_vl_set_update(%struct.zx_plane* %25)
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %12, %27, %22, %17
  ret void
}

declare dso_local %struct.zx_plane* @to_zx_plane(%struct.drm_plane*) #1

declare dso_local i32 @zx_gl_rsz_set_update(%struct.zx_plane*) #1

declare dso_local i32 @zx_gl_set_update(%struct.zx_plane*) #1

declare dso_local i32 @zx_vl_rsz_set_update(%struct.zx_plane*) #1

declare dso_local i32 @zx_vl_set_update(%struct.zx_plane*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
