; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_read_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_read_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"RX fifo empty when trying to read.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"\09header: %08x\0A\00", align 1
@MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT = common dso_local global i64 0, align 8
@DSS_DSI_CONTENT_GENERIC = common dso_local global i32 0, align 4
@MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"\09%s short response, 1 byte: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DCS\00", align 1
@MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"\09%s short response, 2 byte: %04x\0A\00", align 1
@MIPI_DSI_RX_GENERIC_LONG_READ_RESPONSE = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_LONG_READ_RESPONSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"\09%s long response, len %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09\09%02x %02x %02x %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\09unknown datatype 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"dsi_vc_read_rx_fifo(ch %d type %s) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i64*, i32, i32)* @dsi_vc_read_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_read_rx_fifo(%struct.dsi_data* %0, i32 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DSI_VC_CTRL(i32 %22)
  %24 = call i64 @REG_GET(%struct.dsi_data* %21, i32 %23, i32 20, i32 20)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  br label %238

30:                                               ; preds = %5
  %31 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %32)
  %34 = call i32 @dsi_read_reg(%struct.dsi_data* %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %36 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @FLD_GET(i32 %43, i32 5, i32 0)
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @FLD_GET(i32 %50, i32 23, i32 8)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @dsi_show_rx_ack_with_err(i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %238

57:                                               ; preds = %42
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_1BYTE, align 8
  br label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i64 [ %63, %62 ], [ %65, %64 ]
  %68 = icmp eq i64 %58, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = call i8* @FLD_GET(i32 %70, i32 15, i32 8)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %16, align 8
  %73 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %74 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %83 = load i64, i64* %16, align 8
  %84 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %82, i64 %83)
  br label %85

85:                                               ; preds = %77, %69
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %238

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 %92, i64* %94, align 8
  store i32 1, i32* %6, align 4
  br label %247

95:                                               ; preds = %66
  %96 = load i64, i64* %13, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @MIPI_DSI_RX_GENERIC_SHORT_READ_RESPONSE_2BYTE, align 8
  br label %104

102:                                              ; preds = %95
  %103 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i64 [ %101, %100 ], [ %103, %102 ]
  %106 = icmp eq i64 %96, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = call i8* @FLD_GET(i32 %108, i32 23, i32 8)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %112 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %121 = load i32, i32* %17, align 4
  %122 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %115, %107
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %14, align 4
  br label %238

129:                                              ; preds = %123
  %130 = load i32, i32* %17, align 4
  %131 = and i32 %130, 255
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** %9, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = ashr i32 %135, 8
  %137 = and i32 %136, 255
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  store i64 %138, i64* %140, align 8
  store i32 2, i32* %6, align 4
  br label %247

141:                                              ; preds = %104
  %142 = load i64, i64* %13, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64, i64* @MIPI_DSI_RX_GENERIC_LONG_READ_RESPONSE, align 8
  br label %150

148:                                              ; preds = %141
  %149 = load i64, i64* @MIPI_DSI_RX_DCS_LONG_READ_RESPONSE, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i64 [ %147, %146 ], [ %149, %148 ]
  %152 = icmp eq i64 %142, %151
  br i1 %152, label %153, label %233

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = call i8* @FLD_GET(i32 %154, i32 23, i32 8)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %19, align 4
  %157 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %158 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %153
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %167 = load i32, i32* %19, align 4
  %168 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %166, i32 %167)
  br label %169

169:                                              ; preds = %161, %153
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %14, align 4
  br label %238

176:                                              ; preds = %169
  store i32 0, i32* %18, align 4
  br label %177

177:                                              ; preds = %230, %176
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 2
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %231

182:                                              ; preds = %177
  %183 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %184)
  %186 = call i32 @dsi_read_reg(%struct.dsi_data* %183, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %188 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %182
  %192 = load i32, i32* %12, align 4
  %193 = ashr i32 %192, 0
  %194 = and i32 %193, 255
  %195 = load i32, i32* %12, align 4
  %196 = ashr i32 %195, 8
  %197 = and i32 %196, 255
  %198 = load i32, i32* %12, align 4
  %199 = ashr i32 %198, 16
  %200 = and i32 %199, 255
  %201 = load i32, i32* %12, align 4
  %202 = ashr i32 %201, 24
  %203 = and i32 %202, 255
  %204 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %194, i32 %197, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %191, %182
  store i32 0, i32* %20, align 4
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, i32* %20, align 4
  %208 = icmp slt i32 %207, 4
  br i1 %208, label %209, label %230

209:                                              ; preds = %206
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %20, align 4
  %216 = mul nsw i32 %215, 8
  %217 = ashr i32 %214, %216
  %218 = and i32 %217, 255
  %219 = sext i32 %218 to i64
  %220 = load i64*, i64** %9, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  store i64 %219, i64* %223, align 8
  br label %224

224:                                              ; preds = %213, %209
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %20, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %20, align 4
  br label %206

230:                                              ; preds = %206
  br label %177

231:                                              ; preds = %177
  %232 = load i32, i32* %19, align 4
  store i32 %232, i32* %6, align 4
  br label %247

233:                                              ; preds = %150
  %234 = load i64, i64* %13, align 8
  %235 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i64 %234)
  %236 = load i32, i32* @EIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %233, %173, %126, %88, %49, %26
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @DSS_DSI_CONTENT_GENERIC, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %245 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %239, i8* %244)
  %246 = load i32, i32* %14, align 4
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %238, %231, %129, %91
  %248 = load i32, i32* %6, align 4
  ret i32 %248
}

declare dso_local i64 @REG_GET(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

declare dso_local i32 @DSSDBG(i8*, ...) #1

declare dso_local i8* @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_show_rx_ack_with_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
