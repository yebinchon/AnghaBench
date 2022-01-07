; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_vtg_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_optc1_set_vtg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.optc = type { i32 }

@OTG_INTERLACE_CONTROL = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@VTG0_FP2 = common dso_local global i32 0, align 4
@VTG0_VCOUNT_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc1_set_vtg_params(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.dc_crtc_timing*, align 8
  %5 = alloca %struct.dc_crtc_timing, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %12 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %11)
  store %struct.optc* %12, %struct.optc** %10, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %4, align 8
  %14 = bitcast %struct.dc_crtc_timing* %5 to i8*
  %15 = bitcast %struct.dc_crtc_timing* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 24, i1 false)
  %16 = call i32 @apply_front_porch_workaround(%struct.dc_crtc_timing* %5)
  %17 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %22, %24
  %26 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.optc*, %struct.optc** %10, align 8
  %34 = getelementptr inbounds %struct.optc, %struct.optc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %2
  %44 = load i32, i32* @OTG_INTERLACE_CONTROL, align 4
  %45 = call i64 @REG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %7, align 4
  %55 = load %struct.optc*, %struct.optc** %10, align 8
  %56 = getelementptr inbounds %struct.optc, %struct.optc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 2
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* %6, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* @CONTROL, align 4
  %69 = load i32, i32* @VTG0_FP2, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VTG0_VCOUNT_INIT, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @REG_UPDATE_2(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @apply_front_porch_workaround(%struct.dc_crtc_timing*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
