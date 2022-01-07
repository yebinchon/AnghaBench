; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32, i32, i32*, i32*, i32, i32*, i32* }
%struct.saa7146_dev = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"dev:%p, name:'%s', type:%d\0A\00", align 1
@video_fops = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot register v4l2 device. skipping.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: registered device %s [v4l2]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_register_device(%struct.video_device* %0, %struct.saa7146_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %6, align 8
  store %struct.saa7146_dev* %1, %struct.saa7146_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @DEB_EE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %12, i8* %13, i32 %14)
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 7
  store i32* @video_fops, i32** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load %struct.video_device*, %struct.video_device** %6, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  br label %35

28:                                               ; preds = %4
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %30 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.video_device*, %struct.video_device** %6, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* @video_device_release_empty, align 4
  %37 = load %struct.video_device*, %struct.video_device** %6, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %40 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %39, i32 0, i32 3
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %44 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %43, i32 0, i32 2
  %45 = load %struct.video_device*, %struct.video_device** %6, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.video_device*, %struct.video_device** %6, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %72, %35
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %52 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %59 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.video_device*, %struct.video_device** %6, align 8
  %69 = getelementptr inbounds %struct.video_device, %struct.video_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %49

75:                                               ; preds = %49
  %76 = load %struct.video_device*, %struct.video_device** %6, align 8
  %77 = getelementptr inbounds %struct.video_device, %struct.video_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @strscpy(i32 %78, i8* %79, i32 4)
  %81 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %82 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.video_device*, %struct.video_device** %6, align 8
  %89 = getelementptr inbounds %struct.video_device, %struct.video_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %91 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.video_device*, %struct.video_device** %6, align 8
  %96 = getelementptr inbounds %struct.video_device, %struct.video_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %75
  %103 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %104 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load %struct.video_device*, %struct.video_device** %6, align 8
  %108 = getelementptr inbounds %struct.video_device, %struct.video_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %122

111:                                              ; preds = %75
  %112 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %113 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load %struct.video_device*, %struct.video_device** %6, align 8
  %119 = getelementptr inbounds %struct.video_device, %struct.video_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %111, %102
  %123 = load %struct.video_device*, %struct.video_device** %6, align 8
  %124 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %125 = call i32 @video_set_drvdata(%struct.video_device* %123, %struct.saa7146_dev* %124)
  %126 = load %struct.video_device*, %struct.video_device** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @video_register_device(%struct.video_device* %126, i32 %127, i32 -1)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %141

134:                                              ; preds = %122
  %135 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %136 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.video_device*, %struct.video_device** %6, align 8
  %139 = call i32 @video_device_node_name(%struct.video_device* %138)
  %140 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %139)
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %134, %131
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.saa7146_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
