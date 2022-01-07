; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_tune_active_qsfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_platform.c_tune_active_qsfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@QSFP_EQ_INFO_OFFS = common dso_local global i64 0, align 8
@PLATFORM_CONFIG_PORT_TABLE = common dso_local global i32 0, align 4
@PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ = common dso_local global i32 0, align 4
@OPA_INVALID_INDEX = common dso_local global i32 0, align 4
@PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ = common dso_local global i32 0, align 4
@PORT_TABLE_RX_PRESET_IDX = common dso_local global i32 0, align 4
@OPA_LINK_SPEED_25G = common dso_local global i32 0, align 4
@PORT_TABLE_LOCAL_ATTEN_25G = common dso_local global i32 0, align 4
@OPA_LINK_SPEED_12_5G = common dso_local global i32 0, align 4
@PORT_TABLE_LOCAL_ATTEN_12G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i32*, i32*, i32*)* @tune_active_qsfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_active_qsfp(%struct.hfi1_pportdata* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %15 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %18 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %21 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %25 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %28 = call i32 @set_qsfp_tx(%struct.hfi1_pportdata* %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %186

33:                                               ; preds = %4
  %34 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %35 = call i32 @qual_power(%struct.hfi1_pportdata* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %186

40:                                               ; preds = %33
  %41 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %42 = call i32 @qual_bitrate(%struct.hfi1_pportdata* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %186

47:                                               ; preds = %40
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %49 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %55 = call i32 @reset_qsfp(%struct.hfi1_pportdata* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %186

60:                                               ; preds = %53
  %61 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %62 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %63 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %62, i32 0, i32 3
  %64 = call i32 @refresh_qsfp_cache(%struct.hfi1_pportdata* %61, %struct.TYPE_2__* %63)
  br label %69

65:                                               ; preds = %47
  %66 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %67 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %71 = call i32 @set_qsfp_high_power(%struct.hfi1_pportdata* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %186

76:                                               ; preds = %69
  %77 = load i32*, i32** %13, align 8
  %78 = load i64, i64* @QSFP_EQ_INFO_OFFS, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %76
  %84 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %85 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PLATFORM_CONFIG_PORT_TABLE, align 4
  %88 = load i32, i32* @PORT_TABLE_TX_PRESET_IDX_ACTIVE_EQ, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @get_platform_config_field(i32 %86, i32 %87, i32 0, i32 %88, i32* %89, i32 4)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @OPA_INVALID_INDEX, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %186

97:                                               ; preds = %83
  br label %113

98:                                               ; preds = %76
  %99 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %100 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PLATFORM_CONFIG_PORT_TABLE, align 4
  %103 = load i32, i32* @PORT_TABLE_TX_PRESET_IDX_ACTIVE_NO_EQ, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @get_platform_config_field(i32 %101, i32 %102, i32 0, i32 %103, i32* %104, i32 4)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load i32, i32* @OPA_INVALID_INDEX, align 4
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %186

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %115 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PLATFORM_CONFIG_PORT_TABLE, align 4
  %118 = load i32, i32* @PORT_TABLE_RX_PRESET_IDX, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @get_platform_config_field(i32 %116, i32 %117, i32 0, i32 %118, i32* %119, i32 4)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i32, i32* @OPA_INVALID_INDEX, align 4
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %186

127:                                              ; preds = %113
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @OPA_LINK_SPEED_25G, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @OPA_LINK_SPEED_25G, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %139 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PLATFORM_CONFIG_PORT_TABLE, align 4
  %142 = load i32, i32* @PORT_TABLE_LOCAL_ATTEN_25G, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @get_platform_config_field(i32 %140, i32 %141, i32 0, i32 %142, i32* %143, i32 4)
  br label %164

145:                                              ; preds = %132, %127
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @OPA_LINK_SPEED_12_5G, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @OPA_LINK_SPEED_12_5G, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %157 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PLATFORM_CONFIG_PORT_TABLE, align 4
  %160 = load i32, i32* @PORT_TABLE_LOCAL_ATTEN_12G, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @get_platform_config_field(i32 %158, i32 %159, i32 0, i32 %160, i32* %161, i32 4)
  br label %163

163:                                              ; preds = %155, %150, %145
  br label %164

164:                                              ; preds = %163, %137
  %165 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @apply_cdr_settings(%struct.hfi1_pportdata* %165, i32 %167, i32 %169)
  %171 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @apply_eq_settings(%struct.hfi1_pportdata* %171, i32 %173, i32 %175)
  %177 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @apply_rx_amplitude_settings(%struct.hfi1_pportdata* %177, i32 %179, i32 %181)
  %183 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %184 = call i32 @set_qsfp_tx(%struct.hfi1_pportdata* %183, i32 1)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %164, %123, %108, %93, %74, %58, %45, %38, %31
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @set_qsfp_tx(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @qual_power(%struct.hfi1_pportdata*) #1

declare dso_local i32 @qual_bitrate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @reset_qsfp(%struct.hfi1_pportdata*) #1

declare dso_local i32 @refresh_qsfp_cache(%struct.hfi1_pportdata*, %struct.TYPE_2__*) #1

declare dso_local i32 @set_qsfp_high_power(%struct.hfi1_pportdata*) #1

declare dso_local i32 @get_platform_config_field(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @apply_cdr_settings(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @apply_eq_settings(%struct.hfi1_pportdata*, i32, i32) #1

declare dso_local i32 @apply_rx_amplitude_settings(%struct.hfi1_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
