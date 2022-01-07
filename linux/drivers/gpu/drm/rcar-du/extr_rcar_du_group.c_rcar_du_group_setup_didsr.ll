; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup_didsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup_didsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32, %struct.TYPE_2__*, %struct.rcar_du_crtc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rcar_du_crtc = type { i32 }

@DIDSR_CODE = common dso_local global i32 0, align 4
@DIDSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*)* @rcar_du_group_setup_didsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_group_setup_didsr(%struct.rcar_du_group* %0) #0 {
  %2 = alloca %struct.rcar_du_group*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca %struct.rcar_du_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %2, align 8
  %8 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %9 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %8, i32 0, i32 2
  %10 = load %struct.rcar_du_device*, %struct.rcar_du_device** %9, align 8
  store %struct.rcar_du_device* %10, %struct.rcar_du_device** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %12 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %19 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %23, i32 0, i32 2
  %25 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %24, align 8
  store %struct.rcar_du_crtc* %25, %struct.rcar_du_crtc** %4, align 8
  %26 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %27 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %17, %1
  %30 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %31 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %38 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %43 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %42, i32 0, i32 2
  %44 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %43, align 8
  %45 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %46 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %44, i64 %49
  store %struct.rcar_du_crtc* %50, %struct.rcar_du_crtc** %4, align 8
  %51 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %52 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %41, %36, %29
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %104

59:                                               ; preds = %55
  %60 = load i32, i32* @DIDSR_CODE, align 4
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %94, %59
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %72 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @DIDSR_LCDS_LVDS0(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @DIDSR_PDCS_CLK(i32 %80, i32 0)
  %82 = or i32 %79, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %93

85:                                               ; preds = %65
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @DIDSR_LCDS_DCLKIN(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @DIDSR_PDCS_CLK(i32 %88, i32 0)
  %90 = or i32 %87, %89
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  %97 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %98 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %97, i32 1
  store %struct.rcar_du_crtc* %98, %struct.rcar_du_crtc** %4, align 8
  br label %61

99:                                               ; preds = %61
  %100 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %101 = load i32, i32* @DIDSR, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %58
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DIDSR_LCDS_LVDS0(i32) #1

declare dso_local i32 @DIDSR_PDCS_CLK(i32, i32) #1

declare dso_local i32 @DIDSR_LCDS_DCLKIN(i32) #1

declare dso_local i32 @rcar_du_group_write(%struct.rcar_du_group*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
