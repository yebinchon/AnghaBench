; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_start_preview.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_saa7146_start_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.saa7146_fh*, i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"no overlay data available. try S_FMT first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"streaming capture is active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"overlay is already active\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"overlay is already active in another open\0A\00", align 1
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot get necessary overlay resources\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%dx%d+%d+%d 0x%08x field=%s\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"enabling overlay failed: %d\0A\00", align 1
@STATUS_OVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_start_preview(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.v4l2_format, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 0
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %4, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 0
  %14 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  store %struct.saa7146_vv* %14, %struct.saa7146_vv** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %16 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %17 = call i32 @DEB_EE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %15, %struct.saa7146_fh* %16)
  %18 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %19 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %151

27:                                               ; preds = %1
  %28 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %29 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %151

35:                                               ; preds = %27
  %36 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %37 = call i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %40, i32 0, i32 0
  %42 = load %struct.saa7146_fh*, %struct.saa7146_fh** %41, align 8
  %43 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %44 = icmp eq %struct.saa7146_fh* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

47:                                               ; preds = %39
  %48 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %151

51:                                               ; preds = %35
  %52 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %53 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %54 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @saa7146_res_get(%struct.saa7146_fh* %52, i32 %55)
  %57 = icmp eq i64 0, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %151

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %66 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = bitcast %struct.TYPE_9__* %64 to i8*
  %69 = bitcast %struct.TYPE_9__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  %70 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %71 = call i32 @vidioc_try_fmt_vid_overlay(i32* null, %struct.saa7146_fh* %70, %struct.v4l2_format* %6)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 0, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %62
  %75 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %75, i32 0, i32 0
  %77 = load %struct.saa7146_fh*, %struct.saa7146_fh** %76, align 8
  %78 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %79 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @saa7146_res_free(%struct.saa7146_fh* %77, i32 %80)
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %151

84:                                               ; preds = %62
  %85 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %86 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = bitcast %struct.TYPE_9__* %87 to i8*
  %91 = bitcast %struct.TYPE_9__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 24, i1 false)
  %92 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %93 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %99 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %105 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %111 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %117 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** @v4l2_field_names, align 8
  %122 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %123 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %97, i32 %103, i32 %109, i32 %115, i32 %120, i32 %128)
  %130 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %131 = call i32 @saa7146_enable_overlay(%struct.saa7146_fh* %130)
  store i32 %131, i32* %7, align 4
  %132 = icmp ne i32 0, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %84
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %137 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %136, i32 0, i32 0
  %138 = load %struct.saa7146_fh*, %struct.saa7146_fh** %137, align 8
  %139 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %140 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @saa7146_res_free(%struct.saa7146_fh* %138, i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %151

144:                                              ; preds = %84
  %145 = load i32, i32* @STATUS_OVERLAY, align 4
  %146 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %147 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %149 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %150 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %149, i32 0, i32 0
  store %struct.saa7146_fh* %148, %struct.saa7146_fh** %150, align 8
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %144, %133, %74, %58, %47, %45, %31, %23
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @DEB_D(i8*, ...) #1

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i64 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vidioc_try_fmt_vid_overlay(i32*, %struct.saa7146_fh*, %struct.v4l2_format*) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_enable_overlay(%struct.saa7146_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
