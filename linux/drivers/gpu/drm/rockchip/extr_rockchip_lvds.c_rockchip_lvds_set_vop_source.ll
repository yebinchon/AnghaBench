; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_set_vop_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_set_vop_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_lvds = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_encoder = type { i32 }

@RK3288_LVDS_SOC_CON6_SEL_VOP_LIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_lvds*, %struct.drm_encoder*)* @rockchip_lvds_set_vop_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_lvds_set_vop_source(%struct.rockchip_lvds* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_lvds*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_lvds* %0, %struct.rockchip_lvds** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %8 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %4, align 8
  %17 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %22 = call i32 @drm_of_encoder_active_endpoint_id(i32 %20, %struct.drm_encoder* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %15
  %28 = load i32, i32* @RK3288_LVDS_SOC_CON6_SEL_VOP_LIT, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @RK3288_LVDS_SOC_CON6_SEL_VOP_LIT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %4, align 8
  %38 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %4, align 8
  %41 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @regmap_write(i32 %39, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %25, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @drm_of_encoder_active_endpoint_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
