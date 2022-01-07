; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh*, %struct.saa7146_fh*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"already capturing\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"already capturing in another open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"warning: suspending overlay video for streaming capture\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"suspending video failed. aborting\0A\00", align 1
@FORMAT_IS_PLANAR = common dso_local global i32 0, align 4
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot get capture resource %d\0A\00", align 1
@MC2 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_fh*)* @video_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_begin(%struct.saa7146_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146_fh*, align 8
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_vv*, align 8
  %6 = alloca %struct.saa7146_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %3, align 8
  %10 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %11 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %10, i32 0, i32 0
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %11, align 8
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %4, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %5, align 8
  store %struct.saa7146_format* null, %struct.saa7146_format** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %17 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %18 = call i32 @DEB_EE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %16, %struct.saa7146_fh* %17)
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %20 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @STATUS_CAPTURE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %27 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %26, i32 0, i32 1
  %28 = load %struct.saa7146_fh*, %struct.saa7146_fh** %27, align 8
  %29 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %30 = icmp eq %struct.saa7146_fh* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (i8*, ...) @DEB_S(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %123

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @DEB_S(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %123

37:                                               ; preds = %1
  %38 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %39 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @STATUS_OVERLAY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @DEB_S(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %47 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %46, i32 0, i32 1
  %48 = load %struct.saa7146_fh*, %struct.saa7146_fh** %47, align 8
  %49 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %50 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %49, i32 0, i32 2
  store %struct.saa7146_fh* %48, %struct.saa7146_fh** %50, align 8
  %51 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %52 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %51, i32 0, i32 1
  %53 = load %struct.saa7146_fh*, %struct.saa7146_fh** %52, align 8
  %54 = call i32 @saa7146_stop_preview(%struct.saa7146_fh* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 0, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = call i32 @DEB_D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %123

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %37
  %62 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %63 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %64 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %62, i32 %66)
  store %struct.saa7146_format* %67, %struct.saa7146_format** %6, align 8
  %68 = load %struct.saa7146_format*, %struct.saa7146_format** %6, align 8
  %69 = icmp eq %struct.saa7146_format* null, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.saa7146_format*, %struct.saa7146_format** %6, align 8
  %73 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FORMAT_IS_PLANAR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 0, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %61
  %79 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %80 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  br label %86

84:                                               ; preds = %61
  %85 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @saa7146_res_get(%struct.saa7146_fh* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 0, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i8*, ...) @DEB_S(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %96 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %95, i32 0, i32 2
  %97 = load %struct.saa7146_fh*, %struct.saa7146_fh** %96, align 8
  %98 = icmp ne %struct.saa7146_fh* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %101 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %100, i32 0, i32 2
  %102 = load %struct.saa7146_fh*, %struct.saa7146_fh** %101, align 8
  %103 = call i32 @saa7146_start_preview(%struct.saa7146_fh* %102)
  %104 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %105 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %104, i32 0, i32 2
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %105, align 8
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %123

109:                                              ; preds = %86
  %110 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %111 = load i32, i32* @MC2, align 4
  %112 = load i32, i32* @MASK_27, align 4
  %113 = call i32 @saa7146_write(%struct.saa7146_dev* %110, i32 %111, i32 %112)
  %114 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %115 = load i32, i32* @MASK_27, align 4
  %116 = call i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev* %114, i32 %115)
  %117 = load %struct.saa7146_fh*, %struct.saa7146_fh** %3, align 8
  %118 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %119 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %118, i32 0, i32 1
  store %struct.saa7146_fh* %117, %struct.saa7146_fh** %119, align 8
  %120 = load i32, i32* @STATUS_CAPTURE, align 4
  %121 = load %struct.saa7146_vv*, %struct.saa7146_vv** %5, align 8
  %122 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %109, %106, %57, %33, %31
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @DEB_S(i8*, ...) #1

declare dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_start_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_ENABLE(%struct.saa7146_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
