; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_queue_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_queue_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, %struct.vb2_buffer**, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.vb2_buffer = type { i64, i32, i64, i32*, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.media_request* }
%struct.media_request = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@stop_streaming = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"driver bug: stop_streaming operation is leaving buf %p in active state\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@MEDIA_REQUEST_STATE_QUEUED = common dso_local global i32 0, align 4
@buf_request_complete = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@buf_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @__vb2_queue_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vb2_queue_cancel(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.media_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %15 = load i32, i32* @stop_streaming, align 4
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %17 = call i32 @call_void_qop(%struct.vb2_queue* %14, i32 %15, %struct.vb2_queue* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 3
  %21 = call i32 @atomic_read(i32* %20)
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 1
  %34 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %34, i64 %36
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %37, align 8
  %39 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VB2_BUF_STATE_ACTIVE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %31
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 1
  %46 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %46, i64 %48
  %50 = load %struct.vb2_buffer*, %struct.vb2_buffer** %49, align 8
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), %struct.vb2_buffer* %50)
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 1
  %54 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %54, i64 %56
  %58 = load %struct.vb2_buffer*, %struct.vb2_buffer** %57, align 8
  %59 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %60 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %58, i32 %59)
  br label %61

61:                                               ; preds = %43, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %67 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %66, i32 0, i32 3
  %68 = call i32 @atomic_read(i32* %67)
  %69 = call i64 @WARN_ON(i32 %68)
  br label %70

70:                                               ; preds = %65, %18
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 11
  store i64 0, i64* %72, align 8
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 10
  store i64 0, i64* %74, align 8
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 9
  store i64 0, i64* %76, align 8
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %80 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %82 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %84 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %83, i32 0, i32 5
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %87 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %86, i32 0, i32 4
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %90 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %89, i32 0, i32 3
  %91 = call i32 @atomic_set(i32* %90, i32 0)
  %92 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %93 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %92, i32 0, i32 2
  %94 = call i32 @wake_up_all(i32* %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %208, %70
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %98 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %211

101:                                              ; preds = %95
  %102 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %103 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %102, i32 0, i32 1
  %104 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %104, i64 %106
  %108 = load %struct.vb2_buffer*, %struct.vb2_buffer** %107, align 8
  store %struct.vb2_buffer* %108, %struct.vb2_buffer** %4, align 8
  %109 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %110 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.media_request*, %struct.media_request** %111, align 8
  store %struct.media_request* %112, %struct.media_request** %5, align 8
  %113 = load %struct.media_request*, %struct.media_request** %5, align 8
  %114 = icmp ne %struct.media_request* %113, null
  br i1 %114, label %115, label %136

115:                                              ; preds = %101
  %116 = load %struct.media_request*, %struct.media_request** %5, align 8
  %117 = getelementptr inbounds %struct.media_request, %struct.media_request* %116, i32 0, i32 1
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load %struct.media_request*, %struct.media_request** %5, align 8
  %121 = getelementptr inbounds %struct.media_request, %struct.media_request* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  %123 = load %struct.media_request*, %struct.media_request** %5, align 8
  %124 = getelementptr inbounds %struct.media_request, %struct.media_request* %123, i32 0, i32 1
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @MEDIA_REQUEST_STATE_QUEUED, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %115
  %131 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %132 = load i32, i32* @buf_request_complete, align 4
  %133 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %134 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %131, i32 %132, %struct.vb2_buffer* %133)
  br label %135

135:                                              ; preds = %130, %115
  br label %136

136:                                              ; preds = %135, %101
  %137 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %138 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %160, %141
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %145 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp ult i32 %143, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142
  %149 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %150 = load i32, i32* @finish, align 4
  %151 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %152 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %151, i32 0, i32 7
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @call_void_memop(%struct.vb2_buffer* %149, i32 %150, i32 %158)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %142

163:                                              ; preds = %142
  %164 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %165 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %164, i32 0, i32 6
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %136
  %167 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %168 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %173 = load i32, i32* @buf_finish, align 4
  %174 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %175 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %172, i32 %173, %struct.vb2_buffer* %174)
  %176 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %177 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %171, %166
  %179 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %180 = call i32 @__vb2_dqbuf(%struct.vb2_buffer* %179)
  %181 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %182 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load %struct.media_request*, %struct.media_request** %183, align 8
  %185 = icmp ne %struct.media_request* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %178
  %187 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %188 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %187, i32 0, i32 4
  %189 = call i32 @media_request_object_unbind(%struct.TYPE_5__* %188)
  %190 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %191 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %190, i32 0, i32 4
  %192 = call i32 @media_request_object_put(%struct.TYPE_5__* %191)
  br label %193

193:                                              ; preds = %186, %178
  %194 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %195 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %200 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @media_request_put(i32* %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %205 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %204, i32 0, i32 3
  store i32* null, i32** %205, align 8
  %206 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %207 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %206, i32 0, i32 2
  store i64 0, i64* %207, align 8
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %3, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %3, align 4
  br label %95

211:                                              ; preds = %95
  ret void
}

declare dso_local i32 @call_void_qop(%struct.vb2_queue*, i32, %struct.vb2_queue*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, %struct.vb2_buffer*) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @call_void_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #1

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @__vb2_dqbuf(%struct.vb2_buffer*) #1

declare dso_local i32 @media_request_object_unbind(%struct.TYPE_5__*) #1

declare dso_local i32 @media_request_object_put(%struct.TYPE_5__*) #1

declare dso_local i32 @media_request_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
