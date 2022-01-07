; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_video_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32, %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, i32*, %struct.saa7146_fh*, %struct.TYPE_2__, %struct.saa7146_dmaqueue }
%struct.TYPE_2__ = type { i32 }
%struct.saa7146_dmaqueue = type { i64 }
%struct.file = type { i32 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"not capturing\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"capturing, but in another open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FORMAT_IS_PLANAR = common dso_local global i32 0, align 4
@RESOURCE_DMA1_HPS = common dso_local global i32 0, align 4
@RESOURCE_DMA2_CLP = common dso_local global i32 0, align 4
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@MASK_22 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_fh*, %struct.file*)* @video_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_end(%struct.saa7146_fh* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  %8 = alloca %struct.saa7146_dmaqueue*, align 8
  %9 = alloca %struct.saa7146_format*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %6, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 1
  %18 = load %struct.saa7146_vv*, %struct.saa7146_vv** %17, align 8
  store %struct.saa7146_vv* %18, %struct.saa7146_vv** %7, align 8
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %20 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %19, i32 0, i32 4
  store %struct.saa7146_dmaqueue* %20, %struct.saa7146_dmaqueue** %8, align 8
  store %struct.saa7146_format* null, %struct.saa7146_format** %9, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %23 = call i32 @DEB_EE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %21, %struct.saa7146_fh* %22)
  %24 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %25 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STATUS_CAPTURE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @STATUS_CAPTURE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @DEB_S(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %123

33:                                               ; preds = %2
  %34 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %35 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %34, i32 0, i32 2
  %36 = load %struct.saa7146_fh*, %struct.saa7146_fh** %35, align 8
  %37 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %38 = icmp ne %struct.saa7146_fh* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @DEB_S(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %123

43:                                               ; preds = %33
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %45 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %46 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %44, i32 %48)
  store %struct.saa7146_format* %49, %struct.saa7146_format** %9, align 8
  %50 = load %struct.saa7146_format*, %struct.saa7146_format** %9, align 8
  %51 = icmp eq %struct.saa7146_format* null, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.saa7146_format*, %struct.saa7146_format** %9, align 8
  %55 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FORMAT_IS_PLANAR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 0, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %43
  %61 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  %62 = load i32, i32* @RESOURCE_DMA2_CLP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @MASK_22, align 4
  %67 = load i32, i32* @MASK_21, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MASK_20, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %12, align 4
  br label %74

71:                                               ; preds = %43
  %72 = load i32, i32* @RESOURCE_DMA1_HPS, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @MASK_22, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %76 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %80 = load i32, i32* @MC1, align 4
  %81 = load i32, i32* @MASK_28, align 4
  %82 = call i32 @saa7146_write(%struct.saa7146_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %84 = load i32, i32* @MASK_27, align 4
  %85 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %83, i32 %84)
  %86 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %87 = load i32, i32* @MC1, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @saa7146_write(%struct.saa7146_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %8, align 8
  %91 = getelementptr inbounds %struct.saa7146_dmaqueue, %struct.saa7146_dmaqueue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %74
  %95 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %96 = load %struct.saa7146_dmaqueue*, %struct.saa7146_dmaqueue** %8, align 8
  %97 = load i32, i32* @VIDEOBUF_DONE, align 4
  %98 = call i32 @saa7146_buffer_finish(%struct.saa7146_dev* %95, %struct.saa7146_dmaqueue* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %74
  %100 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %101 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %105 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %104, i32 0, i32 2
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %105, align 8
  %106 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %107 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @saa7146_res_free(%struct.saa7146_fh* %108, i32 %109)
  %111 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %112 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %99
  %116 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %117 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @saa7146_start_preview(i32* %118)
  %120 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %121 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %115, %99
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %39, %31
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*, %struct.saa7146_fh*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_buffer_finish(%struct.saa7146_dev*, %struct.saa7146_dmaqueue*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @saa7146_res_free(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @saa7146_start_preview(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
