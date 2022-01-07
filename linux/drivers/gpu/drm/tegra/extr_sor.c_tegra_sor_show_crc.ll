; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_show_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_show_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_6__ = type { %struct.tegra_sor* }
%struct.tegra_sor = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SOR_STATE1 = common dso_local global i32 0, align 4
@SOR_STATE_ASY_CRC_MODE_MASK = common dso_local global i32 0, align 4
@SOR_CRC_CNTRL = common dso_local global i32 0, align 4
@SOR_CRC_CNTRL_ENABLE = common dso_local global i32 0, align 4
@SOR_TEST = common dso_local global i32 0, align 4
@SOR_TEST_CRC_POST_SERIALIZE = common dso_local global i32 0, align 4
@SOR_CRCA_RESET = common dso_local global i32 0, align 4
@SOR_CRCA = common dso_local global i32 0, align 4
@SOR_CRCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tegra_sor_show_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_show_crc(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.tegra_sor*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  store %struct.drm_info_node* %13, %struct.drm_info_node** %5, align 8
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %15 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.tegra_sor*, %struct.tegra_sor** %17, align 8
  store %struct.tegra_sor* %18, %struct.tegra_sor** %6, align 8
  %19 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  store %struct.drm_crtc* %23, %struct.drm_crtc** %7, align 8
  %24 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %25 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.drm_device*, %struct.drm_device** %27, align 8
  store %struct.drm_device* %28, %struct.drm_device** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %30 = call i32 @drm_modeset_lock_all(%struct.drm_device* %29)
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %32 = icmp ne %struct.drm_crtc* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %2
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %92

43:                                               ; preds = %33
  %44 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %45 = load i32, i32* @SOR_STATE1, align 4
  %46 = call i32 @tegra_sor_readl(%struct.tegra_sor* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @SOR_STATE_ASY_CRC_MODE_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SOR_STATE1, align 4
  %54 = call i32 @tegra_sor_writel(%struct.tegra_sor* %51, i32 %52, i32 %53)
  %55 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %56 = load i32, i32* @SOR_CRC_CNTRL, align 4
  %57 = call i32 @tegra_sor_readl(%struct.tegra_sor* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @SOR_CRC_CNTRL_ENABLE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @SOR_CRC_CNTRL, align 4
  %64 = call i32 @tegra_sor_writel(%struct.tegra_sor* %61, i32 %62, i32 %63)
  %65 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %66 = load i32, i32* @SOR_TEST, align 4
  %67 = call i32 @tegra_sor_readl(%struct.tegra_sor* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @SOR_TEST_CRC_POST_SERIALIZE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SOR_TEST, align 4
  %75 = call i32 @tegra_sor_writel(%struct.tegra_sor* %72, i32 %73, i32 %74)
  %76 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %77 = call i32 @tegra_sor_crc_wait(%struct.tegra_sor* %76, i32 100)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %43
  br label %92

81:                                               ; preds = %43
  %82 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %83 = load i32, i32* @SOR_CRCA_RESET, align 4
  %84 = load i32, i32* @SOR_CRCA, align 4
  %85 = call i32 @tegra_sor_writel(%struct.tegra_sor* %82, i32 %83, i32 %84)
  %86 = load %struct.tegra_sor*, %struct.tegra_sor** %6, align 8
  %87 = load i32, i32* @SOR_CRCB, align 4
  %88 = call i32 @tegra_sor_readl(%struct.tegra_sor* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %81, %80, %40
  %93 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %94 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @tegra_sor_readl(%struct.tegra_sor*, i32) #1

declare dso_local i32 @tegra_sor_writel(%struct.tegra_sor*, i32, i32) #1

declare dso_local i32 @tegra_sor_crc_wait(%struct.tegra_sor*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
