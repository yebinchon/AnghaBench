; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_msg = type { i32, i64, i64 }
%struct.tegra_dsi = type { i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32*, i32, i32, i32 }

@ENOSPC = common dso_local global i64 0, align 8
@DSI_STATUS = common dso_local global i32 0, align 4
@DSI_STATUS_UNDERFLOW = common dso_local global i32 0, align 4
@DSI_STATUS_OVERFLOW = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_FIFO_RESET = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL = common dso_local global i32 0, align 4
@DSI_POWER_CONTROL = common dso_local global i32 0, align 4
@DSI_POWER_CONTROL_ENABLE = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_CRC_RESET = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_TX_TRIG_HOST = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_CS = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_ECC = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_HS = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_FIFO_SEL = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_REQ_ACK = common dso_local global i32 0, align 4
@DSI_HOST_CONTROL_PKT_BTA = common dso_local global i32 0, align 4
@DSI_CONTROL_HOST_ENABLE = common dso_local global i32 0, align 4
@DSI_CONTROL = common dso_local global i32 0, align 4
@DSI_WR_DATA = common dso_local global i32 0, align 4
@DSI_RD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown status: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to parse response: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mipi_dsi_host*, %struct.mipi_dsi_msg*)* @tegra_dsi_host_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra_dsi_host_transfer(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_msg*, align 8
  %6 = alloca %struct.tegra_dsi*, align 8
  %7 = alloca %struct.mipi_dsi_packet, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %5, align 8
  %12 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %13 = call %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host* %12)
  store %struct.tegra_dsi* %13, %struct.tegra_dsi** %6, align 8
  %14 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %15 = call i64 @mipi_dsi_create_packet(%struct.mipi_dsi_packet* %7, %struct.mipi_dsi_msg* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %3, align 8
  br label %232

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i64, i64* @ENOSPC, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %3, align 8
  br label %232

33:                                               ; preds = %20
  %34 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %35 = load i32, i32* @DSI_STATUS, align 4
  %36 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @DSI_STATUS_UNDERFLOW, align 4
  %39 = load i32, i32* @DSI_STATUS_OVERFLOW, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* @DSI_HOST_CONTROL_FIFO_RESET, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DSI_HOST_CONTROL, align 4
  %48 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %45, i32 %46, i32 %47)
  %49 = call i32 @usleep_range(i32 10, i32 20)
  br label %50

50:                                               ; preds = %43, %33
  %51 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %52 = load i32, i32* @DSI_POWER_CONTROL, align 4
  %53 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @DSI_POWER_CONTROL_ENABLE, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @DSI_POWER_CONTROL, align 4
  %60 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %57, i32 %58, i32 %59)
  %61 = call i32 @usleep_range(i32 5000, i32 10000)
  %62 = load i32, i32* @DSI_HOST_CONTROL_CRC_RESET, align 4
  %63 = load i32, i32* @DSI_HOST_CONTROL_TX_TRIG_HOST, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DSI_HOST_CONTROL_CS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @DSI_HOST_CONTROL_ECC, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %70 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %50
  %76 = load i32, i32* @DSI_HOST_CONTROL_HS, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %50
  %80 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %83 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 4
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* @DSI_HOST_CONTROL_FIFO_SEL, align 4
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %87, %79
  %92 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @DSI_HOST_CONTROL, align 4
  %95 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %92, i32 %93, i32 %94)
  %96 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %97 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MIPI_DSI_MSG_REQ_ACK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %91
  %103 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %104 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %109 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107, %91
  %113 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %114 = load i32, i32* @DSI_HOST_CONTROL, align 4
  %115 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @DSI_HOST_CONTROL_PKT_BTA, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @DSI_HOST_CONTROL, align 4
  %122 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %112, %107, %102
  %124 = call i32 @DSI_CONTROL_LANES(i32 0)
  %125 = load i32, i32* @DSI_CONTROL_HOST_ENABLE, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @DSI_CONTROL, align 4
  %130 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 16
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = or i32 %134, %138
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %139, %142
  store i32 %143, i32* %11, align 4
  %144 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @DSI_WR_DATA, align 4
  %147 = call i32 @tegra_dsi_writel(%struct.tegra_dsi* %144, i32 %145, i32 %146)
  %148 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %123
  %152 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %153 = load i32, i32* @DSI_WR_DATA, align 4
  %154 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tegra_dsi_writesl(%struct.tegra_dsi* %152, i32 %153, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %151, %123
  %160 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %161 = call i64 @tegra_dsi_transmit(%struct.tegra_dsi* %160, i32 250)
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ult i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %3, align 8
  br label %232

166:                                              ; preds = %159
  %167 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %168 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MIPI_DSI_MSG_REQ_ACK, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %166
  %174 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %175 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %225

178:                                              ; preds = %173
  %179 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %180 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %225

183:                                              ; preds = %178, %166
  %184 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %185 = call i64 @tegra_dsi_wait_for_response(%struct.tegra_dsi* %184, i32 250)
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp ult i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i64, i64* %10, align 8
  store i64 %189, i64* %3, align 8
  br label %232

190:                                              ; preds = %183
  %191 = load i64, i64* %10, align 8
  store i64 %191, i64* %9, align 8
  %192 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %193 = load i32, i32* @DSI_RD_DATA, align 4
  %194 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %192, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %11, align 4
  switch i32 %195, label %198 [
    i32 132, label %196
    i32 135, label %197
  ]

196:                                              ; preds = %190
  br label %205

197:                                              ; preds = %190
  br label %205

198:                                              ; preds = %190
  %199 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %200 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = call i32 @dev_err(i32 %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %198, %197, %196
  %206 = load i64, i64* %9, align 8
  %207 = icmp ugt i64 %206, 1
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %210 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %5, align 8
  %211 = load i64, i64* %9, align 8
  %212 = call i64 @tegra_dsi_read_response(%struct.tegra_dsi* %209, %struct.mipi_dsi_msg* %210, i64 %211)
  store i64 %212, i64* %10, align 8
  %213 = load i64, i64* %10, align 8
  %214 = icmp ult i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %208
  %216 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %217 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i64, i64* %10, align 8
  %220 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %219)
  br label %223

221:                                              ; preds = %208
  %222 = load i64, i64* %10, align 8
  store i64 %222, i64* %9, align 8
  br label %223

223:                                              ; preds = %221, %215
  br label %224

224:                                              ; preds = %223, %205
  br label %230

225:                                              ; preds = %178, %173
  %226 = getelementptr inbounds %struct.mipi_dsi_packet, %struct.mipi_dsi_packet* %7, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 4, %227
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %9, align 8
  br label %230

230:                                              ; preds = %225, %224
  %231 = load i64, i64* %9, align 8
  store i64 %231, i64* %3, align 8
  br label %232

232:                                              ; preds = %230, %188, %164, %30, %18
  %233 = load i64, i64* %3, align 8
  ret i64 %233
}

declare dso_local %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host*) #1

declare dso_local i64 @mipi_dsi_create_packet(%struct.mipi_dsi_packet*, %struct.mipi_dsi_msg*) #1

declare dso_local i32 @tegra_dsi_readl(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @tegra_dsi_writel(%struct.tegra_dsi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DSI_CONTROL_LANES(i32) #1

declare dso_local i32 @tegra_dsi_writesl(%struct.tegra_dsi*, i32, i32, i32) #1

declare dso_local i64 @tegra_dsi_transmit(%struct.tegra_dsi*, i32) #1

declare dso_local i64 @tegra_dsi_wait_for_response(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @tegra_dsi_read_response(%struct.tegra_dsi*, %struct.mipi_dsi_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
