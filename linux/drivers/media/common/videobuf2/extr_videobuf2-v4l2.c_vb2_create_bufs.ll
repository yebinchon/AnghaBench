; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.v4l2_create_buffers = type { i64, i32, i32, i32, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@VIDEO_MAX_PLANES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_create_bufs(%struct.vb2_queue* %0, %struct.v4l2_create_buffers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.v4l2_create_buffers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.v4l2_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store %struct.v4l2_create_buffers* %1, %struct.v4l2_create_buffers** %5, align 8
  store i32 1, i32* %6, align 4
  %13 = load i32, i32* @VIDEO_MAX_PLANES, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %17, i32 0, i32 4
  store %struct.v4l2_format* %18, %struct.v4l2_format** %9, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %20 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @vb2_verify_memory_type(%struct.vb2_queue* %19, i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %28 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %28, i32 0, i32 3
  %30 = call i32 @fill_buf_caps(%struct.vb2_queue* %27, i32* %29)
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %180

50:                                               ; preds = %2
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %143 [
    i32 130, label %54
    i32 128, label %54
    i32 131, label %92
    i32 129, label %92
    i32 133, label %99
    i32 132, label %99
    i32 135, label %122
    i32 134, label %122
    i32 137, label %129
    i32 136, label %129
    i32 139, label %136
    i32 138, label %136
  ]

54:                                               ; preds = %50, %50
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @VIDEO_MAX_PLANES, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %180

69:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %16, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %70

91:                                               ; preds = %70
  br label %146

92:                                               ; preds = %50, %50
  %93 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %97, i32* %98, align 16
  br label %146

99:                                               ; preds = %50, %50
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %106 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %111, %118
  %120 = mul i32 %104, %119
  %121 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %120, i32* %121, align 16
  br label %146

122:                                              ; preds = %50, %50
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %127, i32* %128, align 16
  br label %146

129:                                              ; preds = %50, %50
  %130 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %131 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %134, i32* %135, align 16
  br label %146

136:                                              ; preds = %50, %50
  %137 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %138 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %141, i32* %142, align 16
  br label %146

143:                                              ; preds = %50
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %180

146:                                              ; preds = %136, %129, %122, %99, %92, %91
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %161, %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %16, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %180

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %147

164:                                              ; preds = %147
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  br label %178

169:                                              ; preds = %164
  %170 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %171 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %172 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %5, align 8
  %175 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %174, i32 0, i32 0
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @vb2_core_create_bufs(%struct.vb2_queue* %170, i32 %173, i64* %175, i32 %176, i32* %16)
  br label %178

178:                                              ; preds = %169, %167
  %179 = phi i32 [ %168, %167 ], [ %177, %169 ]
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %180

180:                                              ; preds = %178, %157, %143, %66, %48
  %181 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %181)
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vb2_verify_memory_type(%struct.vb2_queue*, i32, i32) #2

declare dso_local i32 @fill_buf_caps(%struct.vb2_queue*, i32*) #2

declare dso_local i32 @vb2_core_create_bufs(%struct.vb2_queue*, i32, i64*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
