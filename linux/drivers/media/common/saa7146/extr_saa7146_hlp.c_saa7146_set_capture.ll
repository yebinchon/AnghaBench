; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_4__, %struct.saa7146_vv* }
%struct.TYPE_4__ = type { i32 }
%struct.saa7146_vv = type { i64 }
%struct.saa7146_buf = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.saa7146_format = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"buf:%p, next:%p\0A\00", align 1
@PROT_ADDR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"forcing sync to new frame\0A\00", align 1
@MC2 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@RPS_ADDR0 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_12 = common dso_local global i32 0, align 4
@MASK_28 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7146_set_capture(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1, %struct.saa7146_buf* %2) #0 {
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.saa7146_buf*, align 8
  %7 = alloca %struct.saa7146_format*, align 8
  %8 = alloca %struct.saa7146_vv*, align 8
  %9 = alloca i64, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  store %struct.saa7146_buf* %2, %struct.saa7146_buf** %6, align 8
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %11 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %12 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %10, i32 %15)
  store %struct.saa7146_format* %16, %struct.saa7146_format** %7, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 1
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %8, align 8
  %20 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %21 = load %struct.saa7146_buf*, %struct.saa7146_buf** %6, align 8
  %22 = call i32 (i8*, ...) @DEB_CAP(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.saa7146_buf* %20, %struct.saa7146_buf* %21)
  %23 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %24 = load i32, i32* @PROT_ADDR1, align 4
  %25 = call i64 @saa7146_read(%struct.saa7146_dev* %23, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 0, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = call i32 (i8*, ...) @DEB_CAP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %31 = load i32, i32* @MC2, align 4
  %32 = load i32, i32* @MASK_27, align 4
  %33 = call i32 @saa7146_write(%struct.saa7146_dev* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %36 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %37 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %42 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %47 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @saa7146_set_window(%struct.saa7146_dev* %35, i32 %40, i32 %45, i32 %50)
  %52 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %53 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %54 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @saa7146_set_output_format(%struct.saa7146_dev* %52, i32 %55)
  %57 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %58 = call i32 @saa7146_disable_clipping(%struct.saa7146_dev* %57)
  %59 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %60 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %34
  br label %87

65:                                               ; preds = %34
  %66 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %67 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %73 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %74 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %86

75:                                               ; preds = %65
  %76 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %77 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %83 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %84 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.saa7146_format*, %struct.saa7146_format** %7, align 8
  %89 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IS_PLANAR(i32 %90)
  %92 = icmp ne i64 0, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %95 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %96 = call i32 @calculate_video_dma_grab_planar(%struct.saa7146_dev* %94, %struct.saa7146_buf* %95)
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %98 = call i32 @program_capture_engine(%struct.saa7146_dev* %97, i32 1)
  br label %105

99:                                               ; preds = %87
  %100 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %101 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %102 = call i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev* %100, %struct.saa7146_buf* %101)
  %103 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %104 = call i32 @program_capture_engine(%struct.saa7146_dev* %103, i32 0)
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %107 = load i32, i32* @RPS_ADDR0, align 4
  %108 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %109 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @saa7146_write(%struct.saa7146_dev* %106, i32 %107, i32 %111)
  %113 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %114 = load i32, i32* @MC1, align 4
  %115 = load i32, i32* @MASK_12, align 4
  %116 = load i32, i32* @MASK_28, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @saa7146_write(%struct.saa7146_dev* %113, i32 %114, i32 %117)
  ret void
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_CAP(i8*, ...) #1

declare dso_local i64 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7146_set_window(%struct.saa7146_dev*, i32, i32, i32) #1

declare dso_local i32 @saa7146_set_output_format(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_disable_clipping(%struct.saa7146_dev*) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @calculate_video_dma_grab_planar(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

declare dso_local i32 @program_capture_engine(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @calculate_video_dma_grab_packed(%struct.saa7146_dev*, %struct.saa7146_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
