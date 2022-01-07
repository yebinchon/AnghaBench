; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_vv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_vv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)* }
%struct.saa7146_dev = type { i32*, %struct.saa7146_vv*, %struct.saa7146_ext_vv*, %struct.TYPE_16__*, %struct.TYPE_13__, %struct.v4l2_ctrl_handler }
%struct.saa7146_ext_vv = type { i32, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.saa7146_vv = type { %struct.TYPE_12__, i32, %struct.v4l2_vbi_format, %struct.v4l2_pix_format, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32*, i32*, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_15__ = type { i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)* }

@saa7146_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"out of memory. aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@saa7146_video_ioctl_ops = common dso_local global i32 0, align 4
@saa7146_vbi_ioctl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@BCS_CTRL = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@SAA7146_CLIPPING_MEM = common dso_local global i32 0, align 4
@saa7146_video_uops = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_PRIMARY = common dso_local global i32 0, align 4
@vv_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_vv_init(%struct.saa7146_dev* %0, %struct.saa7146_ext_vv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_ext_vv*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_vbi_format*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_ext_vv* %1, %struct.saa7146_ext_vv** %5, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 5
  store %struct.v4l2_ctrl_handler* %12, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 4
  %19 = call i32 @v4l2_device_register(i32* %16, %struct.TYPE_13__* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %258

24:                                               ; preds = %2
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %26 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %25, i32 6)
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %28 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %29 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %27, i32* @saa7146_ctrl_ops, i32 %28, i32 0, i32 255, i32 1, i32 128)
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %31 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %32 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, i32* @saa7146_ctrl_ops, i32 %31, i32 0, i32 127, i32 1, i32 64)
  %33 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %34 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %35 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %33, i32* @saa7146_ctrl_ops, i32 %34, i32 0, i32 127, i32 1, i32 64)
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %37 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %38 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @saa7146_ctrl_ops, i32 %37, i32 0, i32 1, i32 1, i32 0)
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %40 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %41 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %39, i32* @saa7146_ctrl_ops, i32 %40, i32 0, i32 1, i32 1, i32 0)
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %24
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %51 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %258

53:                                               ; preds = %24
  %54 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %56 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %54, %struct.v4l2_ctrl_handler** %57, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.saa7146_vv* @kzalloc(i32 136, i32 %58)
  store %struct.saa7146_vv* %59, %struct.saa7146_vv** %9, align 8
  %60 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %61 = icmp eq %struct.saa7146_vv* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %65 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %258

68:                                               ; preds = %53
  %69 = load i32, i32* @saa7146_video_ioctl_ops, align 4
  %70 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %71 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @saa7146_vbi_ioctl_ops, align 4
  %73 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %74 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %75, i32 0, i32 1
  store i32* @saa7146_video_ioctl_ops, i32** %76, align 8
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %78 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.saa7146_dev* %77)
  %79 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %80 = load i32, i32* @BCS_CTRL, align 4
  %81 = call i32 @saa7146_write(%struct.saa7146_dev* %79, i32 %80, i32 -2143289280)
  %82 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %83 = load i32, i32* @MC1, align 4
  %84 = load i32, i32* @MASK_10, align 4
  %85 = load i32, i32* @MASK_26, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @saa7146_write(%struct.saa7146_dev* %82, i32 %83, i32 %86)
  %88 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %89 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %90 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %89, i32 0, i32 2
  store %struct.saa7146_ext_vv* %88, %struct.saa7146_ext_vv** %90, align 8
  %91 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %92 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %91, i32 0, i32 3
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = load i32, i32* @SAA7146_CLIPPING_MEM, align 4
  %95 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %96 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = call i32* @pci_zalloc_consistent(%struct.TYPE_16__* %93, i32 %94, i32* %97)
  %99 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %100 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %103 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* null, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %68
  %108 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %110 = call i32 @kfree(%struct.saa7146_vv* %109)
  %111 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %112 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %111)
  store i32 -1, i32* %3, align 4
  br label %258

113:                                              ; preds = %68
  %114 = load i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @saa7146_video_uops, i32 0, i32 0), align 8
  %115 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %116 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %117 = call i32 %114(%struct.saa7146_dev* %115, %struct.saa7146_vv* %116)
  %118 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %119 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %118, i32 0, i32 2
  %120 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %119, align 8
  %121 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %113
  %127 = load i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %128 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %129 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %130 = call i32 %127(%struct.saa7146_dev* %128, %struct.saa7146_vv* %129)
  br label %131

131:                                              ; preds = %126, %113
  %132 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %133 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %132, i32 0, i32 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %138 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 8
  %141 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %142 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %141, i32 0, i32 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %147 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %151 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %152 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 5
  store i32 %150, i32* %154, align 4
  %155 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %156 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 2, %159
  %161 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %162 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 8
  %165 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %166 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %171 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %169, %174
  %176 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %177 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %181 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %182 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  store i32 %180, i32* %184, align 8
  %185 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %186 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %185, i32 0, i32 3
  store %struct.v4l2_pix_format* %186, %struct.v4l2_pix_format** %7, align 8
  %187 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %188 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %187, i32 0, i32 0
  store i32 384, i32* %188, align 4
  %189 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %189, i32 0, i32 1
  store i32 288, i32* %190, align 4
  %191 = load i32, i32* @V4L2_PIX_FMT_BGR24, align 4
  %192 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %193 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %192, i32 0, i32 6
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %195 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %196 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %198 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %199 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 4
  %200 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %201 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 3, %202
  %204 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %205 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %207 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %210 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %214 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 4
  %215 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %216 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %215, i32 0, i32 2
  store %struct.v4l2_vbi_format* %216, %struct.v4l2_vbi_format** %8, align 8
  %217 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %218 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %217, i32 0, i32 0
  store i32 27000000, i32* %218, align 8
  %219 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %220 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %219, i32 0, i32 1
  store i32 248, i32* %220, align 4
  %221 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %222 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %221, i32 0, i32 2
  store i32 1440, i32* %222, align 8
  %223 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %224 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %225 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %224, i32 0, i32 5
  store i32 %223, i32* %225, align 8
  %226 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %227 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 5, i32* %229, align 4
  %230 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %231 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 16, i32* %233, align 4
  %234 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %235 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  store i32 312, i32* %237, align 4
  %238 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %8, align 8
  %239 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 16, i32* %241, align 4
  %242 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %243 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %242, i32 0, i32 1
  %244 = call i32 @timer_setup(i32* %243, i32* null, i32 0)
  %245 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %246 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %247 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 4
  %249 = load i32, i32* @V4L2_FBUF_FLAG_PRIMARY, align 4
  %250 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %251 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  store i32 %249, i32* %252, align 8
  %253 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %254 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %255 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %254, i32 0, i32 1
  store %struct.saa7146_vv* %253, %struct.saa7146_vv** %255, align 8
  %256 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %257 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %256, i32 0, i32 0
  store i32* @vv_callback, i32** %257, align 8
  store i32 0, i32* %3, align 4
  br label %258

258:                                              ; preds = %131, %107, %62, %46, %22
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local %struct.saa7146_vv* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32* @pci_zalloc_consistent(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.saa7146_vv*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
