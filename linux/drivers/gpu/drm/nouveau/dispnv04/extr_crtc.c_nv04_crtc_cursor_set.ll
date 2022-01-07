; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv04_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_10__, %struct.drm_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.nouveau_crtc.0*, i32)*, i32, i32 (%struct.nouveau_crtc.1*, i32)*, %struct.TYPE_13__*, i32 (%struct.nouveau_crtc.2*, i32)* }
%struct.nouveau_crtc.0 = type opaque
%struct.nouveau_crtc.1 = type opaque
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nouveau_crtc.2 = type opaque
%struct.nouveau_bo = type { i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)* @nv04_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nouveau_drm*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nouveau_crtc*, align 8
  %15 = alloca %struct.nouveau_bo*, align 8
  %16 = alloca %struct.drm_gem_object*, align 8
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nouveau_drm* @nouveau_drm(i32 %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %12, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 1
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %13, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %26 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %25)
  store %struct.nouveau_crtc* %26, %struct.nouveau_crtc** %14, align 8
  store %struct.nouveau_bo* null, %struct.nouveau_bo** %15, align 8
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %31 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load i32 (%struct.nouveau_crtc.2*, i32)*, i32 (%struct.nouveau_crtc.2*, i32)** %32, align 8
  %34 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %35 = bitcast %struct.nouveau_crtc* %34 to %struct.nouveau_crtc.2*
  %36 = call i32 %33(%struct.nouveau_crtc.2* %35, i32 1)
  store i32 0, i32* %6, align 4
  br label %122

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 64
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 64
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %122

46:                                               ; preds = %40
  %47 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %47, i32 %48)
  store %struct.drm_gem_object* %49, %struct.drm_gem_object** %16, align 8
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %51 = icmp ne %struct.drm_gem_object* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %122

55:                                               ; preds = %46
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %57 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %56)
  store %struct.nouveau_bo* %57, %struct.nouveau_bo** %15, align 8
  %58 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %59 = call i32 @nouveau_bo_map(%struct.nouveau_bo* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %118

63:                                               ; preds = %55
  %64 = load %struct.nouveau_drm*, %struct.nouveau_drm** %12, align 8
  %65 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 17
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %73 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %74 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %75 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = call i32 @nv11_cursor_upload(%struct.drm_device* %72, %struct.nouveau_bo* %73, %struct.TYPE_13__* %77)
  br label %87

79:                                               ; preds = %63
  %80 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %81 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %82 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %83 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = call i32 @nv04_cursor_upload(%struct.drm_device* %80, %struct.nouveau_bo* %81, %struct.TYPE_13__* %85)
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %89 = call i32 @nouveau_bo_unmap(%struct.nouveau_bo* %88)
  %90 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %91 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %98 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %101 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32 (%struct.nouveau_crtc.1*, i32)*, i32 (%struct.nouveau_crtc.1*, i32)** %102, align 8
  %104 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %105 = bitcast %struct.nouveau_crtc* %104 to %struct.nouveau_crtc.1*
  %106 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %107 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %103(%struct.nouveau_crtc.1* %105, i32 %109)
  %111 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %112 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32 (%struct.nouveau_crtc.0*, i32)*, i32 (%struct.nouveau_crtc.0*, i32)** %113, align 8
  %115 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %14, align 8
  %116 = bitcast %struct.nouveau_crtc* %115 to %struct.nouveau_crtc.0*
  %117 = call i32 %114(%struct.nouveau_crtc.0* %116, i32 1)
  br label %118

118:                                              ; preds = %87, %62
  %119 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %120 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %119)
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %118, %52, %43, %29
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @nouveau_bo_map(%struct.nouveau_bo*) #1

declare dso_local i32 @nv11_cursor_upload(%struct.drm_device*, %struct.nouveau_bo*, %struct.TYPE_13__*) #1

declare dso_local i32 @nv04_cursor_upload(%struct.drm_device*, %struct.nouveau_bo*, %struct.TYPE_13__*) #1

declare dso_local i32 @nouveau_bo_unmap(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
