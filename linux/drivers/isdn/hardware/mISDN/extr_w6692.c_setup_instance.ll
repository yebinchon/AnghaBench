; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_w6692.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.w6692_hw* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__, %struct.w6692_hw* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"w6692.%d\00", align 1
@w6692_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@MAX_DFRAME_LEN_L1 = common dso_local global i32 0, align 4
@W6692_ph_bh = common dso_local global i32 0, align 4
@ISDN_P_TE_S0 = common dso_local global i32 0, align 4
@w6692_l2l1D = common dso_local global i32 0, align 4
@w6692_dctrl = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@ISDN_P_B_MASK = common dso_local global i32 0, align 4
@ISDN_P_B_HDLC = common dso_local global i32 0, align 4
@MAX_DATA_MEM = common dso_local global i32 0, align 4
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@w6692_l2l1B = common dso_local global i32 0, align 4
@w6692_bctrl = common dso_local global i32 0, align 4
@w6692_l1callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"W6692 %d cards installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w6692_hw*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.w6692_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w6692_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %3, align 8
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load i32, i32* @w6692_cnt, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @snprintf(i32 %9, i64 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %15)
  %17 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %18 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %18, i32* @Cards)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %20)
  %22 = load i32, i32* @w6692_cnt, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %25 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %27 = call i32 @_set_debug(%struct.w6692_hw* %26)
  %28 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %29 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %28, i32 0, i32 8
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %32 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %31, i32 0, i32 2
  %33 = load i32, i32* @MAX_DFRAME_LEN_L1, align 4
  %34 = load i32, i32* @W6692_ph_bh, align 4
  %35 = call i32 @mISDN_initdchannel(%struct.TYPE_17__* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @ISDN_P_TE_S0, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %39 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load i32, i32* @w6692_l2l1D, align 4
  %43 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %44 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @w6692_dctrl, align 4
  %49 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %50 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @ISDN_P_B_RAW, align 4
  %55 = load i32, i32* @ISDN_P_B_MASK, align 4
  %56 = and i32 %54, %55
  %57 = shl i32 1, %56
  %58 = load i32, i32* @ISDN_P_B_HDLC, align 4
  %59 = load i32, i32* @ISDN_P_B_MASK, align 4
  %60 = and i32 %58, %59
  %61 = shl i32 1, %60
  %62 = or i32 %57, %61
  %63 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %64 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %68 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %69 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  store %struct.w6692_hw* %67, %struct.w6692_hw** %70, align 8
  %71 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %72 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  store i32 2, i32* %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %161, %1
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %164

78:                                               ; preds = %75
  %79 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %80 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %79, i32 0, i32 3
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* @MAX_DATA_MEM, align 4
  %87 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %88 = call i32 @mISDN_initbchannel(%struct.TYPE_18__* %85, i32 %86, i32 %87)
  %89 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %90 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %91 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %90, i32 0, i32 3
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  store %struct.w6692_hw* %89, %struct.w6692_hw** %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %101 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %100, i32 0, i32 3
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 8
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %111 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %110, i32 0, i32 3
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  store i32 %109, i32* %118, align 4
  %119 = load i32, i32* @w6692_l2l1B, align 4
  %120 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %121 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %120, i32 0, i32 3
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  store i32 %119, i32* %128, align 4
  %129 = load i32, i32* @w6692_bctrl, align 4
  %130 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %131 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %130, i32 0, i32 3
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %129, i32* %138, align 4
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  %141 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %142 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @set_channelmap(i32 %140, i32 %145)
  %147 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %148 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %147, i32 0, i32 3
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %157 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = call i32 @list_add(i32* %155, i32* %159)
  br label %161

161:                                              ; preds = %78
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %75

164:                                              ; preds = %75
  %165 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %166 = call i32 @setup_w6692(%struct.w6692_hw* %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %219

170:                                              ; preds = %164
  %171 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %172 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %175 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %174, i32 0, i32 7
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %179 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @mISDN_register_device(%struct.TYPE_16__* %173, i32* %177, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %170
  br label %214

185:                                              ; preds = %170
  %186 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %187 = call i32 @init_card(%struct.w6692_hw* %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %209

191:                                              ; preds = %185
  %192 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %193 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %192, i32 0, i32 2
  %194 = load i32, i32* @w6692_l1callback, align 4
  %195 = call i32 @create_l1(%struct.TYPE_17__* %193, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %191
  %199 = load i32, i32* @w6692_cnt, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @w6692_cnt, align 4
  %201 = load i32, i32* @w6692_cnt, align 4
  %202 = call i32 @pr_notice(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  store i32 0, i32* %2, align 4
  br label %245

203:                                              ; preds = %191
  %204 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %205 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %208 = call i32 @free_irq(i32 %206, %struct.w6692_hw* %207)
  br label %209

209:                                              ; preds = %203, %190
  %210 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %211 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = call i32 @mISDN_unregister_device(%struct.TYPE_16__* %212)
  br label %214

214:                                              ; preds = %209, %184
  %215 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %216 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @release_region(i32 %217, i32 256)
  br label %219

219:                                              ; preds = %214, %169
  %220 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %221 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %220, i32 0, i32 3
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i64 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = call i32 @mISDN_freebchannel(%struct.TYPE_18__* %224)
  %226 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %227 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %226, i32 0, i32 3
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = call i32 @mISDN_freebchannel(%struct.TYPE_18__* %230)
  %232 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %233 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %232, i32 0, i32 2
  %234 = call i32 @mISDN_freedchannel(%struct.TYPE_17__* %233)
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %235)
  %237 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %238 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %237, i32 0, i32 1
  %239 = call i32 @list_del(i32* %238)
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %240)
  %242 = load %struct.w6692_hw*, %struct.w6692_hw** %3, align 8
  %243 = call i32 @kfree(%struct.w6692_hw* %242)
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %219, %198
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.w6692_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mISDN_initdchannel(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mISDN_initbchannel(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @setup_w6692(%struct.w6692_hw*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @init_card(%struct.w6692_hw*) #1

declare dso_local i32 @create_l1(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.w6692_hw*) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @mISDN_freebchannel(%struct.TYPE_18__*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.TYPE_17__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
