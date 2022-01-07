; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_pixels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@R128_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_P = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @r128_cce_dispatch_write_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_write_pixels(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @RING_LOCALS, align 4
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 4096
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %244

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32* @memdup_user(i64 %44, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %3, align 4
  br label %244

53:                                               ; preds = %33
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32* @memdup_user(i64 %56, i32 %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %3, align 4
  br label %244

67:                                               ; preds = %53
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32* @memdup_user(i64 %76, i32 %77)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %67
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @kfree(i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %3, align 4
  br label %244

89:                                               ; preds = %67
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %181

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %16, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32* @memdup_user(i64 %100, i32 %101)
  store i32* %102, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i64 @IS_ERR(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @PTR_ERR(i32* %113)
  store i32 %114, i32* %3, align 4
  br label %244

115:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %175, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %178

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %174

127:                                              ; preds = %120
  %128 = call i32 @BEGIN_RING(i32 6)
  %129 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %130 = call i32 @CCE_PACKET3(i32 %129, i32 4)
  %131 = call i32 @OUT_RING(i32 %130)
  %132 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %133 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = or i32 %134, %138
  %140 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @R128_ROP3_P, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @OUT_RING(i32 %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @OUT_RING(i32 %151)
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @OUT_RING(i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 %163, 16
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %164, %169
  %171 = call i32 @OUT_RING(i32 %170)
  %172 = call i32 @OUT_RING(i32 65537)
  %173 = call i32 (...) @ADVANCE_RING()
  br label %174

174:                                              ; preds = %127, %120
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %116

178:                                              ; preds = %116
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @kfree(i32* %179)
  br label %237

181:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %233, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %236

186:                                              ; preds = %182
  %187 = call i32 @BEGIN_RING(i32 6)
  %188 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %189 = call i32 @CCE_PACKET3(i32 %188, i32 4)
  %190 = call i32 @OUT_RING(i32 %189)
  %191 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %192 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 8
  %198 = or i32 %193, %197
  %199 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @R128_ROP3_P, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @OUT_RING(i32 %206)
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @OUT_RING(i32 %210)
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @OUT_RING(i32 %216)
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 16
  %224 = load i32*, i32** %9, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %223, %228
  %230 = call i32 @OUT_RING(i32 %229)
  %231 = call i32 @OUT_RING(i32 65537)
  %232 = call i32 (...) @ADVANCE_RING()
  br label %233

233:                                              ; preds = %186
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %182

236:                                              ; preds = %182
  br label %237

237:                                              ; preds = %236, %178
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @kfree(i32* %238)
  %240 = load i32*, i32** %9, align 8
  %241 = call i32 @kfree(i32* %240)
  %242 = load i32*, i32** %10, align 8
  %243 = call i32 @kfree(i32* %242)
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %237, %106, %82, %62, %50, %30
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32* @memdup_user(i64, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
