; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_vbi.c_vbi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.file*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PCI_BT_V1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dev:%p, fh:%p\0A\00", align 1
@RESOURCE_DMA3_BRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"cannot get vbi RESOURCE_DMA3_BRS resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@vbi_qops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@vbi_read_timeout = common dso_local global i32 0, align 4
@SAA7146_USE_PORT_B_FOR_VBI = common dso_local global i32 0, align 4
@BRS_CTRL = common dso_local global i32 0, align 4
@MASK_30 = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"vbi workaround failed!\0A\00", align 1
@MASK_08 = common dso_local global i32 0, align 4
@MASK_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.file*)* @vbi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbi_open(%struct.saa7146_dev* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.saa7146_fh*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.saa7146_fh*, %struct.saa7146_fh** %11, align 8
  store %struct.saa7146_fh* %12, %struct.saa7146_fh** %6, align 8
  %13 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %16, align 8
  store %struct.saa7146_vv* %17, %struct.saa7146_vv** %7, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %19 = load i32, i32* @PCI_BT_V1, align 4
  %20 = call i32 @saa7146_read(%struct.saa7146_dev* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %23 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %21, %struct.saa7146_fh* %22)
  %24 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %25 = load i32, i32* @RESOURCE_DMA3_BRS, align 4
  %26 = call i32 @saa7146_res_get(%struct.saa7146_fh* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = call i32 @DEB_S(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, -2031617
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 1900544
  store i32 %37, i32* %8, align 4
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %39 = load i32, i32* @PCI_BT_V1, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @saa7146_write(%struct.saa7146_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %43 = load i32, i32* @MC2, align 4
  %44 = load i32, i32* @MASK_04, align 4
  %45 = load i32, i32* @MASK_20, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @saa7146_write(%struct.saa7146_dev* %42, i32 %43, i32 %46)
  %48 = load %struct.saa7146_fh*, %struct.saa7146_fh** %6, align 8
  %49 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %48, i32 0, i32 0
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %51 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %55 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %54, i32 0, i32 2
  %56 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %57 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %60 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %59, i32 0, i32 1
  %61 = call i32 @videobuf_queue_sg_init(i32* %49, i32* @vbi_qops, i32* %53, i32* %55, i32 %56, i32 %57, i32 4, %struct.file* %58, i32* %60)
  %62 = load i32, i32* @vbi_read_timeout, align 4
  %63 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %64 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %68 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %67, i32 0, i32 0
  store %struct.file* %66, %struct.file** %68, align 8
  %69 = load i32, i32* @SAA7146_USE_PORT_B_FOR_VBI, align 4
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %71 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %69, %74
  %76 = icmp ne i32 0, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %33
  %78 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %79 = load i32, i32* @BRS_CTRL, align 4
  %80 = load i32, i32* @MASK_30, align 4
  %81 = load i32, i32* @MASK_29, align 4
  %82 = or i32 %80, %81
  %83 = or i32 %82, 3670016
  %84 = call i32 @saa7146_write(%struct.saa7146_dev* %78, i32 %79, i32 %83)
  br label %95

85:                                               ; preds = %33
  %86 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %87 = load i32, i32* @BRS_CTRL, align 4
  %88 = call i32 @saa7146_write(%struct.saa7146_dev* %86, i32 %87, i32 1)
  %89 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %90 = call i32 @vbi_workaround(%struct.saa7146_dev* %89)
  store i32 %90, i32* %9, align 4
  %91 = icmp ne i32 0, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @DEB_VBI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %85
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %97 = load i32, i32* @MC2, align 4
  %98 = load i32, i32* @MASK_08, align 4
  %99 = load i32, i32* @MASK_24, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @saa7146_write(%struct.saa7146_dev* %96, i32 %97, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %29
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_VBI(i8*, ...) #1

declare dso_local i32 @saa7146_res_get(%struct.saa7146_fh*, i32) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.file*, i32*) #1

declare dso_local i32 @vbi_workaround(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
