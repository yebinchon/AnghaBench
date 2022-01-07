; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_init_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_init_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }
%struct.ipu_csi_bus_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@CSI_SENS_CONF_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_FMT_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_VSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_HSYNC_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_PIX_CLK_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_EXT_VSYNC_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_SENS_PRTCL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_PACK_TIGHT_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_FORCE_EOF_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_EN_POL_SHIFT = common dso_local global i32 0, align 4
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@CSI_CCIR_CODE_1 = common dso_local global i32 0, align 4
@CSI_CCIR_CODE_3 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unsupported interlaced video mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSI_CCIR_ERR_DET_EN = common dso_local global i32 0, align 4
@CSI_SENS_FRM_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CSI_SENS_CONF = 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"CSI_ACT_FRM_SIZE = 0x%08X\0A\00", align 1
@CSI_ACT_FRM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_csi_init_interface(%struct.ipu_csi* %0, %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_csi*, align 8
  %7 = alloca %struct.v4l2_mbus_config*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.ipu_csi_bus_config, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %6, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %7, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %8, align 8
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %7, align 8
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %19 = call i32 @fill_csi_bus_cfg(%struct.ipu_csi_bus_config* %10, %struct.v4l2_mbus_config* %17, %struct.v4l2_mbus_framefmt* %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %5, align 4
  br label %196

24:                                               ; preds = %4
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CSI_SENS_CONF_DATA_WIDTH_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSI_SENS_CONF_DATA_FMT_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %43, %47
  %49 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CSI_SENS_CONF_DATA_POL_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %48, %52
  %54 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CSI_SENS_CONF_VSYNC_POL_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CSI_SENS_CONF_HSYNC_POL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %58, %62
  %64 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CSI_SENS_CONF_PIX_CLK_POL_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %63, %67
  %69 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CSI_SENS_CONF_EXT_VSYNC_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %68, %72
  %74 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CSI_SENS_CONF_SENS_PRTCL_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %73, %77
  %79 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CSI_SENS_CONF_PACK_TIGHT_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %78, %82
  %84 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CSI_SENS_CONF_FORCE_EOF_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %83, %87
  %89 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CSI_SENS_CONF_DATA_EN_POL_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = or i32 %88, %92
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %97 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %96, i32 0, i32 0
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @CSI_SENS_CONF, align 4
  %103 = call i32 @ipu_csi_write(%struct.ipu_csi* %100, i32 %101, i32 %102)
  %104 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %10, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %162 [
    i32 130, label %106
    i32 131, label %113
    i32 133, label %149
    i32 132, label %149
    i32 135, label %149
    i32 134, label %149
    i32 129, label %158
    i32 128, label %158
  ]

106:                                              ; preds = %39
  %107 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %108 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %109 = call i32 @ipu_csi_write(%struct.ipu_csi* %107, i32 262192, i32 %108)
  %110 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %111 = load i32, i32* @CSI_CCIR_CODE_3, align 4
  %112 = call i32 @ipu_csi_write(%struct.ipu_csi* %110, i32 16711680, i32 %111)
  br label %162

113:                                              ; preds = %39
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 720
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 480
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @V4L2_STD_NTSC, align 4
  store i32 %120, i32* %15, align 4
  store i32 525, i32* %13, align 4
  br label %139

121:                                              ; preds = %116, %113
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 720
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %125, 576
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @V4L2_STD_PAL, align 4
  store i32 %128, i32* %15, align 4
  store i32 625, i32* %13, align 4
  br label %138

129:                                              ; preds = %124, %121
  %130 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %131 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %16, align 4
  br label %190

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %119
  %140 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %141 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %142 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @ipu_csi_set_bt_interlaced_codes(%struct.ipu_csi* %140, %struct.v4l2_mbus_framefmt* %141, %struct.v4l2_mbus_framefmt* %142, i32 %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %190

148:                                              ; preds = %139
  br label %162

149:                                              ; preds = %39, %39, %39, %39
  %150 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %151 = load i32, i32* @CSI_CCIR_ERR_DET_EN, align 4
  %152 = or i32 262192, %151
  %153 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %154 = call i32 @ipu_csi_write(%struct.ipu_csi* %150, i32 %152, i32 %153)
  %155 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %156 = load i32, i32* @CSI_CCIR_CODE_3, align 4
  %157 = call i32 @ipu_csi_write(%struct.ipu_csi* %155, i32 16711680, i32 %156)
  br label %162

158:                                              ; preds = %39, %39
  %159 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %160 = load i32, i32* @CSI_CCIR_CODE_1, align 4
  %161 = call i32 @ipu_csi_write(%struct.ipu_csi* %159, i32 0, i32 %160)
  br label %162

162:                                              ; preds = %39, %158, %149, %148, %106
  %163 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, 1
  %168 = shl i32 %167, 16
  %169 = or i32 %165, %168
  %170 = load i32, i32* @CSI_SENS_FRM_SIZE, align 4
  %171 = call i32 @ipu_csi_write(%struct.ipu_csi* %163, i32 %169, i32 %170)
  %172 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %173 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %178 = load i32, i32* @CSI_SENS_CONF, align 4
  %179 = call i32 @ipu_csi_read(%struct.ipu_csi* %177, i32 %178)
  %180 = call i32 @dev_dbg(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  %181 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %182 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %181, i32 0, i32 1
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %187 = load i32, i32* @CSI_ACT_FRM_SIZE, align 4
  %188 = call i32 @ipu_csi_read(%struct.ipu_csi* %186, i32 %187)
  %189 = call i32 @dev_dbg(i32 %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %162, %147, %129
  %191 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %192 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %191, i32 0, i32 0
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load i32, i32* %16, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %190, %22
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @fill_csi_bus_cfg(%struct.ipu_csi_bus_config*, %struct.v4l2_mbus_config*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ipu_csi_set_bt_interlaced_codes(%struct.ipu_csi*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
