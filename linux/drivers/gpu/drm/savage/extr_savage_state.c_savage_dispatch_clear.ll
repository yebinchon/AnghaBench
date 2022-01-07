; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@BCI_CMD_RECT = common dso_local global i32 0, align 4
@BCI_CMD_RECT_XP = common dso_local global i32 0, align 4
@BCI_CMD_RECT_YP = common dso_local global i32 0, align 4
@BCI_CMD_SEND_COLOR = common dso_local global i32 0, align 4
@BCI_CMD_DEST_PBD_NEW = common dso_local global i32 0, align 4
@SAVAGE_BITPLANEWTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.drm_clip_rect*)* @savage_dispatch_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_clear(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i32 %3, %struct.drm_clip_rect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_clip_rect*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.drm_clip_rect* %4, %struct.drm_clip_rect** %11, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @DMA_LOCALS, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %199

29:                                               ; preds = %5
  %30 = load i32, i32* @BCI_CMD_RECT, align 4
  %31 = load i32, i32* @BCI_CMD_RECT_XP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BCI_CMD_RECT_YP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BCI_CMD_SEND_COLOR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BCI_CMD_DEST_PBD_NEW, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @BCI_CMD_SET_ROP(i32 %39, i32 204)
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 130
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = add nsw i32 %45, %50
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 129
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %199

61:                                               ; preds = %29
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = call i32 @BEGIN_DMA(i32 2)
  %69 = load i32, i32* @SAVAGE_BITPLANEWTMASK, align 4
  %70 = call i32 @DMA_SET_REGISTERS(i32 %69, i32 1)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @DMA_WRITE(i32 %74)
  %76 = call i32 (...) @DMA_COMMIT()
  br label %77

77:                                               ; preds = %67, %61
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %183, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %186

82:                                               ; preds = %78
  %83 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %83, i64 %85
  %87 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %16, align 4
  %89 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %89, i64 %91
  %93 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %17, align 4
  %95 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %95, i64 %97
  %99 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %101, i64 %103
  %105 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %100, %106
  store i32 %107, i32* %18, align 4
  %108 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %108, i64 %110
  %112 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %115 = load i32, i32* %14, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %114, i64 %116
  %118 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %113, %119
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %15, align 4
  %122 = mul i32 %121, 6
  %123 = call i32 @BEGIN_DMA(i32 %122)
  store i32 128, i32* %20, align 4
  br label %124

124:                                              ; preds = %178, %82
  %125 = load i32, i32* %20, align 4
  %126 = icmp ule i32 %125, 129
  br i1 %126, label %127, label %181

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %20, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %178

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @DMA_WRITE(i32 %134)
  %136 = load i32, i32* %20, align 4
  switch i32 %136, label %164 [
    i32 128, label %137
    i32 130, label %146
    i32 129, label %155
  ]

137:                                              ; preds = %133
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @DMA_WRITE(i32 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @DMA_WRITE(i32 %144)
  br label %164

146:                                              ; preds = %133
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DMA_WRITE(i32 %149)
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @DMA_WRITE(i32 %153)
  br label %164

155:                                              ; preds = %133
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DMA_WRITE(i32 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DMA_WRITE(i32 %162)
  br label %164

164:                                              ; preds = %133, %155, %146, %137
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @DMA_WRITE(i32 %168)
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @BCI_X_Y(i32 %170, i32 %171)
  %173 = call i32 @DMA_WRITE(i32 %172)
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @BCI_W_H(i32 %174, i32 %175)
  %177 = call i32 @DMA_WRITE(i32 %176)
  br label %178

178:                                              ; preds = %164, %132
  %179 = load i32, i32* %20, align 4
  %180 = shl i32 %179, 1
  store i32 %180, i32* %20, align 4
  br label %124

181:                                              ; preds = %124
  %182 = call i32 (...) @DMA_COMMIT()
  br label %183

183:                                              ; preds = %181
  %184 = load i32, i32* %14, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %14, align 4
  br label %78

186:                                              ; preds = %78
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, -1
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = call i32 @BEGIN_DMA(i32 2)
  %194 = load i32, i32* @SAVAGE_BITPLANEWTMASK, align 4
  %195 = call i32 @DMA_SET_REGISTERS(i32 %194, i32 1)
  %196 = call i32 @DMA_WRITE(i32 -1)
  %197 = call i32 (...) @DMA_COMMIT()
  br label %198

198:                                              ; preds = %192, %186
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %60, %28
  %200 = load i32, i32* %6, align 4
  ret i32 %200
}

declare dso_local i32 @BCI_CMD_SET_ROP(i32, i32) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_SET_REGISTERS(i32, i32) #1

declare dso_local i32 @DMA_WRITE(i32) #1

declare dso_local i32 @DMA_COMMIT(...) #1

declare dso_local i32 @BCI_X_Y(i32, i32) #1

declare dso_local i32 @BCI_W_H(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
