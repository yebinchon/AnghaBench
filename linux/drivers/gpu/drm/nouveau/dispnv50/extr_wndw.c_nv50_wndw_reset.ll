; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i32 (%struct.drm_plane*, %struct.TYPE_4__*)* }
%struct.nv50_wndw_atom = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @nv50_wndw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_wndw_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nv50_wndw_atom* @kzalloc(i32 4, i32 %4)
  store %struct.nv50_wndw_atom* %5, %struct.nv50_wndw_atom** %3, align 8
  %6 = icmp ne %struct.nv50_wndw_atom* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.drm_plane*, %struct.TYPE_4__*)*, i32 (%struct.drm_plane*, %struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 %22(%struct.drm_plane* %23, %struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %17, %12
  %29 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %30 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %31 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %30, i32 0, i32 0
  %32 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %29, i32* %31)
  %33 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %34 = call i8* @nv50_wndw_zpos_default(%struct.drm_plane* %33)
  %35 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %36 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %40 = call i8* @nv50_wndw_zpos_default(%struct.drm_plane* %39)
  %41 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %28, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.nv50_wndw_atom* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

declare dso_local i8* @nv50_wndw_zpos_default(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
