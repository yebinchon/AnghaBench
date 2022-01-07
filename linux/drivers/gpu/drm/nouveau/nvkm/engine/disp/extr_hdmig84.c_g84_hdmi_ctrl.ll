; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmig84.c_g84_hdmi_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_hdmig84.c_g84_hdmi_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g84_hdmi_ctrl(%struct.nvkm_ior* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
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
  %33 = or i32 %32, 520093696
  %34 = load i32, i32* %13, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %33, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 2048
  store i32 %40, i32* %21, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %22, i32* %41, i32 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @pack_hdmi_infoframe(%struct.packed_hdmi_infoframe* %23, i32* %44, i32 %45)
  %47 = load i32, i32* %20, align 4
  %48 = and i32 %47, 1073741824
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %9
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 6383012, %52
  %54 = call i32 @nvkm_mask(%struct.nvkm_device* %51, i32 %53, i32 1073741824, i32 0)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 6382908, %56
  %58 = call i32 @nvkm_mask(%struct.nvkm_device* %55, i32 %57, i32 1, i32 0)
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %60 = load i32, i32* %21, align 4
  %61 = add nsw i32 6382880, %60
  %62 = call i32 @nvkm_mask(%struct.nvkm_device* %59, i32 %61, i32 1, i32 0)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %64 = load i32, i32* %21, align 4
  %65 = add nsw i32 6382848, %64
  %66 = call i32 @nvkm_mask(%struct.nvkm_device* %63, i32 %65, i32 1, i32 0)
  br label %183

67:                                               ; preds = %9
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 6382880, %69
  %71 = call i32 @nvkm_mask(%struct.nvkm_device* %68, i32 %70, i32 1, i32 0)
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %67
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 6382888, %76
  %78 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %75, i32 %77, i32 %79)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 6382892, %82
  %84 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 %83, i32 %85)
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %88 = load i32, i32* %21, align 4
  %89 = add nsw i32 6382896, %88
  %90 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 %89, i32 %91)
  %93 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 6382900, %94
  %96 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nvkm_wr32(%struct.nvkm_device* %93, i32 %95, i32 %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 6382904, %100
  %102 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %22, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 %101, i32 %103)
  %105 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 6382880, %106
  %108 = call i32 @nvkm_mask(%struct.nvkm_device* %105, i32 %107, i32 1, i32 1)
  br label %109

109:                                              ; preds = %74, %67
  %110 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 6382848, %111
  %113 = call i32 @nvkm_mask(%struct.nvkm_device* %110, i32 %112, i32 1, i32 0)
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 6382856, %115
  %117 = call i32 @nvkm_wr32(%struct.nvkm_device* %114, i32 %116, i32 655748)
  %118 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 6382860, %119
  %121 = call i32 @nvkm_wr32(%struct.nvkm_device* %118, i32 %120, i32 113)
  %122 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 6382864, %123
  %125 = call i32 @nvkm_wr32(%struct.nvkm_device* %122, i32 %124, i32 0)
  %126 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 6382848, %127
  %129 = call i32 @nvkm_mask(%struct.nvkm_device* %126, i32 %128, i32 1, i32 1)
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 6382908, %131
  %133 = call i32 @nvkm_mask(%struct.nvkm_device* %130, i32 %132, i32 65537, i32 65536)
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %109
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 6382916, %138
  %140 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 %139, i32 %141)
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 6382920, %144
  %146 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @nvkm_wr32(%struct.nvkm_device* %143, i32 %145, i32 %147)
  %149 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 6382924, %150
  %152 = getelementptr inbounds %struct.packed_hdmi_infoframe, %struct.packed_hdmi_infoframe* %23, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @nvkm_wr32(%struct.nvkm_device* %149, i32 %151, i32 %153)
  %155 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %156 = load i32, i32* %21, align 4
  %157 = add nsw i32 6382908, %156
  %158 = call i32 @nvkm_mask(%struct.nvkm_device* %155, i32 %157, i32 65537, i32 65537)
  br label %159

159:                                              ; preds = %136, %109
  %160 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %161 = load i32, i32* %21, align 4
  %162 = add nsw i32 6383056, %161
  %163 = call i32 @nvkm_mask(%struct.nvkm_device* %160, i32 %162, i32 458753, i32 65537)
  %164 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 6382952, %165
  %167 = call i32 @nvkm_mask(%struct.nvkm_device* %164, i32 %166, i32 65793, i32 0)
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 6382968, %169
  %171 = call i32 @nvkm_mask(%struct.nvkm_device* %168, i32 %170, i32 -2147483648, i32 -2147483648)
  %172 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %173 = call i32 @nvkm_mask(%struct.nvkm_device* %172, i32 6386492, i32 1048576, i32 1048576)
  %174 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %175 = call i32 @nvkm_mask(%struct.nvkm_device* %174, i32 6386492, i32 268435456, i32 268435456)
  %176 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %177 = call i32 @nvkm_mask(%struct.nvkm_device* %176, i32 6386492, i32 1048576, i32 0)
  %178 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 6383012, %179
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @nvkm_mask(%struct.nvkm_device* %178, i32 %180, i32 1595867263, i32 %181)
  br label %183

183:                                              ; preds = %159, %50
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
