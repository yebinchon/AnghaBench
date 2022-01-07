; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_set_start_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_set_start_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mga_device* }
%struct.mga_device = type { i32 }

@MGAREG_VCOUNT = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_INDEX = common dso_local global i32 0, align 4
@MGAREG_CRTCEXT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @mga_set_start_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_set_start_address(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mga_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mga_device*, %struct.mga_device** %12, align 8
  store %struct.mga_device* %13, %struct.mga_device** %5, align 8
  br label %14

14:                                               ; preds = %18, %2
  %15 = call i32 @RREG8(i32 8154)
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %14

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %25, %19
  %21 = call i32 @RREG8(i32 8154)
  %22 = and i32 %21, 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %20

26:                                               ; preds = %20
  %27 = load i32, i32* @MGAREG_VCOUNT, align 4
  %28 = call i32 @RREG8(i32 %27)
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %35, %26
  %31 = load i32, i32* @MGAREG_VCOUNT, align 4
  %32 = call i32 @RREG8(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %30

36:                                               ; preds = %30
  %37 = load i32, i32* @MGAREG_CRTCEXT_INDEX, align 4
  %38 = call i32 @WREG8(i32 %37, i32 0)
  %39 = load i32, i32* @MGAREG_CRTCEXT_DATA, align 4
  %40 = call i32 @RREG8(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 176
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = udiv i32 %43, 8
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 2097151
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1048576
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = shl i32 %54, 6
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @WREG_CRT(i32 13, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i32 @WREG_CRT(i32 12, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 15
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @WREG_ECRT(i32 0, i32 %69)
  ret void
}

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WREG_CRT(i32, i32) #1

declare dso_local i32 @WREG_ECRT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
