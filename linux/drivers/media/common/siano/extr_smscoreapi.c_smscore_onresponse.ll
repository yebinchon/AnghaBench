; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_onresponse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_onresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smscore_buffer_t = type { i32, i64, i64 }
%struct.sms_msg_hdr = type { i32, i64, i32 }
%struct.smscore_client_t = type { i32 (i32, %struct.smscore_buffer_t.0*)*, i32 }
%struct.smscore_buffer_t.0 = type opaque
%struct.sms_version_res = type { i32, i32, i32, i32 }
%struct.sms_msg_data = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@smscore_onresponse.last_sample_time = internal global i64 0, align 8
@smscore_onresponse.data_total = internal global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"data rate %d bytes/secs\0A\00", align 1
@MSG_SMS_HO_PER_SLICES_IND = common dso_local global i32 0, align 4
@MSG_SMS_TRANSMISSION_IND = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT_BDA = common dso_local global i64 0, align 8
@DVBT_BDA_CONTROL_MSG_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Firmware id %d prots 0x%x ver %d.%d\0A\00", align 1
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"MSG_SMS_DATA_VALIDITY_RES, checksum = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"gpio level %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"message %s(%d) not handled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_onresponse(%struct.smscore_device_t* %0, %struct.smscore_buffer_t* %1) #0 {
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca %struct.smscore_buffer_t*, align 8
  %5 = alloca %struct.sms_msg_hdr*, align 8
  %6 = alloca %struct.smscore_client_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sms_version_res*, align 8
  %10 = alloca %struct.sms_msg_data*, align 8
  %11 = alloca i32*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %3, align 8
  store %struct.smscore_buffer_t* %1, %struct.smscore_buffer_t** %4, align 8
  %12 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %13 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %17 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = bitcast i32* %20 to %struct.sms_msg_hdr*
  store %struct.sms_msg_hdr* %21, %struct.sms_msg_hdr** %5, align 8
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @jiffies, align 4
  %25 = call i64 @jiffies_to_msecs(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* @smscore_onresponse.last_sample_time, align 8
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %33, 10000
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* @smscore_onresponse.data_total, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @smscore_onresponse.last_sample_time, align 8
  %41 = sub i64 %39, %40
  %42 = udiv i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* @smscore_onresponse.last_sample_time, align 8
  store i32 0, i32* @smscore_onresponse.data_total, align 4
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %48 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @smscore_onresponse.data_total, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* @smscore_onresponse.data_total, align 4
  %54 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %55 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MSG_SMS_HO_PER_SLICES_IND, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %46
  %60 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %61 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MSG_SMS_TRANSMISSION_IND, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59, %46
  %66 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %67 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DEVICE_MODE_DVBT_BDA, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @DVBT_BDA_CONTROL_MSG_ID, align 4
  %73 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %78 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %82 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t* %77, i32 %80, i32 %83)
  store %struct.smscore_client_t* %84, %struct.smscore_client_t** %6, align 8
  %85 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %86 = icmp ne %struct.smscore_client_t* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %89 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %88, i32 0, i32 0
  %90 = load i32 (i32, %struct.smscore_buffer_t.0*)*, i32 (i32, %struct.smscore_buffer_t.0*)** %89, align 8
  %91 = load %struct.smscore_client_t*, %struct.smscore_client_t** %6, align 8
  %92 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %95 = bitcast %struct.smscore_buffer_t* %94 to %struct.smscore_buffer_t.0*
  %96 = call i32 %90(i32 %93, %struct.smscore_buffer_t.0* %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %87, %76
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %247

100:                                              ; preds = %97
  %101 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %102 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %234 [
    i32 137, label %104
    i32 135, label %105
    i32 134, label %106
    i32 136, label %107
    i32 132, label %108
    i32 140, label %109
    i32 139, label %110
    i32 145, label %111
    i32 141, label %160
    i32 128, label %164
    i32 147, label %168
    i32 148, label %180
    i32 129, label %184
    i32 130, label %185
    i32 133, label %189
    i32 144, label %193
    i32 142, label %197
    i32 143, label %201
    i32 131, label %216
    i32 138, label %220
    i32 146, label %233
  ]

104:                                              ; preds = %100
  br label %243

105:                                              ; preds = %100
  br label %243

106:                                              ; preds = %100
  br label %243

107:                                              ; preds = %100
  br label %243

108:                                              ; preds = %100
  br label %243

109:                                              ; preds = %100
  br label %243

110:                                              ; preds = %100
  br label %243

111:                                              ; preds = %100
  %112 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %113 = bitcast %struct.sms_msg_hdr* %112 to %struct.sms_version_res*
  store %struct.sms_version_res* %113, %struct.sms_version_res** %9, align 8
  %114 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %115 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %118 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %121 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %124 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119, i32 %122, i32 %125)
  %127 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %128 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %131, label %133

131:                                              ; preds = %111
  %132 = load i32, i32* @DEVICE_MODE_NONE, align 4
  br label %137

133:                                              ; preds = %111
  %134 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %135 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i32 [ %132, %131 ], [ %136, %133 ]
  %139 = sext i32 %138 to i64
  %140 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %141 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %143 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %146 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %145, i32 0, i32 14
  store i32 %144, i32* %146, align 4
  %147 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %148 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = load %struct.sms_version_res*, %struct.sms_version_res** %9, align 8
  %152 = getelementptr inbounds %struct.sms_version_res, %struct.sms_version_res* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %150, %153
  %155 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %156 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %158 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %157, i32 0, i32 13
  %159 = call i32 @complete(i32* %158)
  br label %243

160:                                              ; preds = %100
  %161 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %162 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %161, i32 0, i32 12
  %163 = call i32 @complete(i32* %162)
  br label %243

164:                                              ; preds = %100
  %165 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %166 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %165, i32 0, i32 11
  %167 = call i32 @complete(i32* %166)
  br label %243

168:                                              ; preds = %100
  %169 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %170 = bitcast %struct.sms_msg_hdr* %169 to %struct.sms_msg_data*
  store %struct.sms_msg_data* %170, %struct.sms_msg_data** %10, align 8
  %171 = load %struct.sms_msg_data*, %struct.sms_msg_data** %10, align 8
  %172 = getelementptr inbounds %struct.sms_msg_data, %struct.sms_msg_data* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %178 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %177, i32 0, i32 10
  %179 = call i32 @complete(i32* %178)
  br label %243

180:                                              ; preds = %100
  %181 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %182 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %181, i32 0, i32 9
  %183 = call i32 @complete(i32* %182)
  br label %243

184:                                              ; preds = %100
  br label %243

185:                                              ; preds = %100
  %186 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %187 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %186, i32 0, i32 8
  %188 = call i32 @complete(i32* %187)
  br label %243

189:                                              ; preds = %100
  %190 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %191 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %190, i32 0, i32 7
  %192 = call i32 @complete(i32* %191)
  br label %243

193:                                              ; preds = %100
  %194 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %195 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %194, i32 0, i32 6
  %196 = call i32 @complete(i32* %195)
  br label %243

197:                                              ; preds = %100
  %198 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %199 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %198, i32 0, i32 5
  %200 = call i32 @complete(i32* %199)
  br label %243

201:                                              ; preds = %100
  %202 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %203 = bitcast %struct.sms_msg_hdr* %202 to i32*
  store i32* %203, i32** %11, align 8
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %208 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 4
  %209 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %210 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %214 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %213, i32 0, i32 3
  %215 = call i32 @complete(i32* %214)
  br label %243

216:                                              ; preds = %100
  %217 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %218 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %217, i32 0, i32 2
  %219 = call i32 @complete(i32* %218)
  br label %243

220:                                              ; preds = %100
  %221 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %222 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %223 = bitcast %struct.sms_msg_hdr* %222 to i8*
  %224 = getelementptr inbounds i8, i8* %223, i64 24
  %225 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %226 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = sext i32 %228 to i64
  %230 = sub i64 %229, 24
  %231 = trunc i64 %230 to i32
  %232 = call i32 @sms_ir_event(%struct.smscore_device_t* %221, i8* %224, i32 %231)
  br label %243

233:                                              ; preds = %100
  br label %243

234:                                              ; preds = %100
  %235 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %236 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @smscore_translate_msg(i32 %237)
  %239 = load %struct.sms_msg_hdr*, %struct.sms_msg_hdr** %5, align 8
  %240 = getelementptr inbounds %struct.sms_msg_hdr, %struct.sms_msg_hdr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %234, %233, %220, %216, %201, %197, %193, %189, %185, %184, %180, %168, %164, %160, %137, %110, %109, %108, %107, %106, %105, %104
  %244 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %245 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %4, align 8
  %246 = call i32 @smscore_putbuffer(%struct.smscore_device_t* %244, %struct.smscore_buffer_t* %245)
  br label %247

247:                                              ; preds = %243, %97
  ret void
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @sms_ir_event(%struct.smscore_device_t*, i8*, i32) #1

declare dso_local i32 @smscore_translate_msg(i32) #1

declare dso_local i32 @smscore_putbuffer(%struct.smscore_device_t*, %struct.smscore_buffer_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
