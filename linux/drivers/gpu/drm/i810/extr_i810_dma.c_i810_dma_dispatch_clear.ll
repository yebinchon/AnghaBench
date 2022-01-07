; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@I810_FRONT = common dso_local global i32 0, align 4
@I810_BACK = common dso_local global i32 0, align 4
@I810_NR_SAREA_CLIPRECTS = common dso_local global i32 0, align 4
@BR00_BITBLT_CLIENT = common dso_local global i32 0, align 4
@BR00_OP_COLOR_BLT = common dso_local global i32 0, align 4
@BR13_SOLID_PATTERN = common dso_local global i32 0, align 4
@I810_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32)* @i810_dma_dispatch_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_dma_dispatch_clear(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_clip_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %9, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %10, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %32, align 8
  store %struct.drm_clip_rect* %33, %struct.drm_clip_rect** %12, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %37 = load i32, i32* @RING_LOCALS, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %68

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @I810_FRONT, align 4
  %45 = load i32, i32* @I810_BACK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @I810_FRONT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @I810_BACK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @I810_BACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @I810_FRONT, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %4
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = call i32 @i810_kernel_lost_context(%struct.drm_device* %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %68
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %232, %76
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %237

81:                                               ; preds = %77
  %82 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %83 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %17, align 4
  %85 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %86 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %18, align 4
  %88 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %89 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sub i32 %90, %91
  %93 = load i32, i32* %14, align 4
  %94 = mul i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %96 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %18, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  %105 = mul i32 %103, %104
  %106 = add i32 %102, %105
  store i32 %106, i32* %21, align 4
  %107 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %108 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %111 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ugt i32 %109, %112
  br i1 %113, label %138, label %114

114:                                              ; preds = %81
  %115 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %116 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %119 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ugt i32 %117, %120
  br i1 %121, label %138, label %122

122:                                              ; preds = %114
  %123 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %124 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ugt i32 %125, %128
  br i1 %129, label %138, label %130

130:                                              ; preds = %122
  %131 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %132 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp ugt i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130, %122, %114, %81
  br label %232

139:                                              ; preds = %130
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @I810_FRONT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %139
  %145 = call i32 @BEGIN_LP_RING(i32 6)
  %146 = load i32, i32* @BR00_BITBLT_CLIENT, align 4
  %147 = load i32, i32* @BR00_OP_COLOR_BLT, align 4
  %148 = or i32 %146, %147
  %149 = or i32 %148, 3
  %150 = call i32 @OUT_RING(i32 %149)
  %151 = load i32, i32* @BR13_SOLID_PATTERN, align 4
  %152 = or i32 %151, 15728640
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @OUT_RING(i32 %154)
  %156 = load i32, i32* %20, align 4
  %157 = shl i32 %156, 16
  %158 = load i32, i32* %19, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @OUT_RING(i32 %159)
  %161 = load i32, i32* %21, align 4
  %162 = call i32 @OUT_RING(i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @OUT_RING(i32 %163)
  %165 = call i32 @OUT_RING(i32 0)
  %166 = call i32 (...) @ADVANCE_LP_RING()
  br label %167

167:                                              ; preds = %144, %139
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @I810_BACK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %167
  %173 = call i32 @BEGIN_LP_RING(i32 6)
  %174 = load i32, i32* @BR00_BITBLT_CLIENT, align 4
  %175 = load i32, i32* @BR00_OP_COLOR_BLT, align 4
  %176 = or i32 %174, %175
  %177 = or i32 %176, 3
  %178 = call i32 @OUT_RING(i32 %177)
  %179 = load i32, i32* @BR13_SOLID_PATTERN, align 4
  %180 = or i32 %179, 15728640
  %181 = load i32, i32* %13, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @OUT_RING(i32 %182)
  %184 = load i32, i32* %20, align 4
  %185 = shl i32 %184, 16
  %186 = load i32, i32* %19, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @OUT_RING(i32 %187)
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %21, align 4
  %193 = add i32 %191, %192
  %194 = call i32 @OUT_RING(i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @OUT_RING(i32 %195)
  %197 = call i32 @OUT_RING(i32 0)
  %198 = call i32 (...) @ADVANCE_LP_RING()
  br label %199

199:                                              ; preds = %172, %167
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @I810_DEPTH, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %231

204:                                              ; preds = %199
  %205 = call i32 @BEGIN_LP_RING(i32 6)
  %206 = load i32, i32* @BR00_BITBLT_CLIENT, align 4
  %207 = load i32, i32* @BR00_OP_COLOR_BLT, align 4
  %208 = or i32 %206, %207
  %209 = or i32 %208, 3
  %210 = call i32 @OUT_RING(i32 %209)
  %211 = load i32, i32* @BR13_SOLID_PATTERN, align 4
  %212 = or i32 %211, 15728640
  %213 = load i32, i32* %13, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @OUT_RING(i32 %214)
  %216 = load i32, i32* %20, align 4
  %217 = shl i32 %216, 16
  %218 = load i32, i32* %19, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @OUT_RING(i32 %219)
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %21, align 4
  %225 = add i32 %223, %224
  %226 = call i32 @OUT_RING(i32 %225)
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @OUT_RING(i32 %227)
  %229 = call i32 @OUT_RING(i32 0)
  %230 = call i32 (...) @ADVANCE_LP_RING()
  br label %231

231:                                              ; preds = %204, %199
  br label %232

232:                                              ; preds = %231, %138
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  %235 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %12, align 8
  %236 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %235, i32 1
  store %struct.drm_clip_rect* %236, %struct.drm_clip_rect** %12, align 8
  br label %77

237:                                              ; preds = %77
  ret void
}

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
