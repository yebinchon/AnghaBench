; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_clipping_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_saa7146_set_clipping_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.saa7146_video_dma = type { i32, i32, i32, i32, i32, i32 }

@CLIP_FORMAT_CTRL = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@SAA7146_CLIPPING_RECT = common dso_local global i32 0, align 4
@BASE_EVEN2 = common dso_local global i32 0, align 4
@BASE_ODD2 = common dso_local global i32 0, align 4
@PROT_ADDR2 = common dso_local global i32 0, align 4
@BASE_PAGE2 = common dso_local global i32 0, align 4
@PITCH2 = common dso_local global i32 0, align 4
@NUM_LINE_BYTE2 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_05 = common dso_local global i32 0, align 4
@MASK_21 = common dso_local global i32 0, align 4
@MASK_03 = common dso_local global i32 0, align 4
@MASK_19 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_fh*)* @saa7146_set_clipping_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_set_clipping_rect(%struct.saa7146_fh* %0) #0 {
  %2 = alloca %struct.saa7146_fh*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_vv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_video_dma, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %2, align 8
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 0
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %3, align 8
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 0
  %14 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  store %struct.saa7146_vv* %14, %struct.saa7146_vv** %4, align 8
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %16 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.saa7146_vv*, %struct.saa7146_vv** %4, align 8
  %21 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %27 = call i32 @saa7146_disable_clipping(%struct.saa7146_dev* %26)
  br label %99

28:                                               ; preds = %1
  %29 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %30 = load i32, i32* @CLIP_FORMAT_CTRL, align 4
  %31 = call i32 @saa7146_read(%struct.saa7146_dev* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %33 = load i32, i32* @PCI_BT_V1, align 4
  %34 = call i32 @saa7146_read(%struct.saa7146_dev* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %36 = load %struct.saa7146_fh*, %struct.saa7146_fh** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @calculate_clipping_registers_rect(%struct.saa7146_dev* %35, %struct.saa7146_fh* %36, %struct.saa7146_video_dma* %6, i32* %7, i32* %8, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, -65528
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @SAA7146_CLIPPING_RECT, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %46 = load i32, i32* @BASE_EVEN2, align 4
  %47 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @saa7146_write(%struct.saa7146_dev* %45, i32 %46, i32 %48)
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %51 = load i32, i32* @BASE_ODD2, align 4
  %52 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @saa7146_write(%struct.saa7146_dev* %50, i32 %51, i32 %53)
  %55 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %56 = load i32, i32* @PROT_ADDR2, align 4
  %57 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @saa7146_write(%struct.saa7146_dev* %55, i32 %56, i32 %58)
  %60 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %61 = load i32, i32* @BASE_PAGE2, align 4
  %62 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @saa7146_write(%struct.saa7146_dev* %60, i32 %61, i32 %63)
  %65 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %66 = load i32, i32* @PITCH2, align 4
  %67 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @saa7146_write(%struct.saa7146_dev* %65, i32 %66, i32 %68)
  %70 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %71 = load i32, i32* @NUM_LINE_BYTE2, align 4
  %72 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %6, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @saa7146_write(%struct.saa7146_dev* %70, i32 %71, i32 %73)
  %75 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %76 = load i32, i32* @CLIP_FORMAT_CTRL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @saa7146_write(%struct.saa7146_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %80 = load i32, i32* @PCI_BT_V1, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @saa7146_write(%struct.saa7146_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %84 = load i32, i32* @MC2, align 4
  %85 = load i32, i32* @MASK_05, align 4
  %86 = load i32, i32* @MASK_21, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MASK_03, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @MASK_19, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @saa7146_write(%struct.saa7146_dev* %83, i32 %84, i32 %91)
  %93 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %94 = load i32, i32* @MC1, align 4
  %95 = load i32, i32* @MASK_05, align 4
  %96 = load i32, i32* @MASK_21, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @saa7146_write(%struct.saa7146_dev* %93, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @saa7146_disable_clipping(%struct.saa7146_dev*) #1

declare dso_local i32 @saa7146_read(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @calculate_clipping_registers_rect(%struct.saa7146_dev*, %struct.saa7146_fh*, %struct.saa7146_video_dma*, i32*, i32*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
