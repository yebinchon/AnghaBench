; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.imx_ldb_channel = type { i64, i32, i32, %struct.imx_ldb* }
%struct.imx_ldb = type { i32, i32, %struct.bus_mux*, %struct.imx_ldb_channel*, i32*, i32* }
%struct.bus_mux = type { i32, i32, i32 }

@LDB_SPLIT_MODE_EN = common dso_local global i32 0, align 4
@LDB_CH0_MODE_EN_MASK = common dso_local global i32 0, align 4
@LDB_CH0_MODE_EN_TO_DI0 = common dso_local global i32 0, align 4
@LDB_CH0_MODE_EN_TO_DI1 = common dso_local global i32 0, align 4
@LDB_CH1_MODE_EN_MASK = common dso_local global i32 0, align 4
@LDB_CH1_MODE_EN_TO_DI1 = common dso_local global i32 0, align 4
@LDB_CH1_MODE_EN_TO_DI0 = common dso_local global i32 0, align 4
@IOMUXC_GPR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @imx_ldb_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ldb_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.imx_ldb_channel*, align 8
  %4 = alloca %struct.imx_ldb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_mux*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder* %8)
  store %struct.imx_ldb_channel* %9, %struct.imx_ldb_channel** %3, align 8
  %10 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %11 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %10, i32 0, i32 3
  %12 = load %struct.imx_ldb*, %struct.imx_ldb** %11, align 8
  store %struct.imx_ldb* %12, %struct.imx_ldb** %4, align 8
  %13 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %14 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LDB_SPLIT_MODE_EN, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %19 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = call i32 @drm_of_encoder_active_port_id(i32 %20, %struct.drm_encoder* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %24 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @drm_panel_prepare(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %68

29:                                               ; preds = %1
  %30 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %31 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %38 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_set_parent(i32 %36, i32 %41)
  %43 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %44 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %51 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_set_parent(i32 %49, i32 %54)
  %56 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %57 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_prepare_enable(i32 %60)
  %62 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %63 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_prepare_enable(i32 %66)
  br label %85

68:                                               ; preds = %1
  %69 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %70 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %77 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %80 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_set_parent(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %68, %29
  %86 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %87 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %88 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %87, i32 0, i32 3
  %89 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %88, align 8
  %90 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %89, i64 0
  %91 = icmp eq %struct.imx_ldb_channel* %86, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %126

95:                                               ; preds = %92, %85
  %96 = load i32, i32* @LDB_CH0_MODE_EN_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %99 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %95
  %105 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %106 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %105, i32 0, i32 2
  %107 = load %struct.bus_mux*, %struct.bus_mux** %106, align 8
  %108 = icmp ne %struct.bus_mux* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104, %95
  %110 = load i32, i32* @LDB_CH0_MODE_EN_TO_DI0, align 4
  %111 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %112 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %125

115:                                              ; preds = %104
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* @LDB_CH0_MODE_EN_TO_DI1, align 4
  %120 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %121 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %118, %115
  br label %125

125:                                              ; preds = %124, %109
  br label %126

126:                                              ; preds = %125, %92
  %127 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %128 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %129 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %128, i32 0, i32 3
  %130 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %129, align 8
  %131 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %130, i64 1
  %132 = icmp eq %struct.imx_ldb_channel* %127, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %133, %126
  %137 = load i32, i32* @LDB_CH1_MODE_EN_MASK, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %140 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %150, label %145

145:                                              ; preds = %136
  %146 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %147 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %146, i32 0, i32 2
  %148 = load %struct.bus_mux*, %struct.bus_mux** %147, align 8
  %149 = icmp ne %struct.bus_mux* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %145, %136
  %151 = load i32, i32* @LDB_CH1_MODE_EN_TO_DI1, align 4
  %152 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %153 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %166

156:                                              ; preds = %145
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* @LDB_CH1_MODE_EN_TO_DI0, align 4
  %161 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %162 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %150
  br label %167

167:                                              ; preds = %166, %133
  %168 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %169 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %168, i32 0, i32 2
  %170 = load %struct.bus_mux*, %struct.bus_mux** %169, align 8
  %171 = icmp ne %struct.bus_mux* %170, null
  br i1 %171, label %172, label %213

172:                                              ; preds = %167
  store %struct.bus_mux* null, %struct.bus_mux** %7, align 8
  %173 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %174 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %175 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %174, i32 0, i32 3
  %176 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %175, align 8
  %177 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %176, i64 0
  %178 = icmp eq %struct.imx_ldb_channel* %173, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %181 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %180, i32 0, i32 2
  %182 = load %struct.bus_mux*, %struct.bus_mux** %181, align 8
  %183 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %182, i64 0
  store %struct.bus_mux* %183, %struct.bus_mux** %7, align 8
  br label %197

184:                                              ; preds = %172
  %185 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %186 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %187 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %186, i32 0, i32 3
  %188 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %187, align 8
  %189 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %188, i64 1
  %190 = icmp eq %struct.imx_ldb_channel* %185, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %193 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %192, i32 0, i32 2
  %194 = load %struct.bus_mux*, %struct.bus_mux** %193, align 8
  %195 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %194, i64 1
  store %struct.bus_mux* %195, %struct.bus_mux** %7, align 8
  br label %196

196:                                              ; preds = %191, %184
  br label %197

197:                                              ; preds = %196, %179
  %198 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %199 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %202 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %205 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %209 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %207, %210
  %212 = call i32 @regmap_update_bits(i32 %200, i32 %203, i32 %206, i32 %211)
  br label %213

213:                                              ; preds = %197, %167
  %214 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %215 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @IOMUXC_GPR2, align 4
  %218 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %219 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @regmap_write(i32 %216, i32 %217, i32 %220)
  %222 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %223 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @drm_panel_enable(i32 %224)
  ret void
}

declare dso_local %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder*) #1

declare dso_local i32 @drm_of_encoder_active_port_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_prepare(i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @drm_panel_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
