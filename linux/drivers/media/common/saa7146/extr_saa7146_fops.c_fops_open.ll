; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.saa7146_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.file*)* }
%struct.file = type { i32* }
%struct.TYPE_9__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.video_device = type { i64, i32 }
%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }

@.str = private unnamed_addr constant [17 x i8] c"file:%p, dev:%s\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"using: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"no extension registered for this device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot allocate memory for per open data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"initializing vbi...\0A\00", align 1
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"initializing video...\0A\00", align 1
@saa7146_video_uops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.saa7146_dev* @video_drvdata(%struct.file* %10)
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %5, align 8
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = load %struct.video_device*, %struct.video_device** %4, align 8
  %14 = call i32 @video_device_node_name(%struct.video_device* %13)
  %15 = call i32 @DEB_EE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.file* %12, i32 %14)
  %16 = load %struct.video_device*, %struct.video_device** %4, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @mutex_lock_interruptible(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %1
  %25 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %26 = call i32 @DEB_D(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.saa7146_dev* %25)
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp eq %struct.TYPE_8__* null, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = call i32 @DEB_S(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %119

35:                                               ; preds = %24
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.saa7146_fh* @kzalloc(i32 16, i32 %36)
  store %struct.saa7146_fh* %37, %struct.saa7146_fh** %6, align 8
  %38 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %39 = icmp eq %struct.saa7146_fh* null, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 @DEB_S(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %119

44:                                               ; preds = %35
  %45 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %46 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %45, i32 0, i32 0
  %47 = load %struct.video_device*, %struct.video_device** %4, align 8
  %48 = call i32 @v4l2_fh_init(i32* %46, %struct.video_device* %47)
  %49 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %50 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %49, i32 0, i32 0
  %51 = load %struct.file*, %struct.file** %3, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %54 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %55 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %54, i32 0, i32 1
  store %struct.saa7146_dev* %53, %struct.saa7146_dev** %55, align 8
  %56 = load %struct.video_device*, %struct.video_device** %4, align 8
  %57 = getelementptr inbounds %struct.video_device, %struct.video_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VFL_TYPE_VBI, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %44
  %62 = call i32 @DEB_S(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %64 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %73 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %74 = load %struct.file*, %struct.file** %3, align 8
  %75 = call i32 %72(%struct.saa7146_dev* %73, %struct.file* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %61
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %78 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (%struct.file*)*, i32 (%struct.file*)** %81, align 8
  %83 = icmp ne i32 (%struct.file*)* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %86 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (%struct.file*)*, i32 (%struct.file*)** %89, align 8
  %91 = load %struct.file*, %struct.file** %3, align 8
  %92 = call i32 %90(%struct.file* %91)
  br label %93

93:                                               ; preds = %84, %76
  br label %100

94:                                               ; preds = %44
  %95 = call i32 @DEB_S(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @saa7146_video_uops, i32 0, i32 0), align 8
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %98 = load %struct.file*, %struct.file** %3, align 8
  %99 = call i32 %96(%struct.saa7146_dev* %97, %struct.file* %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %93
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 0, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %119

104:                                              ; preds = %100
  %105 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %106 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @try_module_get(i32 %109)
  %111 = icmp eq i64 0, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %119

115:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  %116 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %117 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %116, i32 0, i32 0
  %118 = call i32 @v4l2_fh_add(i32* %117)
  br label %119

119:                                              ; preds = %115, %112, %103, %40, %31
  %120 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %121 = icmp ne %struct.saa7146_fh* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %127 = call i32 @kfree(%struct.saa7146_fh* %126)
  %128 = load %struct.file*, %struct.file** %3, align 8
  %129 = getelementptr inbounds %struct.file, %struct.file* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %125, %122, %119
  %131 = load %struct.video_device*, %struct.video_device** %4, align 8
  %132 = getelementptr inbounds %struct.video_device, %struct.video_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @mutex_unlock(i32 %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %130, %21
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.saa7146_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.file*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32) #1

declare dso_local i32 @DEB_D(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local %struct.saa7146_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @kfree(%struct.saa7146_fh*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
