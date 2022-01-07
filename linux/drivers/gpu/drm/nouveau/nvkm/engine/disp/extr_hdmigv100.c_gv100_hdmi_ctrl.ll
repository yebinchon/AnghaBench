; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmigv100.c_gv100_hdmi_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmigv100.c_gv100_hdmi_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv100_hdmi_ctrl(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca %struct.packed_hdmi_infoframe, align 4
  %24 = alloca %struct.packed_hdmi_infoframe, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load %struct.nvkm_ior*, %struct.nvkm_ior** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %30, align 8
  store %struct.nvkm_device* %31, %struct.nvkm_device** %19, align 8
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 1073741824, %32
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %33, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 2048
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 1024
  store i32 %42, i32* %22, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %23, i32* %43, i32 %44)
  %46 = load i32*, i32** %17, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %24, i32* %46, i32 %47)
  %49 = load i32, i32* %20, align 4
  %50 = and i32 %49, 1073741824
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %9
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 6383040, %54
  %56 = call i32 @nvkm_mask(%struct.nvkm_device* %53, i32 %55, i32 1073741824, i32 0)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 7274752, %58
  %60 = call i32 @nvkm_mask(%struct.nvkm_device* %57, i32 %59, i32 1, i32 0)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %62 = load i32, i32* %22, align 4
  %63 = add nsw i32 7274688, %62
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %61, i32 %63, i32 1, i32 0)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %66 = load i32, i32* %22, align 4
  %67 = add nsw i32 7274496, %66
  %68 = call i32 @nvkm_mask(%struct.nvkm_device* %65, i32 %67, i32 1, i32 0)
  br label %187

69:                                               ; preds = %9
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 7274496, %71
  %73 = call i32 @nvkm_mask(%struct.nvkm_device* %70, i32 %72, i32 1, i32 0)
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %69
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %78 = load i32, i32* %22, align 4
  %79 = add nsw i32 7274504, %78
  %80 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 %79, i32 %81)
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 7274508, %84
  %86 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 %85, i32 %87)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 7274512, %90
  %92 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 %91, i32 %93)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 7274516, %96
  %98 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %97, i32 %99)
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %102 = load i32, i32* %22, align 4
  %103 = add nsw i32 7274520, %102
  %104 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 %103, i32 %105)
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %108 = load i32, i32* %22, align 4
  %109 = add nsw i32 7274496, %108
  %110 = call i32 @nvkm_mask(%struct.nvkm_device* %107, i32 %109, i32 1, i32 1)
  br label %111

111:                                              ; preds = %76, %69
  %112 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 7274752, %113
  %115 = call i32 @nvkm_mask(%struct.nvkm_device* %112, i32 %114, i32 65537, i32 0)
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %111
  %119 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 7274760, %120
  %122 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %24, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @nvkm_wr32(%struct.nvkm_device* %119, i32 %121, i32 %123)
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 7274764, %126
  %128 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %24, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %125, i32 %127, i32 %129)
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 7274768, %132
  %134 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %24, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %131, i32 %133, i32 %135)
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %138 = load i32, i32* %22, align 4
  %139 = add nsw i32 7274768, %138
  %140 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 %139, i32 0)
  %141 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 7274772, %142
  %144 = call i32 @nvkm_wr32(%struct.nvkm_device* %141, i32 %143, i32 0)
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 7274776, %146
  %148 = call i32 @nvkm_wr32(%struct.nvkm_device* %145, i32 %147, i32 0)
  %149 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %150 = load i32, i32* %22, align 4
  %151 = add nsw i32 7274780, %150
  %152 = call i32 @nvkm_wr32(%struct.nvkm_device* %149, i32 %151, i32 0)
  %153 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 7274784, %154
  %156 = call i32 @nvkm_wr32(%struct.nvkm_device* %153, i32 %155, i32 0)
  %157 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 7274788, %158
  %160 = call i32 @nvkm_wr32(%struct.nvkm_device* %157, i32 %159, i32 0)
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 7274752, %162
  %164 = call i32 @nvkm_mask(%struct.nvkm_device* %161, i32 %163, i32 1, i32 1)
  br label %165

165:                                              ; preds = %118, %111
  %166 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 7274688, %167
  %169 = call i32 @nvkm_mask(%struct.nvkm_device* %166, i32 %168, i32 1, i32 0)
  %170 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %171 = load i32, i32* %22, align 4
  %172 = add nsw i32 7274700, %171
  %173 = call i32 @nvkm_wr32(%struct.nvkm_device* %170, i32 %172, i32 16)
  %174 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %175 = load i32, i32* %22, align 4
  %176 = add nsw i32 7274688, %175
  %177 = call i32 @nvkm_mask(%struct.nvkm_device* %174, i32 %176, i32 1, i32 1)
  %178 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 7274624, %179
  %181 = call i32 @nvkm_wr32(%struct.nvkm_device* %178, i32 %180, i32 -2113929216)
  %182 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 6383040, %183
  %185 = load i32, i32* %20, align 4
  %186 = call i32 @nvkm_mask(%struct.nvkm_device* %182, i32 %184, i32 1075773567, i32 %185)
  br label %187

187:                                              ; preds = %165, %52
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
