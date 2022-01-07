; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_init_sync_panel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_init_sync_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipu_di_signal_cfg = type { i32, i32, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"disp %d: panel size = %d x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Clocks: IPU %luHz DI %luHz Needed %luHz\0A\00", align 1
@di_mutex = common dso_local global i32 0, align 4
@DI_BS_CLKGEN0 = common dso_local global i32 0, align 4
@DI_BS_CLKGEN1 = common dso_local global i32 0, align 4
@SYNC_WAVE = common dso_local global i32 0, align 4
@DI_PIN15 = common dso_local global i32 0, align 4
@DI_GENERAL = common dso_local global i32 0, align 4
@DI_GEN_DI_CLK_EXT = common dso_local global i32 0, align 4
@DI_GEN_DI_VSYNC_EXT = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DI_GEN_POLARITY_DISP_CLK = common dso_local global i32 0, align 4
@DI_VSYNC_SEL_OFFSET = common dso_local global i32 0, align 4
@DI_SYNC_AS_GEN = common dso_local global i32 0, align 4
@DI_POL = common dso_local global i32 0, align 4
@DI_POL_DRDY_DATA_POLARITY = common dso_local global i32 0, align 4
@DI_POL_DRDY_POLARITY_15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_di_init_sync_panel(%struct.ipu_di* %0, %struct.ipu_di_signal_cfg* %1) #0 {
  %3 = alloca %struct.ipu_di*, align 8
  %4 = alloca %struct.ipu_di_signal_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipu_di* %0, %struct.ipu_di** %3, align 8
  store %struct.ipu_di_signal_cfg* %1, %struct.ipu_di_signal_cfg** %4, align 8
  %9 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %15 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24)
  %26 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %27 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %32 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_get_rate(i32 %33)
  %35 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %36 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_get_rate(i32 %37)
  %39 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42)
  %44 = call i32 @mutex_lock(i32* @di_mutex)
  %45 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %46 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %47 = call i32 @ipu_di_config_clock(%struct.ipu_di* %45, %struct.ipu_di_signal_cfg* %46)
  %48 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %49 = load i32, i32* @DI_BS_CLKGEN0, align 4
  %50 = call i32 @ipu_di_read(%struct.ipu_di* %48, i32 %49)
  %51 = and i32 %50, 4095
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 16
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* @DI_BS_CLKGEN1, align 4
  %58 = call i32 @ipu_di_write(%struct.ipu_di* %54, i32 %56, i32 %57)
  %59 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %60 = load i32, i32* @SYNC_WAVE, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @ipu_di_data_wave_config(%struct.ipu_di* %59, i32 %60, i32 %62, i32 %64)
  %66 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %67 = load i32, i32* @SYNC_WAVE, align 4
  %68 = load i32, i32* @DI_PIN15, align 4
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 2
  %71 = call i32 @ipu_di_data_pin_config(%struct.ipu_di* %66, i32 %67, i32 %68, i32 3, i32 0, i32 %70)
  %72 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %73 = load i32, i32* @DI_GENERAL, align 4
  %74 = call i32 @ipu_di_read(%struct.ipu_di* %72, i32 %73)
  %75 = load i32, i32* @DI_GEN_DI_CLK_EXT, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @DI_GEN_DI_VSYNC_EXT, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %2
  %88 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %89 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %90 = call i32 @ipu_di_sync_config_interlaced(%struct.ipu_di* %88, %struct.ipu_di_signal_cfg* %89)
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 268435456
  store i32 %92, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %115

93:                                               ; preds = %2
  %94 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %95 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ipu_di_sync_config_noninterlaced(%struct.ipu_di* %94, %struct.ipu_di_signal_cfg* %95, i32 %96)
  store i32 3, i32* %7, align 4
  %98 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %99 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %114

102:                                              ; preds = %93
  %103 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %104 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %109 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %113, label %112

112:                                              ; preds = %107, %102
  store i32 6, i32* %7, align 4
  br label %113

113:                                              ; preds = %112, %107
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %87
  %116 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %125 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ipu_di_gen_polarity(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %123, %115
  %131 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %132 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %130
  %139 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %140 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ipu_di_gen_polarity(i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %138, %130
  %146 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %147 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* @DI_GEN_POLARITY_DISP_CLK, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @DI_GENERAL, align 4
  %158 = call i32 @ipu_di_write(%struct.ipu_di* %155, i32 %156, i32 %157)
  %159 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* @DI_VSYNC_SEL_OFFSET, align 4
  %163 = shl i32 %161, %162
  %164 = or i32 %163, 2
  %165 = load i32, i32* @DI_SYNC_AS_GEN, align 4
  %166 = call i32 @ipu_di_write(%struct.ipu_di* %159, i32 %164, i32 %165)
  %167 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %168 = load i32, i32* @DI_POL, align 4
  %169 = call i32 @ipu_di_read(%struct.ipu_di* %167, i32 %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* @DI_POL_DRDY_DATA_POLARITY, align 4
  %171 = load i32, i32* @DI_POL_DRDY_POLARITY_15, align 4
  %172 = or i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %177 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %154
  %181 = load i32, i32* @DI_POL_DRDY_POLARITY_15, align 4
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %180, %154
  %185 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %186 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* @DI_POL_DRDY_DATA_POLARITY, align 4
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %184
  %194 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @DI_POL, align 4
  %197 = call i32 @ipu_di_write(%struct.ipu_di* %194, i32 %195, i32 %196)
  %198 = call i32 @mutex_unlock(i32* @di_mutex)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipu_di_config_clock(%struct.ipu_di*, %struct.ipu_di_signal_cfg*) #1

declare dso_local i32 @ipu_di_read(%struct.ipu_di*, i32) #1

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #1

declare dso_local i32 @ipu_di_data_wave_config(%struct.ipu_di*, i32, i32, i32) #1

declare dso_local i32 @ipu_di_data_pin_config(%struct.ipu_di*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ipu_di_sync_config_interlaced(%struct.ipu_di*, %struct.ipu_di_signal_cfg*) #1

declare dso_local i32 @ipu_di_sync_config_noninterlaced(%struct.ipu_di*, %struct.ipu_di_signal_cfg*, i32) #1

declare dso_local i32 @ipu_di_gen_polarity(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
