; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i64, %struct.TYPE_4__*, i64, %struct.fritzcard* }
%struct.TYPE_4__ = type { i64 }
%struct.fritzcard = type { i64, i32, %struct.hdlc_hw* }
%struct.hdlc_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s: ch%d stat %#x\0A\00", align 1
@AVM_FRITZ_PCIV2 = common dso_local global i64 0, align 8
@HDLC_STAT_RML_MASK_V2 = common dso_local global i32 0, align 4
@HDLC_FIFO_SIZE_V2 = common dso_local global i32 0, align 4
@HDLC_STAT_RML_MASK_V1 = common dso_local global i32 0, align 4
@HDLC_FIFO_SIZE_V1 = common dso_local global i32 0, align 4
@HDLC_INT_RPR = common dso_local global i32 0, align 4
@HDLC_STAT_RDO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: ch%d stat %x RDO\0A\00", align 1
@HDLC_CMD_RRS = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@HDLC_STAT_RME = common dso_local global i32 0, align 4
@HDLC_STAT_CRCVFRRAB = common dso_local global i32 0, align 4
@HDLC_STAT_CRCVFR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: got invalid frame\0A\00", align 1
@HDLC_INT_XDU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: ch%d stat %x XDU %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tx_skb\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"no tx_skb\00", align 1
@FLG_FILLEMPTY = common dso_local global i32 0, align 4
@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@HDLC_CMD_XRS = common dso_local global i32 0, align 4
@HDLC_INT_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*, i32)* @HDLC_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HDLC_irq(%struct.bchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritzcard*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdlc_hw*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %11 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %10, i32 0, i32 5
  %12 = load %struct.fritzcard*, %struct.fritzcard** %11, align 8
  store %struct.fritzcard* %12, %struct.fritzcard** %5, align 8
  %13 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %14 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %13, i32 0, i32 2
  %15 = load %struct.hdlc_hw*, %struct.hdlc_hw** %14, align 8
  %16 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %17 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %15, i64 %21
  store %struct.hdlc_hw* %22, %struct.hdlc_hw** %9, align 8
  %23 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %24 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %27 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %29)
  %31 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %32 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @HDLC_STAT_RML_MASK_V2, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @HDLC_FIFO_SIZE_V2, align 4
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @HDLC_STAT_RML_MASK_V1, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @HDLC_FIFO_SIZE_V1, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HDLC_INT_RPR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %148

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HDLC_STAT_RDO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %54 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %57 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58, i32 %59)
  %61 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %62 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @HDLC_CMD_RRS, align 4
  %66 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %67 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 8
  %72 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %73 = call i32 @write_ctrl(%struct.bchannel* %72, i32 1)
  %74 = load i32, i32* @HDLC_CMD_RRS, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %77 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %75
  store i32 %81, i32* %79, align 8
  %82 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %83 = call i32 @write_ctrl(%struct.bchannel* %82, i32 1)
  %84 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %85 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %52
  %89 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %90 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @skb_trim(i64 %91, i32 0)
  br label %93

93:                                               ; preds = %88, %52
  br label %147

94:                                               ; preds = %47
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %95, %96
  %98 = ashr i32 %97, 8
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %94
  %104 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @hdlc_empty_fifo(%struct.bchannel* %104, i32 %105)
  %107 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %108 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  br label %149

112:                                              ; preds = %103
  %113 = load i32, i32* @FLG_TRANSPARENT, align 4
  %114 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %115 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %114, i32 0, i32 1
  %116 = call i64 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %120 = call i32 @recv_Bchannel(%struct.bchannel* %119, i32 0, i32 0)
  br label %146

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @HDLC_STAT_RME, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @HDLC_STAT_CRCVFRRAB, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @HDLC_STAT_CRCVFR, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %134 = call i32 @recv_Bchannel(%struct.bchannel* %133, i32 0, i32 0)
  br label %144

135:                                              ; preds = %126
  %136 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %137 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %141 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @skb_trim(i64 %142, i32 0)
  br label %144

144:                                              ; preds = %135, %132
  br label %145

145:                                              ; preds = %144, %121
  br label %146

146:                                              ; preds = %145, %118
  br label %147

147:                                              ; preds = %146, %93
  br label %148

148:                                              ; preds = %147, %42
  br label %149

149:                                              ; preds = %148, %111
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @HDLC_INT_XDU, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %226

154:                                              ; preds = %149
  %155 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %156 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %159 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %163 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = icmp ne %struct.TYPE_4__* %164, null
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %168 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %160, i32 %161, i8* %167)
  %169 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %170 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %169, i32 0, i32 3
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = icmp ne %struct.TYPE_4__* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %154
  %174 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %175 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load i32, i32* @FLG_TRANSPARENT, align 4
  %182 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %183 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %182, i32 0, i32 1
  %184 = call i64 @test_bit(i32 %181, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %188 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %186, %180
  br label %202

190:                                              ; preds = %173, %154
  %191 = load i32, i32* @FLG_FILLEMPTY, align 4
  %192 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %193 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %192, i32 0, i32 1
  %194 = call i64 @test_bit(i32 %191, i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i32, i32* @FLG_TX_EMPTY, align 4
  %198 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %199 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %198, i32 0, i32 1
  %200 = call i32 @test_and_set_bit(i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %196, %190
  br label %202

202:                                              ; preds = %201, %189
  %203 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %204 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  %207 = load i32, i32* @HDLC_CMD_XRS, align 4
  %208 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %209 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %207
  store i32 %213, i32* %211, align 8
  %214 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %215 = call i32 @write_ctrl(%struct.bchannel* %214, i32 1)
  %216 = load i32, i32* @HDLC_CMD_XRS, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.hdlc_hw*, %struct.hdlc_hw** %9, align 8
  %219 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, %217
  store i32 %223, i32* %221, align 8
  %224 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %225 = call i32 @HDLC_irq_xpr(%struct.bchannel* %224)
  br label %235

226:                                              ; preds = %149
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @HDLC_INT_XPR, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %233 = call i32 @HDLC_irq_xpr(%struct.bchannel* %232)
  br label %234

234:                                              ; preds = %231, %226
  br label %235

235:                                              ; preds = %202, %234
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

declare dso_local i32 @write_ctrl(%struct.bchannel*, i32) #1

declare dso_local i32 @skb_trim(i64, i32) #1

declare dso_local i32 @hdlc_empty_fifo(%struct.bchannel*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @recv_Bchannel(%struct.bchannel*, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @HDLC_irq_xpr(%struct.bchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
