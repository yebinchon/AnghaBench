; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_dma_vtxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_load_dma_vtxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv10_gr_chan = type { %struct.nv10_gr* }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NV10_PGRAPH_CTX_USER = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2 = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2_DL = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_ST2_DH = common dso_local global i32 0, align 4
@NV10_PGRAPH_FFINTFC_FIFO_PTR = common dso_local global i32 0, align 4
@NV10_PGRAPH_CTX_CONTROL = common dso_local global i32 0, align 4
@NV04_PGRAPH_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv10_gr_chan*, i32, i32)* @nv10_gr_load_dma_vtxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_gr_load_dma_vtxbuf(%struct.nv10_gr_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nv10_gr_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv10_gr*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [24 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nv10_gr_chan* %0, %struct.nv10_gr_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load %struct.nv10_gr_chan*, %struct.nv10_gr_chan** %4, align 8
  %20 = getelementptr inbounds %struct.nv10_gr_chan, %struct.nv10_gr_chan* %19, i32 0, i32 0
  %21 = load %struct.nv10_gr*, %struct.nv10_gr** %20, align 8
  store %struct.nv10_gr* %21, %struct.nv10_gr** %7, align 8
  %22 = load %struct.nv10_gr*, %struct.nv10_gr** %7, align 8
  %23 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %26, align 8
  store %struct.nvkm_device* %27, %struct.nvkm_device** %8, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @NV10_PGRAPH_CTX_CACHE(i32 %33, i32 0)
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %32, i32 %34)
  %36 = and i32 %35, 4095
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 86
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %40, 150
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %18, align 4
  %44 = icmp eq i32 %43, 153
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39, %31
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %17, align 4
  br label %51

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  br label %28

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %51
  br label %210

58:                                               ; preds = %54
  %59 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %60 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %61 = call i32 @nvkm_rd32(%struct.nvkm_device* %59, i32 %60)
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %73, %58
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %63, 5
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %67)
  %69 = call i32 @nvkm_rd32(%struct.nvkm_device* %66, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %62

76:                                               ; preds = %62
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %78 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %79 = call i32 @nvkm_rd32(%struct.nvkm_device* %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %81 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %82 = call i32 @nvkm_rd32(%struct.nvkm_device* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %84 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DH, align 4
  %85 = call i32 @nvkm_rd32(%struct.nvkm_device* %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %87 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %88 = call i32 @nvkm_rd32(%struct.nvkm_device* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %103, %76
  %90 = load i32, i32* %16, align 4
  %91 = getelementptr inbounds [24 x i32], [24 x i32]* %13, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 4, %96
  %98 = add nsw i32 4196256, %97
  %99 = call i32 @nvkm_rd32(%struct.nvkm_device* %95, i32 %98)
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [24 x i32], [24 x i32]* %13, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %89

106:                                              ; preds = %89
  store i32 0, i32* %16, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %16, align 4
  %109 = icmp slt i32 %108, 5
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %112)
  %114 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @NV10_PGRAPH_CTX_CACHE(i32 %115, i32 %116)
  %118 = call i32 @nvkm_rd32(%struct.nvkm_device* %114, i32 %117)
  %119 = call i32 @nvkm_wr32(%struct.nvkm_device* %111, i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %110
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %125 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %126 = load i32, i32* %17, align 4
  %127 = shl i32 %126, 13
  %128 = call i32 @nvkm_mask(%struct.nvkm_device* %124, i32 %125, i32 57344, i32 %127)
  %129 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %130 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %131 = call i32 @nvkm_wr32(%struct.nvkm_device* %129, i32 %130, i32 0)
  %132 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %133 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %134 = load i32, i32* %5, align 4
  %135 = shl i32 %134, 20
  %136 = or i32 738197504, %135
  %137 = load i32, i32* %17, align 4
  %138 = shl i32 %137, 16
  %139 = or i32 %136, %138
  %140 = or i32 %139, 396
  %141 = call i32 @nvkm_wr32(%struct.nvkm_device* %132, i32 %133, i32 %140)
  %142 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %143 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @nvkm_wr32(%struct.nvkm_device* %142, i32 %143, i32 %144)
  %146 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %147 = load i32, i32* @NV10_PGRAPH_CTX_CONTROL, align 4
  %148 = call i32 @nvkm_mask(%struct.nvkm_device* %146, i32 %147, i32 0, i32 65536)
  %149 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %150 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %151 = call i32 @nvkm_mask(%struct.nvkm_device* %149, i32 %150, i32 1, i32 1)
  %152 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %153 = load i32, i32* @NV04_PGRAPH_FIFO, align 4
  %154 = call i32 @nvkm_mask(%struct.nvkm_device* %152, i32 %153, i32 1, i32 0)
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %170, %123
  %156 = load i32, i32* %16, align 4
  %157 = getelementptr inbounds [24 x i32], [24 x i32]* %13, i64 0, i64 0
  %158 = call i32 @ARRAY_SIZE(i32* %157)
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %155
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %162 = load i32, i32* %16, align 4
  %163 = mul nsw i32 4, %162
  %164 = add nsw i32 4196256, %163
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [24 x i32], [24 x i32]* %13, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @nvkm_wr32(%struct.nvkm_device* %161, i32 %164, i32 %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %155

173:                                              ; preds = %155
  %174 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %175 = load i32, i32* @NV10_PGRAPH_FFINTFC_FIFO_PTR, align 4
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @nvkm_wr32(%struct.nvkm_device* %174, i32 %175, i32 %176)
  %178 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %179 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @nvkm_wr32(%struct.nvkm_device* %178, i32 %179, i32 %180)
  %182 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %183 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DL, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @nvkm_wr32(%struct.nvkm_device* %182, i32 %183, i32 %184)
  %186 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %187 = load i32, i32* @NV10_PGRAPH_FFINTFC_ST2_DH, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @nvkm_wr32(%struct.nvkm_device* %186, i32 %187, i32 %188)
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %202, %173
  %191 = load i32, i32* %16, align 4
  %192 = icmp slt i32 %191, 5
  br i1 %192, label %193, label %205

193:                                              ; preds = %190
  %194 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @NV10_PGRAPH_CTX_SWITCH(i32 %195)
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @nvkm_wr32(%struct.nvkm_device* %194, i32 %196, i32 %200)
  br label %202

202:                                              ; preds = %193
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %190

205:                                              ; preds = %190
  %206 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %207 = load i32, i32* @NV10_PGRAPH_CTX_USER, align 4
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @nvkm_wr32(%struct.nvkm_device* %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %205, %57
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @NV10_PGRAPH_CTX_CACHE(i32, i32) #1

declare dso_local i32 @NV10_PGRAPH_CTX_SWITCH(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
