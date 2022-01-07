; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7146_format = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no known field mode '%d'\0A\00", align 1
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"w:%d, h:%d, bytesperline:%d, sizeimage:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.saa7146_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.saa7146_fh*
  %17 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %16, i32 0, i32 0
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %17, align 8
  store %struct.saa7146_dev* %18, %struct.saa7146_dev** %8, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 0
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %20, align 8
  store %struct.saa7146_vv* %21, %struct.saa7146_vv** %9, align 8
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @DEB_EE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %22, i8* %23)
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %25, i32 %30)
  store %struct.saa7146_format* %31, %struct.saa7146_format** %10, align 8
  %32 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %33 = icmp eq %struct.saa7146_format* null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %206

37:                                               ; preds = %3
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %49 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %37
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 2
  %64 = icmp sgt i32 %61, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 129, i32 130
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %56, %37
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %82 [
    i32 131, label %69
    i32 128, label %74
    i32 130, label %74
    i32 129, label %79
  ]

69:                                               ; preds = %67
  %70 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %71 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %70, i32 0, i32 0
  store i32 128, i32* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %13, align 4
  br label %87

74:                                               ; preds = %67, %67
  %75 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %76 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %75, i32 0, i32 0
  store i32 129, i32* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %13, align 4
  br label %87

79:                                               ; preds = %67
  %80 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %81 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %80, i32 0, i32 0
  store i32 129, i32* %81, align 8
  br label %87

82:                                               ; preds = %67
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, i32, ...) @DEB_D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %206

87:                                               ; preds = %79, %74, %69
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  store i32 %93, i32* %97, align 4
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %87
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %132 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = sdiv i32 %134, 8
  store i32 %135, i32* %14, align 4
  %136 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %125
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %143, %125
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @PAGE_SIZE, align 4
  %156 = mul nsw i32 2, %155
  %157 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %158 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = sdiv i32 %160, 8
  %162 = icmp sgt i32 %154, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %149
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %166 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %163, %149
  %170 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %171 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %176 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %174, %179
  %181 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 4
  store i32 %180, i32* %184, align 4
  %185 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %191 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %196 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %201 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, i32, ...) @DEB_D(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %189, i32 %194, i32 %199, i32 %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %169, %82, %34
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_D(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
