; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i64, i32, %struct.TYPE_17__*, %struct.TYPE_15__, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_12__, %struct.fritzcard* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)*, %struct.TYPE_14__, i32*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"AVM.%d\00", align 1
@AVM_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4
@avm_dctrl = common dso_local global i32 0, align 4
@AVM_FRITZ_PCIV2 = common dso_local global i64 0, align 8
@HDLC_FIFO_SIZE_V2 = common dso_local global i16 0, align 2
@HDLC_FIFO_SIZE_V1 = common dso_local global i16 0, align 2
@MAX_DATA_MEM = common dso_local global i32 0, align 4
@avm_l2l1B = common dso_local global i32 0, align 4
@avm_bctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"AVM %d cards installed DEBUG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fritzcard*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.fritzcard* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fritzcard*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %3, align 8
  %8 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %9 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load i32, i32* @AVM_cnt, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @snprintf(i32 %10, i64 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %16)
  %18 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %19 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %19, i32* @Cards)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %21)
  %23 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %24 = call i32 @_set_debug(%struct.fritzcard* %23)
  %25 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %26 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %29 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %32 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %31, i32 0, i32 7
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %35 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %34, i32 0, i32 7
  %36 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %37 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store i32* %35, i32** %38, align 8
  %39 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %40 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %39, i32 0, i32 3
  %41 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %42 = call i32 @mISDNisac_init(%struct.TYPE_15__* %40, %struct.fritzcard* %41)
  %43 = load i32, i32* @ISDN_P_B_RAW, align 4
  %44 = load i32, i32* @ISDN_P_B_MASK, align 4
  %45 = and i32 %43, %44
  %46 = shl i32 1, %45
  %47 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %48 = load i32, i32* @ISDN_P_B_MASK, align 4
  %49 = and i32 %47, %48
  %50 = shl i32 1, %49
  %51 = or i32 %46, %50
  %52 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %53 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 8
  %57 = load i32, i32* @avm_dctrl, align 4
  %58 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %59 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %155, %1
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %158

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  %70 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %71 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %80 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_channelmap(i32 %78, i32 %84)
  %86 = load i64, i64* @AVM_FRITZ_PCIV2, align 8
  %87 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %88 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %67
  %92 = load i16, i16* @HDLC_FIFO_SIZE_V2, align 2
  store i16 %92, i16* %6, align 2
  br label %95

93:                                               ; preds = %67
  %94 = load i16, i16* @HDLC_FIFO_SIZE_V1, align 2
  store i16 %94, i16* %6, align 2
  br label %95

95:                                               ; preds = %93, %91
  %96 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %97 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %96, i32 0, i32 2
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %100
  %102 = load i32, i32* @MAX_DATA_MEM, align 4
  %103 = load i16, i16* %6, align 2
  %104 = call i32 @mISDN_initbchannel(%struct.TYPE_17__* %101, i32 %102, i16 zeroext %103)
  %105 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %106 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %107 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %106, i32 0, i32 2
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  store %struct.fritzcard* %105, %struct.fritzcard** %112, align 8
  %113 = load i32, i32* @avm_l2l1B, align 4
  %114 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %115 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %114, i32 0, i32 2
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i32 %113, i32* %121, align 4
  %122 = load i32, i32* @avm_bctrl, align 4
  %123 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %124 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %123, i32 0, i32 2
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  store i32 %122, i32* %130, align 4
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  %133 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %134 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %133, i32 0, i32 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i32 %132, i32* %140, align 4
  %141 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %142 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %141, i32 0, i32 2
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %150 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = call i32 @list_add(i32* %148, i32* %153)
  br label %155

155:                                              ; preds = %95
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %64

158:                                              ; preds = %64
  %159 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %160 = call i32 @setup_fritz(%struct.fritzcard* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %201

164:                                              ; preds = %158
  %165 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %166 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %170 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %169, i32 0, i32 6
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %174 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @mISDN_register_device(%struct.TYPE_16__* %168, i32* %172, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  br label %196

180:                                              ; preds = %164
  %181 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %182 = call i32 @init_card(%struct.fritzcard* %181)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* @AVM_cnt, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @AVM_cnt, align 4
  %188 = load i32, i32* @AVM_cnt, align 4
  %189 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  store i32 0, i32* %2, align 4
  br label %229

190:                                              ; preds = %180
  %191 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %192 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = call i32 @mISDN_unregister_device(%struct.TYPE_16__* %194)
  br label %196

196:                                              ; preds = %190, %179
  %197 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %198 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @release_region(i32 %199, i32 32)
  br label %201

201:                                              ; preds = %196, %163
  %202 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %203 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %204, align 8
  %206 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %207 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %206, i32 0, i32 3
  %208 = call i32 %205(%struct.TYPE_15__* %207)
  %209 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %210 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %209, i32 0, i32 2
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i64 1
  %213 = call i32 @mISDN_freebchannel(%struct.TYPE_17__* %212)
  %214 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %215 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %214, i32 0, i32 2
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i64 0
  %218 = call i32 @mISDN_freebchannel(%struct.TYPE_17__* %217)
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %219)
  %221 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %222 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %221, i32 0, i32 1
  %223 = call i32 @list_del(i32* %222)
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %224)
  %226 = load %struct.fritzcard*, %struct.fritzcard** %3, align 8
  %227 = call i32 @kfree(%struct.fritzcard* %226)
  %228 = load i32, i32* %5, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %201, %185
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.fritzcard*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mISDNisac_init(%struct.TYPE_15__*, %struct.fritzcard*) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_17__*, i32, i16 zeroext) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @setup_fritz(%struct.fritzcard*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @init_card(%struct.fritzcard*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @mISDN_freebchannel(%struct.TYPE_17__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.fritzcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
