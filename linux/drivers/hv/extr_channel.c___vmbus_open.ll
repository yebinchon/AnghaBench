; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c___vmbus_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel.c___vmbus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.vmbus_channel = type { i64, i64, i64, void (i8*)*, i32, i32, i64, i64, i32, %struct.TYPE_7__, %struct.page*, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.page = type { i32 }
%struct.vmbus_channel_open_channel = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vmbus_channel_msginfo = type { i32, %struct.TYPE_9__, i32, i64, %struct.vmbus_channel* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@MAX_USER_DEFINED_BYTES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CHANNEL_OPEN_STATE = common dso_local global i64 0, align 8
@CHANNEL_OPENING_STATE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNELMSG_OPENCHANNEL = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CHANNEL_OPENED_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*, i8*, i64, void (i8*)*, i8*)* @__vmbus_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vmbus_open(%struct.vmbus_channel* %0, i8* %1, i64 %2, void (i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.vmbus_channel_open_channel*, align 8
  %13 = alloca %struct.vmbus_channel_msginfo*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store void (i8*)* %3, void (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.vmbus_channel_msginfo* null, %struct.vmbus_channel_msginfo** %13, align 8
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 10
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @MAX_USER_DEFINED_BYTES, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %252

28:                                               ; preds = %5
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %15, align 8
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %15, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %16, align 8
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %38 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %37, i32 0, i32 12
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHANNEL_OPEN_STATE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %28
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %48 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %47, i32 0, i32 12
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %252

53:                                               ; preds = %28
  %54 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %54, i32 0, i32 12
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i64, i64* @CHANNEL_OPENING_STATE, align 8
  %59 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %60 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load void (i8*)*, void (i8*)** %10, align 8
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %63 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %62, i32 0, i32 3
  store void (i8*)* %61, void (i8*)** %63, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %66 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %68 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %67, i32 0, i32 5
  %69 = load %struct.page*, %struct.page** %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @hv_ringbuffer_init(i32* %68, %struct.page* %69, i64 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  br label %241

75:                                               ; preds = %53
  %76 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %77 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %76, i32 0, i32 4
  %78 = load %struct.page*, %struct.page** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = getelementptr inbounds %struct.page, %struct.page* %78, i64 %79
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @hv_ringbuffer_init(i32* %77, %struct.page* %80, i64 %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %241

86:                                               ; preds = %75
  %87 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %88 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %90 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %91 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %90, i32 0, i32 10
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = call i32 @page_address(%struct.page* %92)
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %16, align 8
  %96 = add i64 %94, %95
  %97 = load i64, i64* @PAGE_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %100 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %99, i32 0, i32 6
  %101 = call i32 @vmbus_establish_gpadl(%struct.vmbus_channel* %89, i32 %93, i64 %98, i64* %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %86
  br label %241

105:                                              ; preds = %86
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.vmbus_channel_msginfo* @kmalloc(i32 80, i32 %106)
  store %struct.vmbus_channel_msginfo* %107, %struct.vmbus_channel_msginfo** %13, align 8
  %108 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %109 = icmp ne %struct.vmbus_channel_msginfo* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %18, align 4
  br label %233

113:                                              ; preds = %105
  %114 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %115 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %114, i32 0, i32 2
  %116 = call i32 @init_completion(i32* %115)
  %117 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %118 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %119 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %118, i32 0, i32 4
  store %struct.vmbus_channel* %117, %struct.vmbus_channel** %119, align 8
  %120 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %121 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.vmbus_channel_open_channel*
  store %struct.vmbus_channel_open_channel* %123, %struct.vmbus_channel_open_channel** %12, align 8
  %124 = load i32, i32* @CHANNELMSG_OPENCHANNEL, align 4
  %125 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %126 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %129 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %133 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %135 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %139 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %141 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %144 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %146 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %149 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %151 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %154 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* %9, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %113
  %158 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %159 = getelementptr inbounds %struct.vmbus_channel_open_channel, %struct.vmbus_channel_open_channel* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @memcpy(i32 %160, i8* %161, i64 %162)
  br label %164

164:                                              ; preds = %157, %113
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %165)
  %167 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %168 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %167, i32 0, i32 0
  %169 = call i32 @list_add_tail(i32* %168, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 1))
  %170 = load i64, i64* %17, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %170)
  %172 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %173 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %18, align 4
  br label %230

179:                                              ; preds = %164
  %180 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %181 = call i32 @vmbus_post_msg(%struct.vmbus_channel_open_channel* %180, i32 40, i32 1)
  store i32 %181, i32* %18, align 4
  %182 = load %struct.vmbus_channel_open_channel*, %struct.vmbus_channel_open_channel** %12, align 8
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @trace_vmbus_open(%struct.vmbus_channel_open_channel* %182, i32 %183)
  %185 = load i32, i32* %18, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %222

188:                                              ; preds = %179
  %189 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %190 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %189, i32 0, i32 2
  %191 = call i32 @wait_for_completion(i32* %190)
  %192 = load i64, i64* %17, align 8
  %193 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %192)
  %194 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %195 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %194, i32 0, i32 0
  %196 = call i32 @list_del(i32* %195)
  %197 = load i64, i64* %17, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %197)
  %199 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %200 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %188
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %18, align 4
  br label %230

206:                                              ; preds = %188
  %207 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %208 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i32, i32* @EAGAIN, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %18, align 4
  br label %230

216:                                              ; preds = %206
  %217 = load i64, i64* @CHANNEL_OPENED_STATE, align 8
  %218 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %219 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %221 = call i32 @kfree(%struct.vmbus_channel_msginfo* %220)
  store i32 0, i32* %6, align 4
  br label %252

222:                                              ; preds = %187
  %223 = load i64, i64* %17, align 8
  %224 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %223)
  %225 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %226 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %225, i32 0, i32 0
  %227 = call i32 @list_del(i32* %226)
  %228 = load i64, i64* %17, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vmbus_connection, i32 0, i32 0), i64 %228)
  br label %230

230:                                              ; preds = %222, %213, %203, %176
  %231 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %13, align 8
  %232 = call i32 @kfree(%struct.vmbus_channel_msginfo* %231)
  br label %233

233:                                              ; preds = %230, %110
  %234 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %235 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %236 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %235, i32 0, i32 6
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @vmbus_teardown_gpadl(%struct.vmbus_channel* %234, i64 %237)
  %239 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %240 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %239, i32 0, i32 6
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %233, %104, %85, %74
  %242 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %243 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %242, i32 0, i32 5
  %244 = call i32 @hv_ringbuffer_cleanup(i32* %243)
  %245 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %246 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %245, i32 0, i32 4
  %247 = call i32 @hv_ringbuffer_cleanup(i32* %246)
  %248 = load i64, i64* @CHANNEL_OPEN_STATE, align 8
  %249 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %250 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load i32, i32* %18, align 4
  store i32 %251, i32* %6, align 4
  br label %252

252:                                              ; preds = %241, %216, %46, %25
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hv_ringbuffer_init(i32*, %struct.page*, i64) #1

declare dso_local i32 @vmbus_establish_gpadl(%struct.vmbus_channel*, i32, i64, i64*) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local %struct.vmbus_channel_msginfo* @kmalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_open_channel*, i32, i32) #1

declare dso_local i32 @trace_vmbus_open(%struct.vmbus_channel_open_channel*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

declare dso_local i32 @vmbus_teardown_gpadl(%struct.vmbus_channel*, i64) #1

declare dso_local i32 @hv_ringbuffer_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
