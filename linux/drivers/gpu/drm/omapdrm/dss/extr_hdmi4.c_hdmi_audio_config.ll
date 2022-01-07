; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_audio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.omap_dss_audio = type { i32 }
%struct.omap_hdmi = type { i32, i32, %struct.omap_dss_audio, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.omap_dss_audio*)* @hdmi_audio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_config(%struct.device* %0, %struct.omap_dss_audio* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.omap_dss_audio*, align 8
  %5 = alloca %struct.omap_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.omap_dss_audio* %1, %struct.omap_dss_audio** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.omap_hdmi* @dev_get_drvdata(%struct.device* %7)
  store %struct.omap_hdmi* %8, %struct.omap_hdmi** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %13 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %18 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %17, i32 0, i32 5
  %19 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %20 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %19, i32 0, i32 4
  %21 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %4, align 8
  %22 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %23 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hdmi4_audio_config(i32* %18, i32* %20, %struct.omap_dss_audio* %21, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %40

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %34 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %36 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %35, i32 0, i32 2
  %37 = load %struct.omap_dss_audio*, %struct.omap_dss_audio** %4, align 8
  %38 = bitcast %struct.omap_dss_audio* %36 to i8*
  %39 = bitcast %struct.omap_dss_audio* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %32, %30
  %41 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %42 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.omap_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi4_audio_config(i32*, i32*, %struct.omap_dss_audio*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
