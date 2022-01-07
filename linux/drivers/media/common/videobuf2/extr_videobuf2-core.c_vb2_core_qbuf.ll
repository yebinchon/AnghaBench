; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_qbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_core_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, i64, i32, i64, i64, i64, i32, i64, i64, %struct.vb2_buffer**, i64 }
%struct.vb2_buffer = type { i32, i32, i32, i32, %struct.media_request*, i32 }
%struct.media_request = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"fatal error occurred on queue\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"qbuf requires a request\0A\00", align 1
@EBADR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"queue in wrong mode (qbuf vs requests)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"buffer %d not in dequeued state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@buf_out_validate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"buffer validation failed\0A\00", align 1
@vb2_core_req_ops = common dso_local global i32 0, align 4
@copy_timestamp = common dso_local global i32 0, align 4
@fill_user_buffer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"qbuf of buffer %d succeeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"buffer still being prepared\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid buffer state %d\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_core_qbuf(%struct.vb2_queue* %0, i32 %1, i8* %2, %struct.media_request* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.media_request*, align 8
  %10 = alloca %struct.vb2_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.media_request* %3, %struct.media_request** %9, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %267

21:                                               ; preds = %4
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 10
  %24 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %24, i64 %26
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %27, align 8
  store %struct.vb2_buffer* %28, %struct.vb2_buffer** %10, align 8
  %29 = load %struct.media_request*, %struct.media_request** %9, align 8
  %30 = icmp ne %struct.media_request* %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %21
  %32 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %33 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 129
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %38 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBADR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %267

45:                                               ; preds = %36, %31, %21
  %46 = load %struct.media_request*, %struct.media_request** %9, align 8
  %47 = icmp ne %struct.media_request* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %50 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.media_request*, %struct.media_request** %9, align 8
  %55 = icmp ne %struct.media_request* %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %58 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 129
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %48
  %67 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %267

70:                                               ; preds = %61, %56, %53
  %71 = load %struct.media_request*, %struct.media_request** %9, align 8
  %72 = icmp ne %struct.media_request* %71, null
  br i1 %72, label %73, label %156

73:                                               ; preds = %70
  %74 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %75 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %77 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 130
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %82 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %267

87:                                               ; preds = %73
  %88 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %89 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %94 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %99 = load i32, i32* @buf_out_validate, align 4
  %100 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %101 = call i32 @call_vb_qop(%struct.vb2_buffer* %98, i32 %99, %struct.vb2_buffer* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %267

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %92, %87
  %109 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %110 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %109, i32 0, i32 5
  %111 = call i32 @media_request_object_init(i32* %110)
  %112 = load %struct.media_request*, %struct.media_request** %9, align 8
  %113 = call i32 @media_request_lock_for_update(%struct.media_request* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %5, align 4
  br label %267

118:                                              ; preds = %108
  %119 = load %struct.media_request*, %struct.media_request** %9, align 8
  %120 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %121 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %122 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %121, i32 0, i32 5
  %123 = call i32 @media_request_object_bind(%struct.media_request* %119, i32* @vb2_core_req_ops, %struct.vb2_queue* %120, i32 1, i32* %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.media_request*, %struct.media_request** %9, align 8
  %125 = call i32 @media_request_unlock_for_update(%struct.media_request* %124)
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %267

130:                                              ; preds = %118
  %131 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %132 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %131, i32 0, i32 0
  store i32 129, i32* %132, align 8
  %133 = load %struct.media_request*, %struct.media_request** %9, align 8
  %134 = call i32 @media_request_get(%struct.media_request* %133)
  %135 = load %struct.media_request*, %struct.media_request** %9, align 8
  %136 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %137 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %136, i32 0, i32 4
  store %struct.media_request* %135, %struct.media_request** %137, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %142 = load i32, i32* @copy_timestamp, align 4
  %143 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @call_void_bufop(%struct.vb2_queue* %141, i32 %142, %struct.vb2_buffer* %143, i8* %144)
  %146 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %147 = load i32, i32* @fill_user_buffer, align 4
  %148 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @call_void_bufop(%struct.vb2_queue* %146, i32 %147, %struct.vb2_buffer* %148, i8* %149)
  br label %151

151:                                              ; preds = %140, %130
  %152 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %153 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  store i32 0, i32* %5, align 4
  br label %267

156:                                              ; preds = %70
  %157 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %158 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 129
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %163 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %166 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %186 [
    i32 130, label %168
    i32 129, label %168
    i32 128, label %182
  ]

168:                                              ; preds = %164, %164
  %169 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %170 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %168
  %174 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %175 = call i32 @__buf_prepare(%struct.vb2_buffer* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %5, align 4
  br label %267

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %168
  br label %193

182:                                              ; preds = %164
  %183 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %5, align 4
  br label %267

186:                                              ; preds = %164
  %187 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %188 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %5, align 4
  br label %267

193:                                              ; preds = %181
  %194 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %195 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %194, i32 0, i32 2
  %196 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %197 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %196, i32 0, i32 7
  %198 = call i32 @list_add_tail(i32* %195, i32* %197)
  %199 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %200 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  %203 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %204 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %203, i32 0, i32 3
  store i32 0, i32* %204, align 8
  %205 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %206 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %207 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %193
  %211 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %212 = load i32, i32* @copy_timestamp, align 4
  %213 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = call i32 @call_void_bufop(%struct.vb2_queue* %211, i32 %212, %struct.vb2_buffer* %213, i8* %214)
  br label %216

216:                                              ; preds = %210, %193
  %217 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %218 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %219 = call i32 @trace_vb2_qbuf(%struct.vb2_queue* %217, %struct.vb2_buffer* %218)
  %220 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %221 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %216
  %225 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %226 = call i32 @__enqueue_in_driver(%struct.vb2_buffer* %225)
  br label %227

227:                                              ; preds = %224, %216
  %228 = load i8*, i8** %8, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %232 = load i32, i32* @fill_user_buffer, align 4
  %233 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @call_void_bufop(%struct.vb2_queue* %231, i32 %232, %struct.vb2_buffer* %233, i8* %234)
  br label %236

236:                                              ; preds = %230, %227
  %237 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %238 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %236
  %242 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %243 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %262, label %246

246:                                              ; preds = %241
  %247 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %248 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %251 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp sge i64 %249, %252
  br i1 %253, label %254, label %262

254:                                              ; preds = %246
  %255 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %256 = call i32 @vb2_start_streaming(%struct.vb2_queue* %255)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %5, align 4
  br label %267

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %246, %241, %236
  %263 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %264 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %265)
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %262, %259, %186, %182, %178, %151, %128, %116, %104, %80, %66, %41, %17
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @call_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #1

declare dso_local i32 @media_request_object_init(i32*) #1

declare dso_local i32 @media_request_lock_for_update(%struct.media_request*) #1

declare dso_local i32 @media_request_object_bind(%struct.media_request*, i32*, %struct.vb2_queue*, i32, i32*) #1

declare dso_local i32 @media_request_unlock_for_update(%struct.media_request*) #1

declare dso_local i32 @media_request_get(%struct.media_request*) #1

declare dso_local i32 @call_void_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*, i8*) #1

declare dso_local i32 @__buf_prepare(%struct.vb2_buffer*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @trace_vb2_qbuf(%struct.vb2_queue*, %struct.vb2_buffer*) #1

declare dso_local i32 @__enqueue_in_driver(%struct.vb2_buffer*) #1

declare dso_local i32 @vb2_start_streaming(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
