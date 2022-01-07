; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.gf100_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"INTR 00000001: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"INTR 00010000: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"INTR 01000000: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"INTR %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @gf100_fifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_intr(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.gf100_fifo*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %15 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %16 = call %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo* %15)
  store %struct.gf100_fifo* %16, %struct.gf100_fifo** %3, align 8
  %17 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %18 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.nvkm_subdev* %20, %struct.nvkm_subdev** %4, align 8
  %21 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %5, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 8512)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 8448)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %34, i32 9516)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @nvkm_warn(%struct.nvkm_subdev* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 8448, i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -2
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %33, %1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 256
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %49 = call i32 @gf100_fifo_intr_sched(%struct.gf100_fifo* %48)
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %51 = call i32 @nvkm_wr32(%struct.nvkm_device* %50, i32 8448, i32 256)
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, -257
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 65536
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %60 = call i32 @nvkm_rd32(%struct.nvkm_device* %59, i32 9580)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @nvkm_warn(%struct.nvkm_subdev* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %64, i32 8448, i32 65536)
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, -65537
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %58, %54
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 16777216
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %74 = call i32 @nvkm_rd32(%struct.nvkm_device* %73, i32 9612)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @nvkm_warn(%struct.nvkm_subdev* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %79 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 8448, i32 16777216)
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, -16777217
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %72, %68
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 268435456
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %88 = call i32 @nvkm_rd32(%struct.nvkm_device* %87, i32 9628)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %92, %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @__ffs(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %96 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @gf100_fifo_intr_fault(%struct.TYPE_4__* %96, i32 %97)
  %99 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = shl i32 1, %100
  %102 = call i32 @nvkm_wr32(%struct.nvkm_device* %99, i32 9628, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %89

108:                                              ; preds = %89
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, -268435457
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %82
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 536870912
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %111
  %116 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %117 = call i32 @nvkm_rd32(%struct.nvkm_device* %116, i32 9632)
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %121, %115
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @__ffs(i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @gf100_fifo_intr_pbdma(%struct.gf100_fifo* %124, i32 %125)
  %127 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %128 = load i32, i32* %14, align 4
  %129 = shl i32 1, %128
  %130 = call i32 @nvkm_wr32(%struct.nvkm_device* %127, i32 9632, i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = shl i32 1, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %118

136:                                              ; preds = %118
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, -536870913
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136, %111
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %140, 1073741824
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %145 = call i32 @gf100_fifo_intr_runlist(%struct.gf100_fifo* %144)
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, -1073741825
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, -2147483648
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.gf100_fifo*, %struct.gf100_fifo** %3, align 8
  %154 = call i32 @gf100_fifo_intr_engine(%struct.gf100_fifo* %153)
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 2147483647
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %148
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @nvkm_error(%struct.nvkm_subdev* %161, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  %164 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @nvkm_mask(%struct.nvkm_device* %164, i32 8512, i32 %165, i32 0)
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @nvkm_wr32(%struct.nvkm_device* %167, i32 8448, i32 %168)
  br label %170

170:                                              ; preds = %160, %157
  ret void
}

declare dso_local %struct.gf100_fifo* @gf100_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gf100_fifo_intr_sched(%struct.gf100_fifo*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @gf100_fifo_intr_fault(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gf100_fifo_intr_pbdma(%struct.gf100_fifo*, i32) #1

declare dso_local i32 @gf100_fifo_intr_runlist(%struct.gf100_fifo*) #1

declare dso_local i32 @gf100_fifo_intr_engine(%struct.gf100_fifo*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
