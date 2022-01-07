; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_hdlc_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_hdlc_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, %struct.TYPE_4__*, i32, i32*, %struct.fritzcard* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.fritzcard = type { i64, i8*, i32, i64, %struct.hdlc_hw* }
%struct.hdlc_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AVM_FRITZ_PCIV2 = common dso_local global i64 0, align 8
@HDLC_FIFO_SIZE_V2 = common dso_local global i32 0, align 4
@HDLC_FIFO_SIZE_V1 = common dso_local global i32 0, align 4
@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@HDLC_CMD_XME = common dso_local global i32 0, align 4
@FLG_HDLC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s.B%d: %d/%d/%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s.B%d: fillempty %d\0A\00", align 1
@AVM_HDLC_FIFO_2 = common dso_local global i64 0, align 8
@AVM_HDLC_FIFO_1 = common dso_local global i64 0, align 8
@CHIP_WINDOW = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@LOG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"B%1d-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*)* @hdlc_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_fill_fifo(%struct.bchannel* %0) #0 {
  %2 = alloca %struct.bchannel*, align 8
  %3 = alloca %struct.fritzcard*, align 8
  %4 = alloca %struct.hdlc_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bchannel* %0, %struct.bchannel** %2, align 8
  %14 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %15 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %14, i32 0, i32 5
  %16 = load %struct.fritzcard*, %struct.fritzcard** %15, align 8
  store %struct.fritzcard* %16, %struct.fritzcard** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %18 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %23 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %22, i32 0, i32 4
  %24 = load %struct.hdlc_hw*, %struct.hdlc_hw** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %24, i64 %26
  store %struct.hdlc_hw* %27, %struct.hdlc_hw** %4, align 8
  %28 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %29 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @HDLC_FIFO_SIZE_V2, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @HDLC_FIFO_SIZE_V1, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %6, align 4
  %39 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %40 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @FLG_TX_EMPTY, align 4
  %45 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %46 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %45, i32 0, i32 3
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %256

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %53 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %10, align 8
  store i32 1, i32* %9, align 4
  br label %79

55:                                               ; preds = %37
  %56 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %57 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %62 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %256

68:                                               ; preds = %55
  %69 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %70 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %75 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32* %78, i32** %10, align 8
  br label %79

79:                                               ; preds = %68, %50
  %80 = load i32, i32* @HDLC_CMD_XME, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.hdlc_hw*, %struct.hdlc_hw** %4, align 8
  %83 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %5, align 4
  br label %108

93:                                               ; preds = %79
  %94 = load i32, i32* @FLG_HDLC, align 4
  %95 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %96 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %95, i32 0, i32 3
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32, i32* @HDLC_CMD_XME, align 4
  %101 = load %struct.hdlc_hw*, %struct.hdlc_hw** %4, align 8
  %102 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %93
  br label %108

108:                                              ; preds = %107, %91
  %109 = load i32*, i32** %10, align 8
  %110 = bitcast i32* %109 to i64*
  store i64* %110, i64** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %108
  %114 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %115 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %118 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %122 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %125 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %124, i32 0, i32 2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %116, i32 %119, i32 %120, i32 %123, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %132 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %144

135:                                              ; preds = %108
  %136 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %137 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %140 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i8*, i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %138, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %113
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %148
  %152 = phi i32 [ 0, %148 ], [ %150, %149 ]
  %153 = load %struct.hdlc_hw*, %struct.hdlc_hw** %4, align 8
  %154 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 4
  %157 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %158 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %151
  %163 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %164 = load %struct.hdlc_hw*, %struct.hdlc_hw** %4, align 8
  %165 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %166 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @__write_ctrl_pciv2(%struct.fritzcard* %163, %struct.hdlc_hw* %164, i32 %167)
  %169 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %170 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %173 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i64, i64* @AVM_HDLC_FIFO_2, align 8
  br label %180

178:                                              ; preds = %162
  %179 = load i64, i64* @AVM_HDLC_FIFO_1, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i64 [ %177, %176 ], [ %179, %178 ]
  %182 = add nsw i64 %171, %181
  store i64 %182, i64* %13, align 8
  br label %195

183:                                              ; preds = %151
  %184 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %185 = load %struct.hdlc_hw*, %struct.hdlc_hw** %4, align 8
  %186 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %187 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @__write_ctrl_pci(%struct.fritzcard* %184, %struct.hdlc_hw* %185, i32 %188)
  %190 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %191 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @CHIP_WINDOW, align 8
  %194 = add nsw i64 %192, %193
  store i64 %194, i64* %13, align 8
  br label %195

195:                                              ; preds = %183, %180
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %203, %198
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i64*, i64** %11, align 8
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = call i32 @outl(i64 %205, i64 %206)
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* %7, align 4
  br label %199

210:                                              ; preds = %199
  br label %228

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %216, %211
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %5, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %212
  %217 = load i64*, i64** %11, align 8
  %218 = call i64 @get_unaligned(i64* %217)
  store i64 %218, i64* %12, align 8
  %219 = load i64, i64* %12, align 8
  %220 = call i64 @cpu_to_le32(i64 %219)
  %221 = load i64, i64* %13, align 8
  %222 = call i32 @outl(i64 %220, i64 %221)
  %223 = load i64*, i64** %11, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %11, align 8
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 4
  store i32 %226, i32* %7, align 4
  br label %212

227:                                              ; preds = %212
  br label %228

228:                                              ; preds = %227, %210
  %229 = load i32, i32* @debug, align 4
  %230 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %228
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %233
  %237 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %238 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @LOG_SIZE, align 4
  %241 = load %struct.bchannel*, %struct.bchannel** %2, align 8
  %242 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %245 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %244, i32 0, i32 1
  %246 = load i8*, i8** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @snprintf(i32 %239, i32 %240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %243, i8* %246, i32 %247)
  %249 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %250 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %253 = load i32*, i32** %10, align 8
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @print_hex_dump_bytes(i32 %251, i32 %252, i32* %253, i32 %254)
  br label %256

256:                                              ; preds = %49, %67, %236, %233, %228
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @__write_ctrl_pciv2(%struct.fritzcard*, %struct.hdlc_hw*, i32) #1

declare dso_local i32 @__write_ctrl_pci(%struct.fritzcard*, %struct.hdlc_hw*, i32) #1

declare dso_local i32 @outl(i64, i64) #1

declare dso_local i64 @get_unaligned(i64*) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
