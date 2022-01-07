; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_audio_fs_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_setup_audio_fs_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hdmi = type { i32 }

@__const.tegra_hdmi_setup_audio_fs_tables.freqs = private unnamed_addr constant [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], align 16
@HDMI_AUDIOCLK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_hdmi*)* @tegra_hdmi_setup_audio_fs_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_setup_audio_fs_tables(%struct.tegra_hdmi* %0) #0 {
  %2 = alloca %struct.tegra_hdmi*, align 8
  %3 = alloca [7 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tegra_hdmi* %0, %struct.tegra_hdmi** %2, align 8
  %9 = bitcast [7 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([7 x i32]* @__const.tegra_hdmi_setup_audio_fs_tables.freqs to i8*), i64 28, i1 false)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %3, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %20, 96000
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 2, i32* %7, align 4
  br label %29

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %24, 48000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 6, i32* %7, align 4
  br label %28

27:                                               ; preds = %23
  store i32 9, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* @HDMI_AUDIOCLK_FREQ, align 4
  %31 = mul nsw i32 8, %30
  %32 = load i32, i32* %5, align 4
  %33 = mul i32 %32, 128
  %34 = udiv i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %35, %36
  %38 = call i32 @AUDIO_FS_LOW(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %39, %40
  %42 = call i32 @AUDIO_FS_HIGH(i32 %41)
  %43 = or i32 %38, %42
  store i32 %43, i32* %8, align 4
  %44 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @HDMI_NV_PDISP_AUDIO_FS(i32 %46)
  %48 = call i32 @tegra_hdmi_writel(%struct.tegra_hdmi* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %10

52:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @AUDIO_FS_LOW(i32) #2

declare dso_local i32 @AUDIO_FS_HIGH(i32) #2

declare dso_local i32 @tegra_hdmi_writel(%struct.tegra_hdmi*, i32, i32) #2

declare dso_local i32 @HDMI_NV_PDISP_AUDIO_FS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
