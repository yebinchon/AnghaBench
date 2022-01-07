; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_encoder = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_dp_aux = type { i32 }
%struct.nv50_mstm = type { i32*, %struct.TYPE_8__, %struct.nouveau_encoder* }
%struct.TYPE_8__ = type { i32* }

@DP_DPCD_REV = common dso_local global i32 0, align 4
@DP_MSTM_CTRL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_mstm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_encoder*, %struct.drm_dp_aux*, i32, i32, %struct.nv50_mstm**)* @nv50_mstm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_mstm_new(%struct.nouveau_encoder* %0, %struct.drm_dp_aux* %1, i32 %2, i32 %3, %struct.nv50_mstm** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.drm_dp_aux*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nv50_mstm**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.nv50_mstm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nouveau_encoder* %0, %struct.nouveau_encoder** %7, align 8
  store %struct.drm_dp_aux* %1, %struct.drm_dp_aux** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nv50_mstm** %4, %struct.nv50_mstm*** %11, align 8
  %18 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hweight8(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %25 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %13, align 8
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %8, align 8
  %30 = load i32, i32* @DP_DPCD_REV, align 4
  %31 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %29, i32 %30, i32* %17)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32, i32* %17, align 4
  %36 = icmp sge i32 %35, 18
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %8, align 8
  %39 = load i32, i32* @DP_MSTM_CTRL, align 4
  %40 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %34, %5
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.nv50_mstm* @kzalloc(i32 24, i32 %42)
  %44 = load %struct.nv50_mstm**, %struct.nv50_mstm*** %11, align 8
  store %struct.nv50_mstm* %43, %struct.nv50_mstm** %44, align 8
  store %struct.nv50_mstm* %43, %struct.nv50_mstm** %14, align 8
  %45 = icmp ne %struct.nv50_mstm* %43, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %102

49:                                               ; preds = %41
  %50 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %51 = load %struct.nv50_mstm*, %struct.nv50_mstm** %14, align 8
  %52 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %51, i32 0, i32 2
  store %struct.nouveau_encoder* %50, %struct.nouveau_encoder** %52, align 8
  %53 = load %struct.nv50_mstm*, %struct.nv50_mstm** %14, align 8
  %54 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32* @nv50_mstm, i32** %55, align 8
  %56 = load %struct.nv50_mstm*, %struct.nv50_mstm** %14, align 8
  %57 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %56, i32 0, i32 1
  %58 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %59 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_8__* %57, %struct.drm_device* %58, %struct.drm_dp_aux* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %102

68:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %75 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %76 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %81 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.nv50_mstm*, %struct.nv50_mstm** %14, align 8
  %87 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @nv50_msto_new(%struct.drm_device* %74, i32 %79, i32 %84, i32 %85, i32* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %73
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %73
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %69

101:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %95, %66, %46
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

declare dso_local %struct.nv50_mstm* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_init(%struct.TYPE_8__*, %struct.drm_device*, %struct.drm_dp_aux*, i32, i32, i32) #1

declare dso_local i32 @nv50_msto_new(%struct.drm_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
