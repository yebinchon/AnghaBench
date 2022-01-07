; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200wb_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mga_device* }
%struct.mga_device = type { i32 }

@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_GEN_IO_CTL = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_GEN_IO_DATA = common dso_local global i32 0, align 4
@MGA1064_SPAREREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mga_g200wb_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_g200wb_prepare(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mga_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mga_device*, %struct.mga_device** %9, align 8
  store %struct.mga_device* %10, %struct.mga_device** %3, align 8
  %11 = load i32, i32* @DAC_INDEX, align 4
  %12 = load i32, i32* @MGA1064_GEN_IO_CTL, align 4
  %13 = call i32 @WREG8(i32 %11, i32 %12)
  %14 = load i32, i32* @DAC_DATA, align 4
  %15 = call i32 @RREG8(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, 16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MGA1064_GEN_IO_CTL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @WREG_DAC(i32 %18, i32 %19)
  %21 = load i32, i32* @DAC_INDEX, align 4
  %22 = load i32, i32* @MGA1064_GEN_IO_DATA, align 4
  %23 = call i32 @WREG8(i32 %21, i32 %22)
  %24 = load i32, i32* @DAC_DATA, align 4
  %25 = call i32 @RREG8(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 16
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @MGA1064_GEN_IO_DATA, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @WREG_DAC(i32 %28, i32 %29)
  %31 = load i32, i32* @DAC_INDEX, align 4
  %32 = load i32, i32* @MGA1064_SPAREREG, align 4
  %33 = call i32 @WREG8(i32 %31, i32 %32)
  %34 = load i32, i32* @DAC_DATA, align 4
  %35 = call i32 @RREG8(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 128
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @MGA1064_SPAREREG, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @WREG_DAC(i32 %38, i32 %39)
  store i32 300, i32* %5, align 4
  br label %41

41:                                               ; preds = %50, %1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load i32, i32* @DAC_INDEX, align 4
  %52 = load i32, i32* @MGA1064_SPAREREG, align 4
  %53 = call i32 @WREG8(i32 %51, i32 %52)
  %54 = load i32, i32* @DAC_DATA, align 4
  %55 = call i32 @RREG8(i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = call i32 @udelay(i32 1000)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %41

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %59
  store i32 300, i32* %5, align 4
  br label %63

63:                                               ; preds = %72, %62
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i1 [ false, %63 ], [ %69, %67 ]
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = load i32, i32* @DAC_INDEX, align 4
  %74 = load i32, i32* @MGA1064_SPAREREG, align 4
  %75 = call i32 @WREG8(i32 %73, i32 %74)
  %76 = load i32, i32* @DAC_DATA, align 4
  %77 = call i32 @RREG8(i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = call i32 @udelay(i32 1000)
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  br label %63

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %59
  ret void
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @WREG_DAC(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
