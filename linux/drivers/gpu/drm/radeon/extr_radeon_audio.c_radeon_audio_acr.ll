; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_hdmi_acr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@radeon_audio_acr.res = internal global %struct.radeon_hdmi_acr zeroinitializer, align 4
@radeon_audio_acr.hdmi_predefined_acr = internal constant [10 x %struct.radeon_hdmi_acr] [%struct.radeon_hdmi_acr { i32 25175, i32 4096, i32 25175, i32 28224, i32 125875, i32 6144, i32 25175, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 25200, i32 4096, i32 25200, i32 6272, i32 28000, i32 6144, i32 25200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 27000, i32 4096, i32 27000, i32 6272, i32 30000, i32 6144, i32 27000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 27027, i32 4096, i32 27027, i32 6272, i32 30030, i32 6144, i32 27027, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 54000, i32 4096, i32 54000, i32 6272, i32 60000, i32 6144, i32 54000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 54054, i32 4096, i32 54054, i32 6272, i32 60060, i32 6144, i32 54054, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 74176, i32 4096, i32 74176, i32 5733, i32 75335, i32 6144, i32 74176, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 74250, i32 4096, i32 74250, i32 6272, i32 82500, i32 6144, i32 74250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 148352, i32 4096, i32 148352, i32 5733, i32 150670, i32 6144, i32 148352, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.radeon_hdmi_acr { i32 148500, i32 4096, i32 148500, i32 6272, i32 165000, i32 6144, i32 148500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_hdmi_acr* (i32)* @radeon_audio_acr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_hdmi_acr* @radeon_audio_acr(i32 %0) #0 {
  %2 = alloca %struct.radeon_hdmi_acr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.radeon_hdmi_acr* getelementptr inbounds ([10 x %struct.radeon_hdmi_acr], [10 x %struct.radeon_hdmi_acr]* @radeon_audio_acr.hdmi_predefined_acr, i64 0, i64 0))
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds [10 x %struct.radeon_hdmi_acr], [10 x %struct.radeon_hdmi_acr]* @radeon_audio_acr.hdmi_predefined_acr, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [10 x %struct.radeon_hdmi_acr], [10 x %struct.radeon_hdmi_acr]* @radeon_audio_acr.hdmi_predefined_acr, i64 0, i64 %17
  store %struct.radeon_hdmi_acr* %18, %struct.radeon_hdmi_acr** %2, align 8
  br label %30

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @radeon_audio_calc_cts(i32 %24, i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 13), i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 12), i32 32000)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @radeon_audio_calc_cts(i32 %26, i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 11), i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 10), i32 44100)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @radeon_audio_calc_cts(i32 %28, i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 9), i32* getelementptr inbounds (%struct.radeon_hdmi_acr, %struct.radeon_hdmi_acr* @radeon_audio_acr.res, i32 0, i32 8), i32 48000)
  store %struct.radeon_hdmi_acr* @radeon_audio_acr.res, %struct.radeon_hdmi_acr** %2, align 8
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %2, align 8
  ret %struct.radeon_hdmi_acr* %31
}

declare dso_local i64 @ARRAY_SIZE(%struct.radeon_hdmi_acr*) #1

declare dso_local i32 @radeon_audio_calc_cts(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
