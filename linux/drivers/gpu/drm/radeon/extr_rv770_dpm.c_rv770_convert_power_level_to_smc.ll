; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_convert_power_level_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_convert_power_level_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_pl = type { i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rv7xx_power_info = type { i64, i64, i64, i64 }

@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE = common dso_local global i32 0, align 4
@CHIP_RV740 = common dso_local global i64 0, align 8
@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@SMC_MC_EDC_RD_FLAG = common dso_local global i32 0, align 4
@SMC_MC_EDC_WR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv7xx_pl*, %struct.TYPE_3__*, i32)* @rv770_convert_power_level_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_convert_power_level_to_smc(%struct.radeon_device* %0, %struct.rv7xx_pl* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.rv7xx_pl*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rv7xx_power_info*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.rv7xx_pl* %1, %struct.rv7xx_pl** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %10, align 8
  %14 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %15 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %20 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i32 [ %26, %18 ], [ 0, %27 ]
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %33 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %43 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_RV740, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %28
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %63 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = call i32 @rv740_populate_sclk_value(%struct.radeon_device* %61, i32 %64, i32* %66)
  store i32 %67, i32* %11, align 4
  br label %97

68:                                               ; preds = %28
  %69 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_RV730, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHIP_RV710, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74, %68
  %81 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %82 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %83 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  %87 = call i32 @rv730_populate_sclk_value(%struct.radeon_device* %81, i32 %84, i32* %86)
  store i32 %87, i32* %11, align 4
  br label %96

88:                                               ; preds = %74
  %89 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %90 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %91 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 8
  %95 = call i32 @rv770_populate_sclk_value(%struct.radeon_device* %89, i32 %92, i32* %94)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %88, %80
  br label %97

97:                                               ; preds = %96, %60
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %222

102:                                              ; preds = %97
  %103 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CHIP_RV740, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %161

108:                                              ; preds = %102
  %109 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %110 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %108
  %114 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %115 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %118 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %116, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %123 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @rv740_get_mclk_frequency_ratio(i64 %124)
  %126 = or i32 %125, 16
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %132

129:                                              ; preds = %113
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %121
  %133 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %134 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %10, align 8
  %137 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* @SMC_MC_EDC_RD_FLAG, align 4
  %142 = load i32, i32* @SMC_MC_EDC_WR_FLAG, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  br label %149

146:                                              ; preds = %132
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 4
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %108
  %151 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %152 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %153 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %156 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 7
  %160 = call i32 @rv740_populate_mclk_value(%struct.radeon_device* %151, i32 %154, i64 %157, i32* %159)
  store i32 %160, i32* %11, align 4
  br label %196

161:                                              ; preds = %102
  %162 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %163 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CHIP_RV730, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @CHIP_RV710, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %167, %161
  %174 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %175 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %176 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %179 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 7
  %183 = call i32 @rv730_populate_mclk_value(%struct.radeon_device* %174, i32 %177, i64 %180, i32* %182)
  store i32 %183, i32* %11, align 4
  br label %195

184:                                              ; preds = %167
  %185 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %186 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %187 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %190 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  %194 = call i32 @rv770_populate_mclk_value(%struct.radeon_device* %185, i32 %188, i64 %191, i32* %193)
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %184, %173
  br label %196

196:                                              ; preds = %195, %150
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %5, align 4
  br label %222

201:                                              ; preds = %196
  %202 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %203 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %204 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 6
  %208 = call i32 @rv770_populate_vddc_value(%struct.radeon_device* %202, i32 %205, i32* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %201
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %5, align 4
  br label %222

213:                                              ; preds = %201
  %214 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %215 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %216 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = call i32 @rv770_populate_mvdd_value(%struct.radeon_device* %214, i64 %217, i32* %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %213, %211, %199, %100
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv740_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @rv730_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @rv770_populate_sclk_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @rv740_get_mclk_frequency_ratio(i64) #1

declare dso_local i32 @rv740_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*) #1

declare dso_local i32 @rv730_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*) #1

declare dso_local i32 @rv770_populate_mclk_value(%struct.radeon_device*, i32, i64, i32*) #1

declare dso_local i32 @rv770_populate_vddc_value(%struct.radeon_device*, i32, i32*) #1

declare dso_local i32 @rv770_populate_mvdd_value(%struct.radeon_device*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
