; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_open_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_act_open_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, %struct.tid_info* }
%struct.tid_info = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_16__, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_23__, %struct.TYPE_22__, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.cpl_act_open_rpl = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"ep %p atid %u status %u errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Connection problems for atid %u status %u (%s)\0A\00", align 1
@ACT_OPEN_RPL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ACT_OPEN_RETRY_COUNT = common dso_local global i32 0, align 4
@ACT_RETRY_INUSE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Active open failure - atid %u status %u errno %d %pI4:%u->%pI4:%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Active open failure - atid %u status %u errno %d %pI6:%u->%pI6:%u\0A\00", align 1
@DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @act_open_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act_open_rpl(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca %struct.cpl_act_open_rpl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca %struct.sockaddr_in6*, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.cpl_act_open_rpl* @cplhdr(%struct.sk_buff* %18)
  store %struct.cpl_act_open_rpl* %19, %struct.cpl_act_open_rpl** %7, align 8
  %20 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %7, align 8
  %21 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = call i32 @AOPEN_ATID_G(i32 %23)
  %25 = call i32 @TID_TID_G(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %27 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.tid_info*, %struct.tid_info** %29, align 8
  store %struct.tid_info* %30, %struct.tid_info** %9, align 8
  %31 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %7, align 8
  %32 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = call i32 @AOPEN_STATUS_G(i32 %34)
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %15, align 4
  %36 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.c4iw_ep* @lookup_atid(%struct.tid_info* %36, i32 %37)
  store %struct.c4iw_ep* %38, %struct.c4iw_ep** %6, align 8
  %39 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %40 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_23__* %41 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %42, %struct.sockaddr_in** %11, align 8
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_22__* %45 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %46, %struct.sockaddr_in** %12, align 8
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %48 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_23__* %49 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %50, %struct.sockaddr_in6** %13, align 8
  %51 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %52 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = bitcast %struct.TYPE_22__* %53 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %54, %struct.sockaddr_in6** %14, align 8
  %55 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @status2errno(i32 %58)
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %55, i32 %56, i32 %57, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @cxgb_is_neg_adv(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %2
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @neg_adv_str(i32 %67)
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %68)
  %70 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %71 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %76 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %81 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %87 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  store i32 0, i32* %3, align 4
  br label %340

91:                                               ; preds = %2
  %92 = load i32, i32* @ACT_OPEN_RPL, align 4
  %93 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %94 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = call i32 @set_bit(i32 %92, i32* %95)
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %206 [
    i32 130, label %98
    i32 129, label %98
    i32 128, label %99
    i32 131, label %144
  ]

98:                                               ; preds = %91, %91
  br label %257

99:                                               ; preds = %91
  %100 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %101 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %106 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %112 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %117 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AF_INET, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %99
  %124 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %125 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %123
  %131 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %132 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %7, align 8
  %133 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ntohl(i32 %134)
  %136 = call i32 @AOPEN_ATID_G(i32 %135)
  %137 = call i32 @TID_TID_G(i32 %136)
  %138 = call i32 @send_fw_act_open_req(%struct.c4iw_ep* %131, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %258

142:                                              ; preds = %130
  store i32 0, i32* %3, align 4
  br label %340

143:                                              ; preds = %123, %99
  br label %257

144:                                              ; preds = %91
  %145 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %146 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @ACT_OPEN_RETRY_COUNT, align 4
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %205

151:                                              ; preds = %144
  %152 = load i32, i32* @ACT_RETRY_INUSE, align 4
  %153 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %154 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  %156 = call i32 @set_bit(i32 %152, i32* %155)
  %157 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %158 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AF_INET6, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %151
  %165 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %166 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = bitcast %struct.TYPE_23__* %167 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %168, %struct.sockaddr_in6** %16, align 8
  %169 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %170 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %180 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 0
  %182 = bitcast i32** %181 to i32*
  %183 = call i32 @cxgb4_clip_release(i32 %178, i32* %182, i32 1)
  br label %184

184:                                              ; preds = %164, %151
  %185 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %186 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @xa_erase_irq(i32* %189, i32 %190)
  %192 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @cxgb4_free_atid(%struct.tid_info* %192, i32 %193)
  %195 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %196 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dst_release(i32 %197)
  %199 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %200 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @cxgb4_l2t_release(i32 %201)
  %203 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %204 = call i32 @c4iw_reconnect(%struct.c4iw_ep* %203)
  store i32 0, i32* %3, align 4
  br label %340

205:                                              ; preds = %144
  br label %257

206:                                              ; preds = %91
  %207 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %208 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @AF_INET, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %206
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @status2errno(i32 %217)
  %219 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %220 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %223 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ntohs(i32 %224)
  %226 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %227 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %230 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ntohs(i32 %231)
  %233 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %215, i32 %216, i32 %218, i32* %221, i32 %225, i32* %228, i32 %232)
  br label %256

234:                                              ; preds = %206
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @status2errno(i32 %237)
  %239 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %240 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %244 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @ntohs(i32 %245)
  %247 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %248 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %252 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ntohs(i32 %253)
  %255 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %235, i32 %236, i32 %238, i32* %242, i32 %246, i32* %250, i32 %254)
  br label %256

256:                                              ; preds = %234, %214
  br label %257

257:                                              ; preds = %256, %205, %143, %98
  br label %258

258:                                              ; preds = %257, %141
  %259 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @status2errno(i32 %260)
  %262 = call i32 @connect_reply_upcall(%struct.c4iw_ep* %259, i32 %261)
  %263 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %264 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %263, i32 0, i32 0
  %265 = load i32, i32* @DEAD, align 4
  %266 = call i32 @state_set(%struct.TYPE_16__* %264, i32 %265)
  %267 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %268 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @AF_INET6, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %258
  %275 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %276 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = bitcast %struct.TYPE_23__* %277 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %278, %struct.sockaddr_in6** %17, align 8
  %279 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %280 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %290 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = bitcast i32** %291 to i32*
  %293 = call i32 @cxgb4_clip_release(i32 %288, i32* %292, i32 1)
  br label %294

294:                                              ; preds = %274, %258
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %318

297:                                              ; preds = %294
  %298 = load i32, i32* %10, align 4
  %299 = call i64 @act_open_has_tid(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %318

301:                                              ; preds = %297
  %302 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %303 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %7, align 8
  %311 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %310)
  %312 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %313 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @cxgb4_remove_tid(i32 %309, i32 0, i32 %311, i32 %316)
  br label %318

318:                                              ; preds = %301, %297, %294
  %319 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %320 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @xa_erase_irq(i32* %323, i32 %324)
  %326 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @cxgb4_free_atid(%struct.tid_info* %326, i32 %327)
  %329 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %330 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @dst_release(i32 %331)
  %333 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %334 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @cxgb4_l2t_release(i32 %335)
  %337 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %338 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %337, i32 0, i32 0
  %339 = call i32 @c4iw_put_ep(%struct.TYPE_16__* %338)
  store i32 0, i32* %3, align 4
  br label %340

340:                                              ; preds = %318, %184, %142, %64
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.cpl_act_open_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @AOPEN_ATID_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @AOPEN_STATUS_G(i32) #1

declare dso_local %struct.c4iw_ep* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @status2errno(i32) #1

declare dso_local i64 @cxgb_is_neg_adv(i32) #1

declare dso_local i32 @neg_adv_str(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @send_fw_act_open_req(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @cxgb4_clip_release(i32, i32*, i32) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @cxgb4_free_atid(%struct.tid_info*, i32) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @cxgb4_l2t_release(i32) #1

declare dso_local i32 @c4iw_reconnect(%struct.c4iw_ep*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @connect_reply_upcall(%struct.c4iw_ep*, i32) #1

declare dso_local i32 @state_set(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @act_open_has_tid(i32) #1

declare dso_local i32 @cxgb4_remove_tid(i32, i32, i32, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_open_rpl*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
