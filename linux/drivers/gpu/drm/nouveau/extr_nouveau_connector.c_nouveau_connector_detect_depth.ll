; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_detect_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_drm = type { %struct.nvbios }
%struct.nvbios = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.nouveau_connector = type { i64, i64, %struct.drm_display_mode*, %struct.nouveau_encoder* }
%struct.drm_display_mode = type { i64 }
%struct.nouveau_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@DCB_CONNECTOR_eDP = common dso_local global i64 0, align 8
@DCB_OUTPUT_LVDS = common dso_local global i64 0, align 8
@DCB_CONNECTOR_LVDS_SPWG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @nouveau_connector_detect_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_connector_detect_depth(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_connector*, align 8
  %5 = alloca %struct.nouveau_encoder*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_drm* @nouveau_drm(i32 %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %3, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %13)
  store %struct.nouveau_connector* %14, %struct.nouveau_connector** %4, align 8
  %15 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %15, i32 0, i32 3
  %17 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %16, align 8
  store %struct.nouveau_encoder* %17, %struct.nouveau_encoder** %5, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  store %struct.nvbios* %19, %struct.nvbios** %6, align 8
  %20 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %20, i32 0, i32 2
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %21, align 8
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %7, align 8
  %23 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %24 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %129

34:                                               ; preds = %27, %1
  %35 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DCB_CONNECTOR_eDP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 6, i32* %43, align 4
  br label %129

44:                                               ; preds = %34
  %45 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DCB_OUTPUT_LVDS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 8, i32* %55, align 4
  br label %129

56:                                               ; preds = %44
  %57 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 6, i32* %59, align 4
  %60 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %61 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %66 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %72 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 8, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %64
  br label %129

75:                                               ; preds = %56
  %76 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %77 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %82 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DCB_CONNECTOR_LVDS_SPWG, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.nouveau_connector*, %struct.nouveau_connector** %4, align 8
  %88 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = getelementptr inbounds i32, i32* %90, i64 121
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %8, align 4
  br label %105

95:                                               ; preds = %80, %75
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %100 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %98, %102
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %95, %86
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %110 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %120 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 2
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118, %108
  %126 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %127 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 8, i32* %128, align 4
  br label %129

129:                                              ; preds = %33, %40, %52, %74, %125, %118, %115
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
