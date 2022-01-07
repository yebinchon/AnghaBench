; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_config_dividers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_vou_config_dividers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.vou_div_config = type { i32, i32 }
%struct.zx_crtc = type { %struct.zx_crtc_bits*, %struct.zx_vou_hw* }
%struct.zx_crtc_bits = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zx_vou_hw = type { i32 }

@VOU_DIV_PARA = common dso_local global i32 0, align 4
@DIV_PARA_UPDATE = common dso_local global i32 0, align 4
@VOU_CLK_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zx_vou_config_dividers(%struct.drm_crtc* %0, %struct.vou_div_config* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.vou_div_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zx_crtc*, align 8
  %8 = alloca %struct.zx_vou_hw*, align 8
  %9 = alloca %struct.zx_crtc_bits*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vou_div_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.vou_div_config* %1, %struct.vou_div_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = call %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc* %14)
  store %struct.zx_crtc* %15, %struct.zx_crtc** %7, align 8
  %16 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %17 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %16, i32 0, i32 1
  %18 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %17, align 8
  store %struct.zx_vou_hw* %18, %struct.zx_vou_hw** %8, align 8
  %19 = load %struct.zx_crtc*, %struct.zx_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.zx_crtc, %struct.zx_crtc* %19, i32 0, i32 0
  %21 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %20, align 8
  store %struct.zx_crtc_bits* %21, %struct.zx_crtc_bits** %9, align 8
  %22 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %23 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VOU_DIV_PARA, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @DIV_PARA_UPDATE, align 4
  %28 = call i32 @zx_writel_mask(i32 %26, i32 %27, i32 0)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %91, %3
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %29
  %34 = load %struct.vou_div_config*, %struct.vou_div_config** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %34, i64 %36
  store %struct.vou_div_config* %37, %struct.vou_div_config** %11, align 8
  %38 = load %struct.vou_div_config*, %struct.vou_div_config** %11, align 8
  %39 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %76 [
    i32 128, label %41
    i32 130, label %46
    i32 129, label %51
    i32 133, label %56
    i32 134, label %61
    i32 132, label %66
    i32 131, label %71
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* @VOU_CLK_SEL, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %44 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  br label %77

46:                                               ; preds = %33
  %47 = load i32, i32* @VOU_CLK_SEL, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %49 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  br label %77

51:                                               ; preds = %33
  %52 = load i32, i32* @VOU_DIV_PARA, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %54 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  br label %77

56:                                               ; preds = %33
  %57 = load i32, i32* @VOU_DIV_PARA, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %59 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  br label %77

61:                                               ; preds = %33
  %62 = load i32, i32* @VOU_DIV_PARA, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %64 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  br label %77

66:                                               ; preds = %33
  %67 = load i32, i32* @VOU_DIV_PARA, align 4
  store i32 %67, i32* %12, align 4
  %68 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %69 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  br label %77

71:                                               ; preds = %33
  %72 = load i32, i32* @VOU_DIV_PARA, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.zx_crtc_bits*, %struct.zx_crtc_bits** %9, align 8
  %74 = getelementptr inbounds %struct.zx_crtc_bits, %struct.zx_crtc_bits* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %13, align 4
  br label %77

76:                                               ; preds = %33
  br label %91

77:                                               ; preds = %71, %66, %61, %56, %51, %46, %41
  %78 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %79 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 7, %83
  %85 = load %struct.vou_div_config*, %struct.vou_div_config** %11, align 8
  %86 = getelementptr inbounds %struct.vou_div_config, %struct.vou_div_config* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = shl i32 %87, %88
  %90 = call i32 @zx_writel_mask(i32 %82, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %77, %76
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %29

94:                                               ; preds = %29
  %95 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %8, align 8
  %96 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @VOU_DIV_PARA, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* @DIV_PARA_UPDATE, align 4
  %101 = load i32, i32* @DIV_PARA_UPDATE, align 4
  %102 = call i32 @zx_writel_mask(i32 %99, i32 %100, i32 %101)
  ret void
}

declare dso_local %struct.zx_crtc* @to_zx_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @zx_writel_mask(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
