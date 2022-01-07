; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_vou_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_vou_hw = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@TIMING_INT_STATE = common dso_local global i64 0, align 8
@TIMING_INT_MAIN_FRAME = common dso_local global i32 0, align 4
@TIMING_INT_AUX_FRAME = common dso_local global i32 0, align 4
@OSD_INT_STA = common dso_local global i64 0, align 8
@OSD_INT_CLRSTA = common dso_local global i64 0, align 8
@OSD_INT_MAIN_UPT = common dso_local global i32 0, align 4
@OSD_INT_AUX_UPT = common dso_local global i32 0, align 4
@OSD_INT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OSD ERROR: 0x%08x!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vou_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vou_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zx_vou_hw*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.zx_vou_hw*
  store %struct.zx_vou_hw* %8, %struct.zx_vou_hw** %5, align 8
  %9 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %10 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TIMING_INT_STATE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @zx_readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %16 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TIMING_INT_STATE, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @zx_writel(i64 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TIMING_INT_MAIN_FRAME, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %28 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @drm_crtc_handle_vblank(i32* %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TIMING_INT_AUX_FRAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %39 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @drm_crtc_handle_vblank(i32* %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %45 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OSD_INT_STA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @zx_readl(i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %51 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OSD_INT_CLRSTA, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @zx_writel(i64 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @OSD_INT_MAIN_UPT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %43
  %62 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %63 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @zx_osd_int_update(%struct.TYPE_2__* %64)
  br label %66

66:                                               ; preds = %61, %43
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @OSD_INT_AUX_UPT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %73 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 @zx_osd_int_update(%struct.TYPE_2__* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @OSD_INT_ERROR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %5, align 8
  %83 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @DRM_DEV_ERROR(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @zx_readl(i64) #1

declare dso_local i32 @zx_writel(i64, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @zx_osd_int_update(%struct.TYPE_2__*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
