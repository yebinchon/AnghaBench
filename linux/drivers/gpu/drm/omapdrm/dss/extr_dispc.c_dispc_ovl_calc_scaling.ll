; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* }
%struct.videomode = type { i64 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot calculate scaling settings: pclk is zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@OMAP_DSS_ROT_TILER = common dso_local global i32 0, align 4
@FEAT_BURST_2D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [110 x i8] c"%dx%d -> %dx%d (%d.%02d x %d.%02d), decim %dx%d %dx%d (%d.%02d x %d.%02d), taps %d, req clk %lu, cur clk %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"failed to set up scaling, required core clk rate = %lu Hz, current core clk rate = %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32, i64, i64, i32, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32)* @dispc_ovl_calc_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling(%struct.dispc_device* %0, i32 %1, i64 %2, i64 %3, i32 %4, %struct.videomode* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32* %12, i32* %13, i32 %14, i32 %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.dispc_device*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.videomode*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %19, align 8
  store i32 %1, i32* %20, align 4
  store i64 %2, i64* %21, align 8
  store i64 %3, i64* %22, align 8
  store i32 %4, i32* %23, align 4
  store %struct.videomode* %5, %struct.videomode** %24, align 8
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i32 %8, i32* %27, align 4
  store i32 %9, i32* %28, align 4
  store i32 %10, i32* %29, align 4
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32 %14, i32* %33, align 4
  store i32 %15, i32* %34, align 4
  store i32 %16, i32* %35, align 4
  %43 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %44 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %36, align 4
  %48 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %49 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %37, align 4
  store i32 16, i32* %38, align 4
  store i64 0, i64* %39, align 8
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %27, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %17
  %57 = load i32, i32* %26, align 4
  %58 = load i32, i32* %28, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %18, align 4
  br label %249

61:                                               ; preds = %56, %17
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @OMAP_DSS_WB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %29, align 4
  switch i32 %66, label %69 [
    i32 130, label %67
    i32 128, label %68
    i32 129, label %68
  ]

67:                                               ; preds = %65
  store i32 2, i32* %37, align 4
  store i32 2, i32* %36, align 4
  br label %70

68:                                               ; preds = %65, %65
  store i32 2, i32* %36, align 4
  store i32 4, i32* %37, align 4
  br label %70

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %68, %67
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i32, i32* %35, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %21, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.videomode*, %struct.videomode** %24, align 8
  %79 = getelementptr inbounds %struct.videomode, %struct.videomode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %74
  %83 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  br label %249

86:                                               ; preds = %77, %71
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %18, align 4
  br label %249

94:                                               ; preds = %86
  %95 = load i32, i32* %35, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32*, i32** %32, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32*, i32** %31, align 8
  store i32 1, i32* %99, align 4
  br label %115

100:                                              ; preds = %94
  %101 = load i32*, i32** %31, align 8
  store i32 16, i32* %101, align 4
  %102 = load i32, i32* %34, align 4
  %103 = load i32, i32* @OMAP_DSS_ROT_TILER, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %107 = load i32, i32* @FEAT_BURST_2D, align 4
  %108 = call i64 @dispc_has_feature(%struct.dispc_device* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 2, i32 16
  %114 = load i32*, i32** %32, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %97
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %27, align 4
  %118 = call i32 @DIV_ROUND_UP(i32 %116, i32 %117)
  %119 = load i32, i32* %36, align 4
  %120 = call i32 @DIV_ROUND_UP(i32 %118, i32 %119)
  store i32 %120, i32* %40, align 4
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %28, align 4
  %123 = call i32 @DIV_ROUND_UP(i32 %121, i32 %122)
  %124 = load i32, i32* %37, align 4
  %125 = call i32 @DIV_ROUND_UP(i32 %123, i32 %124)
  store i32 %125, i32* %41, align 4
  %126 = load i32, i32* %40, align 4
  %127 = load i32*, i32** %31, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* %25, align 4
  %133 = mul nsw i32 %132, 8
  %134 = icmp sgt i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130, %115
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %18, align 4
  br label %249

138:                                              ; preds = %130
  %139 = load i32, i32* %41, align 4
  %140 = load i32*, i32** %32, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %26, align 4
  %146 = mul nsw i32 %145, 8
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %18, align 4
  br label %249

151:                                              ; preds = %143
  %152 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %153 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)*, i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)** %155, align 8
  %157 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %22, align 8
  %160 = load %struct.videomode*, %struct.videomode** %24, align 8
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %27, align 4
  %164 = load i32, i32* %28, align 4
  %165 = load i32, i32* %29, align 4
  %166 = load i32*, i32** %30, align 8
  %167 = load i32*, i32** %31, align 8
  %168 = load i32*, i32** %32, align 8
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %35, align 4
  %171 = call i32 %156(%struct.dispc_device* %157, i64 %158, i64 %159, %struct.videomode* %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32* %166, i32* %167, i32* %168, i32* %40, i32* %41, i32 %169, i64* %39, i32 %170)
  store i32 %171, i32* %42, align 4
  %172 = load i32, i32* %42, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %151
  %175 = load i32, i32* %42, align 4
  store i32 %175, i32* %18, align 4
  br label %249

176:                                              ; preds = %151
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %25, align 4
  %183 = sdiv i32 %181, %182
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %25, align 4
  %186 = call i32 @DIV_FRAC(i32 %184, i32 %185)
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* %26, align 4
  %189 = sdiv i32 %187, %188
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* %26, align 4
  %192 = call i32 @DIV_FRAC(i32 %190, i32 %191)
  %193 = load i32, i32* %40, align 4
  %194 = load i32, i32* %41, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load i32, i32* %40, align 4
  %197 = sdiv i32 %195, %196
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %41, align 4
  %200 = sdiv i32 %198, %199
  %201 = load i32, i32* %27, align 4
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* %40, align 4
  %204 = sdiv i32 %202, %203
  %205 = sdiv i32 %201, %204
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* %40, align 4
  %209 = sdiv i32 %207, %208
  %210 = call i32 @DIV_FRAC(i32 %206, i32 %209)
  %211 = load i32, i32* %28, align 4
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* %41, align 4
  %214 = sdiv i32 %212, %213
  %215 = sdiv i32 %211, %214
  %216 = load i32, i32* %28, align 4
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %41, align 4
  %219 = sdiv i32 %217, %218
  %220 = call i32 @DIV_FRAC(i32 %216, i32 %219)
  %221 = load i32*, i32** %30, align 8
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 5, i32 3
  %226 = load i64, i64* %39, align 8
  %227 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %228 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %227)
  %229 = call i32 @DSSDBG(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %177, i32 %178, i32 %179, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32 %193, i32 %194, i32 %197, i32 %200, i32 %205, i32 %210, i32 %215, i32 %220, i32 %225, i64 %226, i64 %228)
  %230 = load i64, i64* %39, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %176
  %233 = load i64, i64* %39, align 8
  %234 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %235 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %234)
  %236 = icmp ugt i64 %233, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %232, %176
  %238 = load i64, i64* %39, align 8
  %239 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %240 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %239)
  %241 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i64 %238, i64 %240)
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %18, align 4
  br label %249

244:                                              ; preds = %232
  %245 = load i32, i32* %40, align 4
  %246 = load i32*, i32** %31, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %41, align 4
  %248 = load i32*, i32** %32, align 8
  store i32 %247, i32* %248, align 4
  store i32 0, i32* %18, align 4
  br label %249

249:                                              ; preds = %244, %237, %174, %148, %135, %91, %82, %60
  %250 = load i32, i32* %18, align 4
  ret i32 %250
}

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DIV_FRAC(i32, i32) #1

declare dso_local i64 @dispc_core_clk_rate(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
