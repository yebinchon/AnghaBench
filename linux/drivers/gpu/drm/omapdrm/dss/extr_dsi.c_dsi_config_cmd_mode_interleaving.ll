; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_config_cmd_mode_interleaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_config_cmd_mode_interleaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__, i32, %struct.videomode }
%struct.TYPE_2__ = type { i32* }
%struct.videomode = type { i32 }

@HSDIV_DSI = common dso_local global i64 0, align 8
@DSI_CTRL = common dso_local global i32 0, align 4
@DSI_VM_TIMING1 = common dso_local global i32 0, align 4
@DSI_CLK_TIMING = common dso_local global i32 0, align 4
@DSI_VM_TIMING7 = common dso_local global i32 0, align 4
@DSI_CLK_CTRL = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG0 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"DSI HS interleaving(TXBYTECLKHS) HSA %d, HFP %d, HBP %d, BLLP %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"DSI LP interleaving(bytes) HSA %d, HFP %d, HBP %d, BLLP %d\0A\00", align 1
@DSI_VM_TIMING4 = common dso_local global i32 0, align 4
@DSI_VM_TIMING5 = common dso_local global i32 0, align 4
@DSI_VM_TIMING6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*)* @dsi_config_cmd_mode_interleaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_config_cmd_mode_interleaving(%struct.dsi_data* %0) #0 {
  %2 = alloca %struct.dsi_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.videomode*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %2, align 8
  %34 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 3
  store %struct.videomode* %35, %struct.videomode** %21, align 8
  %36 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %37 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dsi_get_pixel_size(i32 %38)
  store i32 %39, i32* %22, align 4
  %40 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %41 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %23, align 4
  %44 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @HSDIV_DSI, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %52 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %53 = load i32, i32* @DSI_CTRL, align 4
  %54 = call i32 @dsi_read_reg(%struct.dsi_data* %52, i32 %53)
  store i32 %54, i32* %33, align 4
  %55 = load i32, i32* %33, align 4
  %56 = call i32 @FLD_GET(i32 %55, i32 20, i32 20)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %33, align 4
  %58 = call i32 @FLD_GET(i32 %57, i32 21, i32 21)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %33, align 4
  %60 = call i32 @FLD_GET(i32 %59, i32 22, i32 22)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %33, align 4
  %62 = call i32 @FLD_GET(i32 %61, i32 23, i32 23)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %64 = load i32, i32* @DSI_VM_TIMING1, align 4
  %65 = call i32 @dsi_read_reg(%struct.dsi_data* %63, i32 %64)
  store i32 %65, i32* %33, align 4
  %66 = load i32, i32* %33, align 4
  %67 = call i32 @FLD_GET(i32 %66, i32 11, i32 0)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %33, align 4
  %69 = call i32 @FLD_GET(i32 %68, i32 23, i32 12)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %33, align 4
  %71 = call i32 @FLD_GET(i32 %70, i32 31, i32 24)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %73 = load i32, i32* @DSI_CLK_TIMING, align 4
  %74 = call i32 @dsi_read_reg(%struct.dsi_data* %72, i32 %73)
  store i32 %74, i32* %33, align 4
  %75 = load i32, i32* %33, align 4
  %76 = call i32 @FLD_GET(i32 %75, i32 7, i32 0)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %33, align 4
  %78 = call i32 @FLD_GET(i32 %77, i32 15, i32 8)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %80 = load i32, i32* @DSI_VM_TIMING7, align 4
  %81 = call i32 @dsi_read_reg(%struct.dsi_data* %79, i32 %80)
  store i32 %81, i32* %33, align 4
  %82 = load i32, i32* %33, align 4
  %83 = call i32 @FLD_GET(i32 %82, i32 15, i32 0)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %33, align 4
  %85 = call i32 @FLD_GET(i32 %84, i32 31, i32 16)
  store i32 %85, i32* %15, align 4
  %86 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %87 = load i32, i32* @DSI_CLK_CTRL, align 4
  %88 = call i32 @dsi_read_reg(%struct.dsi_data* %86, i32 %87)
  store i32 %88, i32* %33, align 4
  %89 = load i32, i32* %33, align 4
  %90 = call i32 @FLD_GET(i32 %89, i32 12, i32 0)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %33, align 4
  %92 = call i32 @FLD_GET(i32 %91, i32 13, i32 13)
  store i32 %92, i32* %20, align 4
  %93 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %94 = load i32, i32* @DSI_DSIPHY_CFG0, align 4
  %95 = call i32 @dsi_read_reg(%struct.dsi_data* %93, i32 %94)
  store i32 %95, i32* %33, align 4
  %96 = load i32, i32* %33, align 4
  %97 = call i32 @FLD_GET(i32 %96, i32 7, i32 0)
  store i32 %97, i32* %18, align 4
  %98 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %99 = load i32, i32* @DSI_DSIPHY_CFG1, align 4
  %100 = call i32 @dsi_read_reg(%struct.dsi_data* %98, i32 %99)
  store i32 %100, i32* %33, align 4
  %101 = load i32, i32* %33, align 4
  %102 = call i32 @FLD_GET(i32 %101, i32 15, i32 8)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %19, align 4
  %106 = load %struct.videomode*, %struct.videomode** %21, align 8
  %107 = getelementptr inbounds %struct.videomode, %struct.videomode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %22, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @DIV_ROUND_UP(i32 %110, i32 8)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 6
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @DIV_ROUND_UP(i32 %118, i32 %119)
  %121 = add nsw i32 %116, %120
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %1
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @dsi_compute_interleave_hs(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %25, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %24, align 4
  %138 = call i32 @dsi_compute_interleave_lp(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %26, align 4
  br label %139

139:                                              ; preds = %124, %1
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @dsi_compute_interleave_hs(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %27, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @dsi_compute_interleave_lp(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %28, align 4
  br label %157

157:                                              ; preds = %142, %139
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @dsi_compute_interleave_hs(i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store i32 %168, i32* %29, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %24, align 4
  %174 = call i32 @dsi_compute_interleave_lp(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %30, align 4
  br label %175

175:                                              ; preds = %160, %157
  %176 = load i32, i32* %3, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @dsi_compute_interleave_hs(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %31, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %24, align 4
  %192 = call i32 @dsi_compute_interleave_lp(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  store i32 %192, i32* %32, align 4
  br label %193

193:                                              ; preds = %178, %175
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* %29, align 4
  %197 = load i32, i32* %31, align 4
  %198 = call i32 @DSSDBG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %26, align 4
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %30, align 4
  %202 = load i32, i32* %32, align 4
  %203 = call i32 @DSSDBG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %205 = load i32, i32* @DSI_VM_TIMING4, align 4
  %206 = call i32 @dsi_read_reg(%struct.dsi_data* %204, i32 %205)
  store i32 %206, i32* %33, align 4
  %207 = load i32, i32* %33, align 4
  %208 = load i32, i32* %25, align 4
  %209 = call i32 @FLD_MOD(i32 %207, i32 %208, i32 23, i32 16)
  store i32 %209, i32* %33, align 4
  %210 = load i32, i32* %33, align 4
  %211 = load i32, i32* %27, align 4
  %212 = call i32 @FLD_MOD(i32 %210, i32 %211, i32 15, i32 8)
  store i32 %212, i32* %33, align 4
  %213 = load i32, i32* %33, align 4
  %214 = load i32, i32* %29, align 4
  %215 = call i32 @FLD_MOD(i32 %213, i32 %214, i32 7, i32 0)
  store i32 %215, i32* %33, align 4
  %216 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %217 = load i32, i32* @DSI_VM_TIMING4, align 4
  %218 = load i32, i32* %33, align 4
  %219 = call i32 @dsi_write_reg(%struct.dsi_data* %216, i32 %217, i32 %218)
  %220 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %221 = load i32, i32* @DSI_VM_TIMING5, align 4
  %222 = call i32 @dsi_read_reg(%struct.dsi_data* %220, i32 %221)
  store i32 %222, i32* %33, align 4
  %223 = load i32, i32* %33, align 4
  %224 = load i32, i32* %26, align 4
  %225 = call i32 @FLD_MOD(i32 %223, i32 %224, i32 23, i32 16)
  store i32 %225, i32* %33, align 4
  %226 = load i32, i32* %33, align 4
  %227 = load i32, i32* %28, align 4
  %228 = call i32 @FLD_MOD(i32 %226, i32 %227, i32 15, i32 8)
  store i32 %228, i32* %33, align 4
  %229 = load i32, i32* %33, align 4
  %230 = load i32, i32* %30, align 4
  %231 = call i32 @FLD_MOD(i32 %229, i32 %230, i32 7, i32 0)
  store i32 %231, i32* %33, align 4
  %232 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %233 = load i32, i32* @DSI_VM_TIMING5, align 4
  %234 = load i32, i32* %33, align 4
  %235 = call i32 @dsi_write_reg(%struct.dsi_data* %232, i32 %233, i32 %234)
  %236 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %237 = load i32, i32* @DSI_VM_TIMING6, align 4
  %238 = call i32 @dsi_read_reg(%struct.dsi_data* %236, i32 %237)
  store i32 %238, i32* %33, align 4
  %239 = load i32, i32* %33, align 4
  %240 = load i32, i32* %31, align 4
  %241 = call i32 @FLD_MOD(i32 %239, i32 %240, i32 31, i32 15)
  store i32 %241, i32* %33, align 4
  %242 = load i32, i32* %33, align 4
  %243 = load i32, i32* %32, align 4
  %244 = call i32 @FLD_MOD(i32 %242, i32 %243, i32 16, i32 0)
  store i32 %244, i32* %33, align 4
  %245 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %246 = load i32, i32* @DSI_VM_TIMING6, align 4
  %247 = load i32, i32* %33, align 4
  %248 = call i32 @dsi_write_reg(%struct.dsi_data* %245, i32 %246, i32 %247)
  ret void
}

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dsi_compute_interleave_hs(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_compute_interleave_lp(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
