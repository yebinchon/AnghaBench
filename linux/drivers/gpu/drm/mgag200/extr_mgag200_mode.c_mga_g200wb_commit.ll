; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mga_device* }
%struct.mga_device = type { i32 }

@MGAREG_CRTCEXT_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_DATA = common dso_local global i32 0, align 4
@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL2 = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_SPAREREG = common dso_local global i32 0, align 4
@MGA1064_GEN_IO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mga_g200wb_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_g200wb_commit(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mga_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mga_device*, %struct.mga_device** %8, align 8
  store %struct.mga_device* %9, %struct.mga_device** %4, align 8
  %10 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %11 = call i32 @WREG8(i32 %10, i32 1)
  %12 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %13 = call i32 @RREG8(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, 136
  %17 = call i32 @WREG8(i32 %14, i32 %16)
  %18 = load i32, i32* @DAC_INDEX, align 4
  %19 = load i32, i32* @MGA1064_REMHEADCTL2, align 4
  %20 = call i32 @WREG8(i32 %18, i32 %19)
  %21 = load i32, i32* @DAC_DATA, align 4
  %22 = call i32 @RREG8(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @DAC_DATA, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @WREG8(i32 %25, i32 %26)
  %28 = call i32 @udelay(i32 10)
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -9
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @DAC_INDEX, align 4
  %32 = load i32, i32* @MGA1064_REMHEADCTL2, align 4
  %33 = call i32 @WREG8(i32 %31, i32 %32)
  %34 = load i32, i32* @DAC_DATA, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @WREG8(i32 %34, i32 %35)
  %37 = load i32, i32* @DAC_INDEX, align 4
  %38 = load i32, i32* @MGA1064_SPAREREG, align 4
  %39 = call i32 @WREG8(i32 %37, i32 %38)
  %40 = load i32, i32* @DAC_DATA, align 4
  %41 = call i32 @RREG8(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, -129
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @DAC_DATA, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @WREG8(i32 %44, i32 %45)
  %47 = load i32, i32* @DAC_INDEX, align 4
  %48 = load i32, i32* @MGA1064_GEN_IO_DATA, align 4
  %49 = call i32 @WREG8(i32 %47, i32 %48)
  %50 = load i32, i32* @DAC_DATA, align 4
  %51 = call i32 @RREG8(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -17
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @MGA1064_GEN_IO_DATA, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @WREG_DAC(i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WREG_DAC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
