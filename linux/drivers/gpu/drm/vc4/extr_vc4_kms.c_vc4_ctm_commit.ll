; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_ctm_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_ctm_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.vc4_ctm_state = type { i64, %struct.drm_color_ctm* }
%struct.drm_color_ctm = type { i32* }

@SCALER_OLEDCOEF2 = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF2_R_TO_R = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF2_R_TO_G = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF2_R_TO_B = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF1 = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF1_G_TO_R = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF1_G_TO_G = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF1_G_TO_B = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF0 = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF0_B_TO_R = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF0_B_TO_G = common dso_local global i32 0, align 4
@SCALER_OLEDCOEF0_B_TO_B = common dso_local global i32 0, align 4
@SCALER_OLEDOFFS = common dso_local global i32 0, align 4
@SCALER_OLEDOFFS_DISPFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_dev*, %struct.drm_atomic_state*)* @vc4_ctm_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_ctm_commit(%struct.vc4_dev* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.vc4_ctm_state*, align 8
  %6 = alloca %struct.drm_color_ctm*, align 8
  store %struct.vc4_dev* %0, %struct.vc4_dev** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %7 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %8 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vc4_ctm_state* @to_vc4_ctm_state(i32 %10)
  store %struct.vc4_ctm_state* %11, %struct.vc4_ctm_state** %5, align 8
  %12 = load %struct.vc4_ctm_state*, %struct.vc4_ctm_state** %5, align 8
  %13 = getelementptr inbounds %struct.vc4_ctm_state, %struct.vc4_ctm_state* %12, i32 0, i32 1
  %14 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %13, align 8
  store %struct.drm_color_ctm* %14, %struct.drm_color_ctm** %6, align 8
  %15 = load %struct.vc4_ctm_state*, %struct.vc4_ctm_state** %5, align 8
  %16 = getelementptr inbounds %struct.vc4_ctm_state, %struct.vc4_ctm_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %2
  %20 = load i32, i32* @SCALER_OLEDCOEF2, align 4
  %21 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %22 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %25)
  %27 = load i32, i32* @SCALER_OLEDCOEF2_R_TO_R, align 4
  %28 = call i32 @VC4_SET_FIELD(i64 %26, i32 %27)
  %29 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %30 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %33)
  %35 = load i32, i32* @SCALER_OLEDCOEF2_R_TO_G, align 4
  %36 = call i32 @VC4_SET_FIELD(i64 %34, i32 %35)
  %37 = or i32 %28, %36
  %38 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %39 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %42)
  %44 = load i32, i32* @SCALER_OLEDCOEF2_R_TO_B, align 4
  %45 = call i32 @VC4_SET_FIELD(i64 %43, i32 %44)
  %46 = or i32 %37, %45
  %47 = call i32 @HVS_WRITE(i32 %20, i32 %46)
  %48 = load i32, i32* @SCALER_OLEDCOEF1, align 4
  %49 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %50 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %53)
  %55 = load i32, i32* @SCALER_OLEDCOEF1_G_TO_R, align 4
  %56 = call i32 @VC4_SET_FIELD(i64 %54, i32 %55)
  %57 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %58 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %61)
  %63 = load i32, i32* @SCALER_OLEDCOEF1_G_TO_G, align 4
  %64 = call i32 @VC4_SET_FIELD(i64 %62, i32 %63)
  %65 = or i32 %56, %64
  %66 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %67 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %70)
  %72 = load i32, i32* @SCALER_OLEDCOEF1_G_TO_B, align 4
  %73 = call i32 @VC4_SET_FIELD(i64 %71, i32 %72)
  %74 = or i32 %65, %73
  %75 = call i32 @HVS_WRITE(i32 %48, i32 %74)
  %76 = load i32, i32* @SCALER_OLEDCOEF0, align 4
  %77 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %78 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %81)
  %83 = load i32, i32* @SCALER_OLEDCOEF0_B_TO_R, align 4
  %84 = call i32 @VC4_SET_FIELD(i64 %82, i32 %83)
  %85 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %86 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %89)
  %91 = load i32, i32* @SCALER_OLEDCOEF0_B_TO_G, align 4
  %92 = call i32 @VC4_SET_FIELD(i64 %90, i32 %91)
  %93 = or i32 %84, %92
  %94 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %95 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @vc4_ctm_s31_32_to_s0_9(i32 %98)
  %100 = load i32, i32* @SCALER_OLEDCOEF0_B_TO_B, align 4
  %101 = call i32 @VC4_SET_FIELD(i64 %99, i32 %100)
  %102 = or i32 %93, %101
  %103 = call i32 @HVS_WRITE(i32 %76, i32 %102)
  br label %104

104:                                              ; preds = %19, %2
  %105 = load i32, i32* @SCALER_OLEDOFFS, align 4
  %106 = load %struct.vc4_ctm_state*, %struct.vc4_ctm_state** %5, align 8
  %107 = getelementptr inbounds %struct.vc4_ctm_state, %struct.vc4_ctm_state* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @SCALER_OLEDOFFS_DISPFIFO, align 4
  %110 = call i32 @VC4_SET_FIELD(i64 %108, i32 %109)
  %111 = call i32 @HVS_WRITE(i32 %105, i32 %110)
  ret void
}

declare dso_local %struct.vc4_ctm_state* @to_vc4_ctm_state(i32) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @VC4_SET_FIELD(i64, i32) #1

declare dso_local i64 @vc4_ctm_s31_32_to_s0_9(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
