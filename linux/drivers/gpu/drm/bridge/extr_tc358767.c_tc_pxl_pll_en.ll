; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_pxl_pll_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_pxl_pll_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_data = type { i32, i32 }

@__const.tc_pxl_pll_en.ext_div = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 16
@.str = private unnamed_addr constant [38 x i8] c"PLL: requested %d pixelclock, ref %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to calc clock for %d pixelclock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"PLL: got %d, delta %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"PLL: %d / %d / %d * %d / %d\0A\00", align 1
@PXL_PLLCTRL = common dso_local global i32 0, align 4
@PLLBYP = common dso_local global i32 0, align 4
@PLLEN = common dso_local global i32 0, align 4
@IN_SEL_REFCLK = common dso_local global i32 0, align 4
@PXL_PLLPARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_data*, i32, i32)* @tc_pxl_pll_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_pxl_pll_en(%struct.tc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [5 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.tc_data* %0, %struct.tc_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %25 = bitcast [5 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([5 x i32]* @__const.tc_pxl_pll_en.ext_div to i8*), i64 20, i1 false)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %27 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %129, %3
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %132

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %39, %43
  %45 = icmp slt i32 %44, 1000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %129

47:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %125, %47
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %128

53:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %121, %53
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 16
  br i1 %56, label %57, label %124

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %58, %62
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @do_div(i32 %71, i32 %72)
  %74 = load i32, i32* %24, align 4
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %15, align 4
  %79 = icmp sgt i32 %78, 128
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %57
  br label %121

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %82, %86
  %88 = load i32, i32* %13, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %23, align 4
  %93 = icmp sgt i32 %92, 650000000
  br i1 %93, label %97, label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %23, align 4
  %96 = icmp slt i32 %95, 150000000
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %81
  br label %121

98:                                               ; preds = %94
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %99, %103
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i64 @abs(i32 %108)
  %110 = load i32, i32* %18, align 4
  %111 = call i64 @abs(i32 %110)
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %98
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %23, align 4
  store i32 %119, i32* %20, align 4
  br label %120

120:                                              ; preds = %113, %98
  br label %121

121:                                              ; preds = %120, %97, %80
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %54

124:                                              ; preds = %54
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %48

128:                                              ; preds = %48
  br label %129

129:                                              ; preds = %128, %46
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %33

132:                                              ; preds = %33
  %133 = load i32, i32* %20, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %137 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %239

143:                                              ; preds = %132
  %144 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %145 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %18, align 4
  %149 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %151 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %157, i32 %158, i32 %159, i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %165, %169
  %171 = load i32, i32* %14, align 4
  %172 = sdiv i32 %170, %171
  %173 = load i32, i32* %16, align 4
  %174 = mul nsw i32 %172, %173
  %175 = icmp sge i32 %174, 300000000
  br i1 %175, label %176, label %177

176:                                              ; preds = %143
  store i32 1, i32* %21, align 4
  br label %177

177:                                              ; preds = %176, %143
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, 16
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %180, %177
  %182 = load i32, i32* %16, align 4
  %183 = icmp eq i32 %182, 128
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %184, %181
  %186 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %187 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PXL_PLLCTRL, align 4
  %190 = load i32, i32* @PLLBYP, align 4
  %191 = load i32, i32* @PLLEN, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @regmap_write(i32 %188, i32 %189, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %185
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %4, align 4
  br label %239

198:                                              ; preds = %185
  %199 = load i32, i32* %21, align 4
  %200 = shl i32 %199, 24
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = shl i32 %204, 20
  %206 = load i32, i32* %22, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 %211, 16
  %213 = load i32, i32* %22, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %22, align 4
  %215 = load i32, i32* @IN_SEL_REFCLK, align 4
  %216 = load i32, i32* %22, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %22, align 4
  %218 = load i32, i32* %14, align 4
  %219 = shl i32 %218, 8
  %220 = load i32, i32* %22, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %22, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %22, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %22, align 4
  %225 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %226 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @PXL_PLLPARAM, align 4
  %229 = load i32, i32* %22, align 4
  %230 = call i32 @regmap_write(i32 %227, i32 %228, i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %198
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %4, align 4
  br label %239

235:                                              ; preds = %198
  %236 = load %struct.tc_data*, %struct.tc_data** %5, align 8
  %237 = load i32, i32* @PXL_PLLCTRL, align 4
  %238 = call i32 @tc_pllupdate(%struct.tc_data* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %235, %233, %196, %135
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @do_div(i32, i32) #2

declare dso_local i64 @abs(i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @tc_pllupdate(%struct.tc_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
