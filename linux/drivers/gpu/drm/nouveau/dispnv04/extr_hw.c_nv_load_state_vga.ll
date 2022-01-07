; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_load_state_vga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nv_load_state_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nv04_mode_state = type { %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { i32*, i32*, i32*, i32 }

@NV_PRMVIO_MISC__WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.nv04_mode_state*)* @nv_load_state_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_load_state_vga(%struct.drm_device* %0, i32 %1, %struct.nv04_mode_state* %2) #0 {
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
  %17 = load i32, i32* @NV_PRMVIO_MISC__WRITE, align 4
  %18 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %19 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @NVWritePRMVIO(%struct.drm_device* %15, i32 %16, i32 %17, i32 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %37, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %30 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NVWriteVgaSeq(%struct.drm_device* %26, i32 %27, i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @nv_lock_vga_crtc_base(%struct.drm_device* %41, i32 %42, i32 0)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %53, %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 25
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @wr_cio_state(%struct.drm_device* %48, i32 %49, %struct.nv04_crtc_reg* %50, i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @nv_lock_vga_crtc_base(%struct.drm_device* %57, i32 %58, i32 1)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %75, %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 9
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %68 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @NVWriteVgaGr(%struct.drm_device* %64, i32 %65, i32 %66, i32 %73)
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @NVSetEnablePalette(%struct.drm_device* %79, i32 %80, i32 1)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %97, %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 21
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %7, align 8
  %90 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @NVWriteVgaAttr(%struct.drm_device* %86, i32 %87, i32 %88, i32 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @NVSetEnablePalette(%struct.drm_device* %101, i32 %102, i32 0)
  ret void
}

declare dso_local i32 @NVWritePRMVIO(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVWriteVgaSeq(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @nv_lock_vga_crtc_base(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @wr_cio_state(%struct.drm_device*, i32, %struct.nv04_crtc_reg*, i32) #1

declare dso_local i32 @NVWriteVgaGr(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVSetEnablePalette(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaAttr(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
