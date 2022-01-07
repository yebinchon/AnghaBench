; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmigf119.c_gf119_hdmi_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmigf119.c_gf119_hdmi_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_hdmi_ctrl(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.nvkm_ior*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nvkm_device*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.packed_hdmi_infoframe, align 4
  %23 = alloca %struct.packed_hdmi_infoframe, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %24 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %25 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %29, align 8
  store %struct.nvkm_device* %30, %struct.nvkm_device** %19, align 8
  %31 = load i32, i32* %12, align 4
  %32 = mul nsw i32 1073741824, %31
  %33 = load i32, i32* %13, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %32, %34
  %36 = load i32, i32* %14, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 2048
  store i32 %39, i32* %21, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %22, i32* %40, i32 %41)
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %23, i32* %43, i32 %44)
  %46 = load i32, i32* %20, align 4
  %47 = and i32 %46, 1073741824
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %9
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %51 = load i32, i32* %21, align 4
  %52 = add nsw i32 6383512, %51
  %53 = call i32 @nvkm_mask(%struct.nvkm_device* %50, i32 %52, i32 1073741824, i32 0)
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 6383408, %55
  %57 = call i32 @nvkm_mask(%struct.nvkm_device* %54, i32 %56, i32 1, i32 0)
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 6383524, %59
  %61 = call i32 @nvkm_mask(%struct.nvkm_device* %58, i32 %60, i32 1, i32 0)
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %63 = load i32, i32* %21, align 4
  %64 = add nsw i32 6383380, %63
  %65 = call i32 @nvkm_mask(%struct.nvkm_device* %62, i32 %64, i32 1, i32 0)
  br label %156

66:                                               ; preds = %9
  %67 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 6383380, %68
  %70 = call i32 @nvkm_mask(%struct.nvkm_device* %67, i32 %69, i32 1, i32 0)
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %66
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 6383388, %75
  %77 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %74, i32 %76, i32 %78)
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 6383392, %81
  %83 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nvkm_wr32(%struct.nvkm_device* %80, i32 %82, i32 %84)
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 6383396, %87
  %89 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %86, i32 %88, i32 %90)
  %92 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 6383400, %93
  %95 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %92, i32 %94, i32 %96)
  %98 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %99 = load i32, i32* %21, align 4
  %100 = add nsw i32 6383404, %99
  %101 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %98, i32 %100, i32 %102)
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 6383380, %105
  %107 = call i32 @nvkm_mask(%struct.nvkm_device* %104, i32 %106, i32 1, i32 1)
  br label %108

108:                                              ; preds = %73, %66
  %109 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %110 = load i32, i32* %21, align 4
  %111 = add nsw i32 6383408, %110
  %112 = call i32 @nvkm_mask(%struct.nvkm_device* %109, i32 %111, i32 65537, i32 65536)
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 6383416, %117
  %119 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nvkm_wr32(%struct.nvkm_device* %116, i32 %118, i32 %120)
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 6383420, %123
  %125 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 %124, i32 %126)
  %128 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %129 = load i32, i32* %21, align 4
  %130 = add nsw i32 6383424, %129
  %131 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nvkm_wr32(%struct.nvkm_device* %128, i32 %130, i32 %132)
  %134 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 6383408, %135
  %137 = call i32 @nvkm_mask(%struct.nvkm_device* %134, i32 %136, i32 1, i32 1)
  br label %138

138:                                              ; preds = %115, %108
  %139 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 6383524, %140
  %142 = call i32 @nvkm_mask(%struct.nvkm_device* %139, i32 %141, i32 1, i32 0)
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 6383532, %144
  %146 = call i32 @nvkm_wr32(%struct.nvkm_device* %143, i32 %145, i32 16)
  %147 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 6383524, %148
  %150 = call i32 @nvkm_mask(%struct.nvkm_device* %147, i32 %149, i32 1, i32 1)
  %151 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 6383512, %152
  %154 = load i32, i32* %20, align 4
  %155 = call i32 @nvkm_mask(%struct.nvkm_device* %151, i32 %153, i32 1075773567, i32 %154)
  br label %156

156:                                              ; preds = %138, %49
  ret void
}

declare dso_local i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
