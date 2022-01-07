; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_crtc = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Setting dpms mode %d on CRTC %d\0A\00", align 1
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_VIO_SR_CLOCK_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CR_MODE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @nv_crtc_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_dpms(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %11)
  store %struct.nouveau_crtc* %12, %struct.nouveau_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %7, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @NV_DEBUG(%struct.nouveau_drm* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %125

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %35 = call i64 @nv_two_heads(%struct.drm_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %40 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NVSetOwner(%struct.drm_device* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %49 = call i32 @NVReadVgaCrtc(%struct.drm_device* %44, i32 %47, i32 %48)
  %50 = and i32 %49, -193
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %10, align 1
  %52 = load i32, i32* %4, align 4
  switch i32 %52, label %69 [
    i32 129, label %53
    i32 128, label %58
    i32 131, label %63
    i32 130, label %68
  ]

53:                                               ; preds = %43
  store i8 32, i8* %8, align 1
  store i8 -128, i8* %9, align 1
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, 128
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %10, align 1
  br label %70

58:                                               ; preds = %43
  store i8 32, i8* %8, align 1
  store i8 -128, i8* %9, align 1
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, 64
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %10, align 1
  br label %70

63:                                               ; preds = %43
  store i8 32, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 192
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %10, align 1
  br label %70

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %43, %68
  store i8 0, i8* %8, align 1
  store i8 -128, i8* %9, align 1
  br label %70

70:                                               ; preds = %69, %63, %58, %53
  %71 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %72 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %73 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NVVgaSeqReset(%struct.drm_device* %71, i32 %74, i32 1)
  %76 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %77 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %78 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %81 = call i32 @NVReadVgaSeq(%struct.drm_device* %76, i32 %79, i32 %80)
  %82 = and i32 %81, -33
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %8, align 1
  %87 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %88 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %89 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %92 = load i8, i8* %8, align 1
  %93 = call i32 @NVWriteVgaSeq(%struct.drm_device* %87, i32 %90, i32 %91, i8 zeroext %92)
  %94 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %95 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %96 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %99 = call i32 @NVReadVgaCrtc(%struct.drm_device* %94, i32 %97, i32 %98)
  %100 = and i32 %99, -129
  %101 = load i8, i8* %9, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %102, %100
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %9, align 1
  %105 = call i32 @mdelay(i32 10)
  %106 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %107 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %108 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %111 = load i8, i8* %9, align 1
  %112 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %106, i32 %109, i32 %110, i8 zeroext %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %114 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %115 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @NVVgaSeqReset(%struct.drm_device* %113, i32 %116, i32 0)
  %118 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %119 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %5, align 8
  %120 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %123 = load i8, i8* %10, align 1
  %124 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %118, i32 %121, i32 %122, i8 zeroext %123)
  br label %125

125:                                              ; preds = %70, %29
  ret void
}

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVVgaSeqReset(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVReadVgaSeq(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaSeq(%struct.drm_device*, i32, i32, i8 zeroext) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
