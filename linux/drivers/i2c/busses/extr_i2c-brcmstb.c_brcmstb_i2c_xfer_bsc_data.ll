; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_xfer_bsc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_xfer_bsc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i32, %struct.bsc_regs* }
%struct.bsc_regs = type { i32, i32 }
%struct.i2c_msg = type { i32 }

@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@CMD_RD_NOACK = common dso_local global i32 0, align 4
@CMD_WR_NOACK = common dso_local global i32 0, align 4
@BSC_CTLHI_REG_IGNORE_ACK_MASK = common dso_local global i32 0, align 4
@CMD_RD = common dso_local global i32 0, align 4
@CMD_WR = common dso_local global i32 0, align 4
@ctlhi_reg = common dso_local global i32 0, align 4
@BSC_CTL_REG_DTF_MASK = common dso_local global i32 0, align 4
@DTF_WR_MASK = common dso_local global i32 0, align 4
@DTF_RD_MASK = common dso_local global i32 0, align 4
@BSC_CNT_REG1_SHIFT = common dso_local global i32 0, align 4
@cnt_reg = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@data_in = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s failure\00", align 1
@cmd_string = common dso_local global i32* null, align 8
@data_out = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_i2c_dev*, i32*, i32, %struct.i2c_msg*)* @brcmstb_i2c_xfer_bsc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_xfer_bsc_data(%struct.brcmstb_i2c_dev* %0, i32* %1, i32 %2, %struct.i2c_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmstb_i2c_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bsc_regs*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.i2c_msg* %3, %struct.i2c_msg** %9, align 8
  %21 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %22 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %21, i32 0, i32 1
  %23 = load %struct.bsc_regs*, %struct.bsc_regs** %22, align 8
  store %struct.bsc_regs* %23, %struct.bsc_regs** %16, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %17, align 4
  %29 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %30 = call i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %4
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I2C_M_RD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @CMD_RD_NOACK, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @CMD_WR_NOACK, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @BSC_CTLHI_REG_IGNORE_ACK_MASK, align 4
  %47 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %48 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %70

51:                                               ; preds = %4
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @CMD_RD, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @CMD_WR, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @BSC_CTLHI_REG_IGNORE_ACK_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %67 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %62, %44
  %71 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %72 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %73 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ctlhi_reg, align 4
  %76 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %71, i32 %74, i32 %75)
  %77 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %78 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BSC_CTL_REG_DTF_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @CMD_WR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @CMD_WR_NOACK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %70
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @DTF_WR_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %95 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @DTF_RD_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.bsc_regs*, %struct.bsc_regs** %16, align 8
  %101 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @BSC_CNT_REG1_MASK(i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @BSC_CNT_REG1_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = and i32 %105, %108
  %110 = load i32, i32* @cnt_reg, align 4
  %111 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %103, i32 %109, i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @CMD_WR, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @CMD_WR_NOACK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %173

119:                                              ; preds = %115, %102
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %166, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %172

124:                                              ; preds = %120
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %154, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %125
  %130 = load i32, i32* @BITS_PER_BYTE, align 4
  %131 = load i32, i32* %19, align 4
  %132 = ashr i32 %131, %130
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %129
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BITS_PER_BYTE, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 %147, 1
  %149 = mul nsw i32 %146, %148
  %150 = shl i32 %145, %149
  %151 = load i32, i32* %19, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %19, align 4
  br label %153

153:                                              ; preds = %138, %129
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %125

157:                                              ; preds = %125
  %158 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32*, i32** @data_in, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %158, i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %120

172:                                              ; preds = %120
  br label %173

173:                                              ; preds = %172, %115
  %174 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev* %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %181 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** @cmd_string, align 8
  %184 = load i32, i32* %14, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_dbg(i32 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %5, align 4
  br label %247

190:                                              ; preds = %173
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @CMD_RD, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @CMD_RD_NOACK, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %246

198:                                              ; preds = %194, %190
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %239, %198
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %245

203:                                              ; preds = %199
  %204 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %6, align 8
  %205 = load i32*, i32** @data_out, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %204, i32 %209)
  store i32 %210, i32* %20, align 4
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %235, %203
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %18, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %8, align 4
  %220 = icmp ult i32 %218, %219
  br label %221

221:                                              ; preds = %215, %211
  %222 = phi i1 [ false, %211 ], [ %220, %215 ]
  br i1 %222, label %223, label %238

223:                                              ; preds = %221
  %224 = load i32, i32* %20, align 4
  %225 = and i32 %224, 255
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  store i32 %225, i32* %231, align 4
  %232 = load i32, i32* @BITS_PER_BYTE, align 4
  %233 = load i32, i32* %20, align 4
  %234 = ashr i32 %233, %232
  store i32 %234, i32* %20, align 4
  br label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %211

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %199

245:                                              ; preds = %199
  br label %246

246:                                              ; preds = %245, %194
  store i32 0, i32* %5, align 4
  br label %247

247:                                              ; preds = %246, %179
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i32, i32) #1

declare dso_local i32 @BSC_CNT_REG1_MASK(i32) #1

declare dso_local i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @bsc_readl(%struct.brcmstb_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
