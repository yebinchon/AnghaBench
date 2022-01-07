; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.saa7146_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { {}* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.TYPE_9__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.video_device = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"file:%p\0A\00", align 1
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@saa7146_video_uops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.video_device* @video_devdata(%struct.file* %6)
  store %struct.video_device* %7, %struct.video_device** %3, align 8
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %9, align 8
  store %struct.saa7146_fh* %10, %struct.saa7146_fh** %4, align 8
  %11 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 1
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %5, align 8
  %14 = load %struct.file*, %struct.file** %2, align 8
  %15 = call i32 @DEB_EE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.file* %14)
  %16 = load %struct.video_device*, %struct.video_device** %3, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mutex_lock(i32 %18)
  %20 = load %struct.video_device*, %struct.video_device** %3, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VFL_TYPE_VBI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %1
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %27 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %36 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %37 = load %struct.file*, %struct.file** %2, align 8
  %38 = call i32 %35(%struct.saa7146_dev* %36, %struct.file* %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.file*)**
  %46 = load i32 (%struct.file*)*, i32 (%struct.file*)** %45, align 8
  %47 = icmp ne i32 (%struct.file*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %50 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.file*)**
  %55 = load i32 (%struct.file*)*, i32 (%struct.file*)** %54, align 8
  %56 = load %struct.file*, %struct.file** %2, align 8
  %57 = call i32 %55(%struct.file* %56)
  br label %58

58:                                               ; preds = %48, %39
  br label %64

59:                                               ; preds = %1
  %60 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @saa7146_video_uops, i32 0, i32 0), align 8
  %61 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %62 = load %struct.file*, %struct.file** %2, align 8
  %63 = call i32 %60(%struct.saa7146_dev* %61, %struct.file* %62)
  br label %64

64:                                               ; preds = %59, %58
  %65 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %66 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %65, i32 0, i32 0
  %67 = call i32 @v4l2_fh_del(i32* %66)
  %68 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %69 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %68, i32 0, i32 0
  %70 = call i32 @v4l2_fh_exit(i32* %69)
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %72 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @module_put(i32 %75)
  %77 = load %struct.file*, %struct.file** %2, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %78, align 8
  %79 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %80 = call i32 @kfree(%struct.saa7146_fh* %79)
  %81 = load %struct.video_device*, %struct.video_device** %3, align 8
  %82 = getelementptr inbounds %struct.video_device, %struct.video_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mutex_unlock(i32 %83)
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.saa7146_fh*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
