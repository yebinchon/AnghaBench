; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_dfp.c_nv04_dfp_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_encoder = type { i32, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_connector = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@DCB_OUTPUT_LVDS = common dso_local global i64 0, align 8
@LVDS_PANEL_ON = common dso_local global i32 0, align 4
@DCB_OUTPUT_TMDS = common dso_local global i64 0, align 8
@NV_DPMS_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv04_dfp_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_dfp_restore(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.nouveau_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder* %8)
  store %struct.nouveau_encoder* %9, %struct.nouveau_encoder** %3, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DCB_OUTPUT_LVDS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %26 = call %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder* %25)
  store %struct.nouveau_connector* %26, %struct.nouveau_connector** %6, align 8
  %27 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %28 = icmp ne %struct.nouveau_connector* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %37 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LVDS_PANEL_ON, align 4
  %41 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %42 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @call_lvds_script(%struct.drm_device* %35, %struct.TYPE_12__* %38, i32 %39, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %34, %29, %24
  br label %75

48:                                               ; preds = %1
  %49 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %50 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DCB_OUTPUT_TMDS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %48
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = call %struct.TYPE_13__* @nv04_display(%struct.drm_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @nouveau_hw_pllvals_to_clk(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %68 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %69 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @run_tmds_table(%struct.drm_device* %67, %struct.TYPE_12__* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %56, %48
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* @NV_DPMS_CLEARED, align 4
  %77 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %3, align 8
  %78 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  ret void
}

declare dso_local %struct.nouveau_encoder* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.nouveau_connector* @nouveau_encoder_connector_get(%struct.nouveau_encoder*) #1

declare dso_local i32 @call_lvds_script(%struct.drm_device*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @nouveau_hw_pllvals_to_clk(i32*) #1

declare dso_local %struct.TYPE_13__* @nv04_display(%struct.drm_device*) #1

declare dso_local i32 @run_tmds_table(%struct.drm_device*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
