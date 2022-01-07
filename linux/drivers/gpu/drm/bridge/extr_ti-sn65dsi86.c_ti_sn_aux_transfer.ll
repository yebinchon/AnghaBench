; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_aux_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_aux_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_aux_msg = type { i32, i32, i32, i64 }
%struct.ti_sn_bridge = type { i32 }

@DP_AUX_I2C_MOT = common dso_local global i32 0, align 4
@SN_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SN_AUX_CMD_REG = common dso_local global i32 0, align 4
@SN_AUX_ADDR_19_16_REG = common dso_local global i32 0, align 4
@SN_AUX_ADDR_15_8_REG = common dso_local global i32 0, align 4
@SN_AUX_ADDR_7_0_REG = common dso_local global i32 0, align 4
@SN_AUX_LENGTH_REG = common dso_local global i32 0, align 4
@AUX_CMD_SEND = common dso_local global i32 0, align 4
@SN_AUX_CMD_STATUS_REG = common dso_local global i32 0, align 4
@AUX_IRQ_STATUS_NAT_I2C_FAIL = common dso_local global i32 0, align 4
@AUX_IRQ_STATUS_AUX_RPLY_TOUT = common dso_local global i32 0, align 4
@AUX_IRQ_STATUS_AUX_SHORT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, %struct.drm_dp_aux_msg*)* @ti_sn_aux_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sn_aux_transfer(%struct.drm_dp_aux* %0, %struct.drm_dp_aux_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_dp_aux_msg*, align 8
  %6 = alloca %struct.ti_sn_bridge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_dp_aux_msg* %1, %struct.drm_dp_aux_msg** %5, align 8
  %14 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %15 = call %struct.ti_sn_bridge* @aux_to_ti_sn_bridge(%struct.drm_dp_aux* %14)
  store %struct.ti_sn_bridge* %15, %struct.ti_sn_bridge** %6, align 8
  %16 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %17 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DP_AUX_I2C_MOT, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %23 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AUX_CMD_REQ(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %27 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %31 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SN_AUX_MAX_PAYLOAD_BYTES, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %215

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %47 [
    i32 128, label %40
    i32 130, label %40
    i32 129, label %40
    i32 131, label %40
  ]

40:                                               ; preds = %38, %38, %38, %38
  %41 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %42 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SN_AUX_CMD_REG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @regmap_write(i32 %43, i32 %44, i32 %45)
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %215

50:                                               ; preds = %40
  %51 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %52 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SN_AUX_ADDR_19_16_REG, align 4
  %55 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %56 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 15
  %60 = call i32 @regmap_write(i32 %53, i32 %54, i32 %59)
  %61 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %62 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SN_AUX_ADDR_15_8_REG, align 4
  %65 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %66 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = call i32 @regmap_write(i32 %63, i32 %64, i32 %69)
  %71 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %72 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SN_AUX_ADDR_7_0_REG, align 4
  %75 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %76 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 255
  %79 = call i32 @regmap_write(i32 %73, i32 %74, i32 %78)
  %80 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %81 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SN_AUX_LENGTH_REG, align 4
  %84 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %85 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_write(i32 %82, i32 %83, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp eq i32 %88, 128
  br i1 %89, label %93, label %90

90:                                               ; preds = %50
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 130
  br i1 %92, label %93, label %116

93:                                               ; preds = %90, %50
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %112, %93
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %97 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %102 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @SN_AUX_WDATA_REG(i32 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @regmap_write(i32 %103, i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %94

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115, %90
  %117 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %118 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SN_AUX_CMD_REG, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @AUX_CMD_SEND, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @regmap_write(i32 %119, i32 %120, i32 %123)
  %125 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %126 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @SN_AUX_CMD_REG, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @AUX_CMD_SEND, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i32 @regmap_read_poll_timeout(i32 %127, i32 %128, i32 %129, i32 %135, i32 200, i32 50000)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %116
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %3, align 4
  br label %215

141:                                              ; preds = %116
  %142 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %143 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SN_AUX_CMD_STATUS_REG, align 4
  %146 = call i32 @regmap_read(i32 %144, i32 %145, i32* %10)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %215

151:                                              ; preds = %141
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @AUX_IRQ_STATUS_NAT_I2C_FAIL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @AUX_IRQ_STATUS_AUX_RPLY_TOUT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @AUX_IRQ_STATUS_AUX_SHORT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %156, %151
  %167 = load i32, i32* @ENXIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %215

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, 128
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %174, 130
  br i1 %175, label %176, label %180

176:                                              ; preds = %173, %170
  %177 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %178 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %3, align 4
  br label %215

180:                                              ; preds = %173
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %208, %180
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %184 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %181
  %188 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %6, align 8
  %189 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @SN_AUX_RDATA_REG(i32 %191)
  %193 = call i32 @regmap_read(i32 %190, i32 %192, i32* %13)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %3, align 4
  br label %215

198:                                              ; preds = %187
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, -256
  %201 = call i32 @WARN_ON(i32 %200)
  %202 = load i32, i32* %13, align 4
  %203 = and i32 %202, 255
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %181

211:                                              ; preds = %181
  %212 = load %struct.drm_dp_aux_msg*, %struct.drm_dp_aux_msg** %5, align 8
  %213 = getelementptr inbounds %struct.drm_dp_aux_msg, %struct.drm_dp_aux_msg* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %196, %176, %166, %149, %139, %47, %35
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.ti_sn_bridge* @aux_to_ti_sn_bridge(%struct.drm_dp_aux*) #1

declare dso_local i32 @AUX_CMD_REQ(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SN_AUX_WDATA_REG(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SN_AUX_RDATA_REG(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
