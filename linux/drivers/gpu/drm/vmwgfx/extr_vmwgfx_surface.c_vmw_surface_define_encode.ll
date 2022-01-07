; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_define_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_surface.c_vmw_surface_define_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_surface = type { i32, %struct.drm_vmw_size*, i32*, i32, i64, %struct.TYPE_7__ }
%struct.drm_vmw_size = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vmw_surface_define = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@SVGA_3D_CMD_SURFACE_DEFINE = common dso_local global i32 0, align 4
@DRM_VMW_MAX_SURFACE_FACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_surface*, i8*)* @vmw_surface_define_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_surface_define_encode(%struct.vmw_surface* %0, i8* %1) #0 {
  %3 = alloca %struct.vmw_surface*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmw_surface_define*, align 8
  %6 = alloca %struct.drm_vmw_size*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmw_surface* %0, %struct.vmw_surface** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.vmw_surface_define*
  store %struct.vmw_surface_define* %11, %struct.vmw_surface_define** %5, align 8
  %12 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %13 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 12
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @SVGA_3D_CMD_SURFACE_DEFINE, align 4
  %20 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %21 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %25 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %28 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %32 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %35 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %38 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i64 %36, i64* %39, align 8
  %40 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %44 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %66, %2
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DRM_VMW_MAX_SURFACE_FACES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %52 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %59 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %57, i32* %65, align 4
  br label %66

66:                                               ; preds = %50
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %71 = getelementptr inbounds %struct.vmw_surface_define, %struct.vmw_surface_define* %70, i64 1
  store %struct.vmw_surface_define* %71, %struct.vmw_surface_define** %5, align 8
  %72 = load %struct.vmw_surface_define*, %struct.vmw_surface_define** %5, align 8
  %73 = bitcast %struct.vmw_surface_define* %72 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %7, align 8
  %74 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %75 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %74, i32 0, i32 1
  %76 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %75, align 8
  store %struct.drm_vmw_size* %76, %struct.drm_vmw_size** %6, align 8
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %99, %69
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.vmw_surface*, %struct.vmw_surface** %3, align 8
  %80 = getelementptr inbounds %struct.vmw_surface, %struct.vmw_surface* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %6, align 8
  %85 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %6, align 8
  %90 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %6, align 8
  %95 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 1
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %7, align 8
  %104 = load %struct.drm_vmw_size*, %struct.drm_vmw_size** %6, align 8
  %105 = getelementptr inbounds %struct.drm_vmw_size, %struct.drm_vmw_size* %104, i32 1
  store %struct.drm_vmw_size* %105, %struct.drm_vmw_size** %6, align 8
  br label %77

106:                                              ; preds = %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
