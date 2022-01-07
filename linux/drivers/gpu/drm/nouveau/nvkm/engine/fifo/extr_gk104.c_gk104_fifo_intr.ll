; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gk104_fifo = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32)* }

@.str = private unnamed_addr constant [11 x i8] c"PIO_ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"FB_FLUSH_TIMEOUT\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LB_ERROR\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"INTR %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @gk104_fifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_intr(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %12 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %13 = call %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo* %12)
  store %struct.gk104_fifo* %13, %struct.gk104_fifo** %3, align 8
  %14 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.nvkm_subdev* %17, %struct.nvkm_subdev** %4, align 8
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %5, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 8512)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 8448)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %32 = call i32 @gk104_fifo_intr_bind(%struct.gk104_fifo* %31)
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 8448, i32 1)
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, -2
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %30, %1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %43 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %44, i32 8448, i32 16)
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -17
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 256
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %54 = call i32 @gk104_fifo_intr_sched(%struct.gk104_fifo* %53)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 8448, i32 256)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, -257
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 65536
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %65 = call i32 @gk104_fifo_intr_chsw(%struct.gk104_fifo* %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 8448, i32 65536)
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -65537
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 8388608
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %76 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %78 = call i32 @nvkm_wr32(%struct.nvkm_device* %77, i32 8448, i32 8388608)
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, -8388609
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 16777216
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %87 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %89 = call i32 @nvkm_wr32(%struct.nvkm_device* %88, i32 8448, i32 16777216)
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, -16777217
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, 134217728
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %98 = call i32 @gk104_fifo_intr_dropped_fault(%struct.gk104_fifo* %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 8448, i32 134217728)
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, -134217729
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %96, %92
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 268435456
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %103
  %108 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %109 = call i32 @nvkm_rd32(%struct.nvkm_device* %108, i32 9628)
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %113, %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @__ffs(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %117 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %120, align 8
  %122 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %123 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %122, i32 0, i32 0
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %121(%struct.TYPE_8__* %123, i32 %124)
  %126 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = shl i32 1, %127
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %126, i32 9628, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %110

135:                                              ; preds = %110
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, -268435457
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %135, %103
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %139, 536870912
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %138
  %143 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %144 = call i32 @nvkm_rd32(%struct.nvkm_device* %143, i32 9632)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %148, %142
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @__ffs(i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @gk104_fifo_intr_pbdma_0(%struct.gk104_fifo* %151, i32 %152)
  %154 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @gk104_fifo_intr_pbdma_1(%struct.gk104_fifo* %154, i32 %155)
  %157 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = shl i32 1, %158
  %160 = call i32 @nvkm_wr32(%struct.nvkm_device* %157, i32 9632, i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = shl i32 1, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %145

166:                                              ; preds = %145
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, -536870913
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %166, %138
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 1073741824
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %175 = call i32 @gk104_fifo_intr_runlist(%struct.gk104_fifo* %174)
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, -1073741825
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %173, %169
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, -2147483648
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %184 = call i32 @nvkm_wr32(%struct.nvkm_device* %183, i32 8448, i32 -2147483648)
  %185 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %186 = call i32 @gk104_fifo_intr_engine(%struct.gk104_fifo* %185)
  %187 = load i32, i32* %7, align 4
  %188 = and i32 %187, 2147483647
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %182, %178
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @nvkm_mask(%struct.nvkm_device* %196, i32 8512, i32 %197, i32 0)
  %199 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @nvkm_wr32(%struct.nvkm_device* %199, i32 8448, i32 %200)
  br label %202

202:                                              ; preds = %192, %189
  ret void
}

declare dso_local %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @gk104_fifo_intr_bind(%struct.gk104_fifo*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @gk104_fifo_intr_sched(%struct.gk104_fifo*) #1

declare dso_local i32 @gk104_fifo_intr_chsw(%struct.gk104_fifo*) #1

declare dso_local i32 @gk104_fifo_intr_dropped_fault(%struct.gk104_fifo*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @gk104_fifo_intr_pbdma_0(%struct.gk104_fifo*, i32) #1

declare dso_local i32 @gk104_fifo_intr_pbdma_1(%struct.gk104_fifo*, i32) #1

declare dso_local i32 @gk104_fifo_intr_runlist(%struct.gk104_fifo*) #1

declare dso_local i32 @gk104_fifo_intr_engine(%struct.gk104_fifo*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
