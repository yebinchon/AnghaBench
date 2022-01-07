; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_read_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_read_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_ch = type { i64, %struct.TYPE_7__, i32, i64*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.tiger_hw* }
%struct.TYPE_6__ = type { i32 }
%struct.tiger_hw = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i64 }

@RX_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: B%1d overrun at idx %d\0A\00", align 1
@FLG_RX_OFF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s.B%d: No memory for %d bytes\0A\00", align 1
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@LOG_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"B%1d-recv %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@HDLC_CRC_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"%s: B%1d receive frame CRC error\0A\00", align 1
@HDLC_FRAMING_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: B%1d receive framing error\0A\00", align 1
@HDLC_LENGTH_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: B%1d receive frame too long (> %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_ch*, i64, i32)* @read_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dma(%struct.tiger_ch* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tiger_ch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tiger_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.tiger_ch* %0, %struct.tiger_ch** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %14 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  %16 = load %struct.tiger_hw*, %struct.tiger_hw** %15, align 8
  store %struct.tiger_hw* %16, %struct.tiger_hw** %7, align 8
  %17 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %18 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @RX_OVERRUN, align 4
  %24 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %25 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %29 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %32 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %22, %3
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %40 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @FLG_RX_OFF, align 4
  %42 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %43 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = call i64 @test_bit(i32 %41, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %50 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %281

54:                                               ; preds = %37
  %55 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %56 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @bchannel_get_rxbuf(%struct.TYPE_7__* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %65 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %68 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %70, i32 %71)
  br label %281

73:                                               ; preds = %54
  %74 = load i32, i32* @FLG_TRANSPARENT, align 4
  %75 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %76 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = call i64 @test_bit(i32 %74, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %82 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i64* @skb_put(%struct.TYPE_6__* %84, i32 %85)
  store i64* %86, i64** %11, align 8
  br label %91

87:                                               ; preds = %73
  %88 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %89 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  store i64* %90, i64** %11, align 8
  br label %91

91:                                               ; preds = %87, %80
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %129, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %92
  %97 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %98 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %5, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %5, align 8
  %103 = getelementptr inbounds i64, i64* %100, i64 %101
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %10, align 8
  %105 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %106 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 2
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i64, i64* %10, align 8
  %113 = ashr i64 %112, 8
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %111, %96
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %117 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i64 0, i64* %5, align 8
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i64, i64* %10, align 8
  %124 = and i64 %123, 255
  %125 = load i64*, i64** %11, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %92

132:                                              ; preds = %92
  %133 = load i32, i32* @FLG_TRANSPARENT, align 4
  %134 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %135 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = call i64 @test_bit(i32 %133, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %141 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %140, i32 0, i32 1
  %142 = call i32 @recv_Bchannel(%struct.TYPE_7__* %141, i32 0, i32 0)
  br label %281

143:                                              ; preds = %132
  %144 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %145 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  store i64* %146, i64** %12, align 8
  br label %147

147:                                              ; preds = %273, %143
  %148 = load i32, i32* %6, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %281

150:                                              ; preds = %147
  %151 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %152 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %151, i32 0, i32 2
  %153 = load i64*, i64** %12, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %156 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %162 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @isdnhdlc_decode(i32* %152, i64* %153, i32 %154, i32* %8, i32 %160, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %224

168:                                              ; preds = %150
  %169 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %170 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i64* @skb_put(%struct.TYPE_6__* %172, i32 %173)
  store i64* %174, i64** %11, align 8
  %175 = load i32, i32* @debug, align 4
  %176 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %168
  %180 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %181 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LOG_SIZE, align 4
  %184 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %185 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %189 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @snprintf(i32 %182, i32 %183, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %187, i8* %190, i32 %191)
  %193 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %194 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %197 = load i64*, i64** %11, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @print_hex_dump_bytes(i32 %195, i32 %196, i64* %197, i32 %198)
  br label %200

200:                                              ; preds = %179, %168
  %201 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %202 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %201, i32 0, i32 1
  %203 = call i32 @recv_Bchannel(%struct.TYPE_7__* %202, i32 0, i32 0)
  %204 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %205 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %204, i32 0, i32 1
  %206 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %207 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @bchannel_get_rxbuf(%struct.TYPE_7__* %205, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %200
  %214 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %215 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %218 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @pr_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %216, i32 %220, i32 %221)
  br label %281

223:                                              ; preds = %200
  br label %273

224:                                              ; preds = %150
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @HDLC_CRC_ERROR, align 4
  %227 = sub nsw i32 0, %226
  %228 = icmp eq i32 %225, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %231 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %234 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %232, i32 %236)
  br label %272

238:                                              ; preds = %224
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @HDLC_FRAMING_ERROR, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %245 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %248 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %246, i32 %250)
  br label %271

252:                                              ; preds = %238
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @HDLC_LENGTH_ERROR, align 4
  %255 = sub nsw i32 0, %254
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %252
  %258 = load %struct.tiger_hw*, %struct.tiger_hw** %7, align 8
  %259 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %262 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %266 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %260, i32 %264, i32 %268)
  br label %270

270:                                              ; preds = %257, %252
  br label %271

271:                                              ; preds = %270, %243
  br label %272

272:                                              ; preds = %271, %229
  br label %273

273:                                              ; preds = %272, %223
  %274 = load i32, i32* %8, align 4
  %275 = load i64*, i64** %12, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  store i64* %277, i64** %12, align 8
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* %6, align 4
  %280 = sub nsw i32 %279, %278
  store i32 %280, i32* %6, align 4
  br label %147

281:                                              ; preds = %47, %63, %139, %213, %147
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bchannel_get_rxbuf(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32) #1

declare dso_local i64* @skb_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @isdnhdlc_decode(i32*, i64*, i32, i32*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
