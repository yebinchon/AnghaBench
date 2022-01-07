; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_save_state_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i32*, i32*, i32*, i32 }

@NV_PRMVIO_MISC__READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_save_state_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_save_state_vga(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv04_mode_state*, align 8
  %7 = alloca %struct.nv04_crtc_reg*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nv04_mode_state* %2, %struct.nv04_mode_state** %6, align 8
  %9 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %6, align 8
  %10 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %9, i32 0, i32 0
  %11 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %11, i64 %13
  store %struct.nv04_crtc_reg* %14, %struct.nv04_crtc_reg** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NV_PRMVIO_MISC__READ, align 4
  %18 = call i32 @NVReadPRMVIO(%struct.drm_device* %15, i32 %16, i32 %17)
  %19 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %20 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %30, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 25
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @rd_cio_state(%struct.drm_device* %25, i32 %26, %struct.nv04_crtc_reg* %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @NVSetEnablePalette(%struct.drm_device* %34, i32 %35, i32 1)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %51, %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 21
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @NVReadVgaAttr(%struct.drm_device* %41, i32 %42, i32 %43)
  %45 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %46 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @NVSetEnablePalette(%struct.drm_device* %55, i32 %56, i32 0)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %72, %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 9
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @NVReadVgaGr(%struct.drm_device* %62, i32 %63, i32 %64)
  %66 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %67 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %58

75:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 5
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @NVReadVgaSeq(%struct.drm_device* %80, i32 %81, i32 %82)
  %84 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %85 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %76

93:                                               ; preds = %76
  ret void
}

declare dso_local i32 @NVReadPRMVIO(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @rd_cio_state(%struct.drm_device*, i32, %struct.nv04_crtc_reg*, i32) #1

declare dso_local i32 @NVSetEnablePalette(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVReadVgaAttr(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVReadVgaGr(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVReadVgaSeq(%struct.drm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
