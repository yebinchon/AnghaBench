; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_try_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_try_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_7__*, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no fb base set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"no fb fmt set\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"min width/height. (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clipcount too big\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"no known field mode '%d'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.v4l2_window*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.saa7146_fh*
  %16 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  store %struct.saa7146_dev* %17, %struct.saa7146_dev** %8, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %19, align 8
  store %struct.saa7146_vv* %20, %struct.saa7146_vv** %9, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.v4l2_window* %23, %struct.v4l2_window** %10, align 8
  %24 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %25 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %24)
  %26 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %27 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* null, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %143

35:                                               ; preds = %3
  %36 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %37 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* null, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %143

44:                                               ; preds = %35
  %45 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 32
  br i1 %55, label %56, label %68

56:                                               ; preds = %50, %44
  %57 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %62 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %143

68:                                               ; preds = %50
  %69 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 16
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %143

77:                                               ; preds = %68
  %78 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %79 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %82 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %87 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %77
  %95 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %96 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sdiv i32 %99, 2
  %101 = icmp sgt i32 %98, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 129, i32 128
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %94, %77
  %105 = load i32, i32* %11, align 4
  switch i32 %105, label %110 [
    i32 128, label %106
    i32 130, label %106
    i32 131, label %106
    i32 129, label %109
  ]

106:                                              ; preds = %104, %104, %104
  %107 = load i32, i32* %13, align 4
  %108 = sdiv i32 %107, 2
  store i32 %108, i32* %13, align 4
  br label %115

109:                                              ; preds = %104
  br label %115

110:                                              ; preds = %104
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %143

115:                                              ; preds = %109, %106
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %118 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %128 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %115
  %131 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %132 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %140 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %130
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %110, %73, %56, %40, %31
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @DEB_D(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
