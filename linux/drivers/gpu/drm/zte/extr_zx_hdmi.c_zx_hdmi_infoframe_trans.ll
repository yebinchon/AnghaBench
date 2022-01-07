; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_infoframe_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_infoframe_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_hdmi = type { i32 }
%union.hdmi_infoframe = type { i32 }

@ZX_HDMI_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@TPI_INFO_FSEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to pack infoframe: %d\0A\00", align 1
@TPI_INFO_B0 = common dso_local global i64 0, align 8
@TPI_INFO_EN = common dso_local global i32 0, align 4
@TPI_INFO_TRANS_RPT = common dso_local global i32 0, align 4
@TPI_INFO_TRANS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zx_hdmi*, %union.hdmi_infoframe*, i32)* @zx_hdmi_infoframe_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_infoframe_trans(%struct.zx_hdmi* %0, %union.hdmi_infoframe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zx_hdmi*, align 8
  %6 = alloca %union.hdmi_infoframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zx_hdmi* %0, %struct.zx_hdmi** %5, align 8
  store %union.hdmi_infoframe* %1, %union.hdmi_infoframe** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @ZX_HDMI_INFOFRAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.zx_hdmi*, %struct.zx_hdmi** %5, align 8
  %18 = load i64, i64* @TPI_INFO_FSEL, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @hdmi_writeb(%struct.zx_hdmi* %17, i64 %18, i32 %19)
  %21 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %6, align 8
  %22 = load i32, i32* @ZX_HDMI_INFOFRAME_SIZE, align 4
  %23 = call i32 @hdmi_infoframe_pack(%union.hdmi_infoframe* %21, i32* %16, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.zx_hdmi*, %struct.zx_hdmi** %5, align 8
  %28 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @DRM_DEV_ERROR(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.zx_hdmi*, %struct.zx_hdmi** %5, align 8
  %40 = load i64, i64* @TPI_INFO_B0, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %16, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hdmi_writeb(%struct.zx_hdmi* %39, i64 %43, i32 %47)
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.zx_hdmi*, %struct.zx_hdmi** %5, align 8
  %54 = load i32, i32* @TPI_INFO_EN, align 4
  %55 = load i32, i32* @TPI_INFO_TRANS_RPT, align 4
  %56 = load i32, i32* @TPI_INFO_TRANS_RPT, align 4
  %57 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.zx_hdmi*, %struct.zx_hdmi** %5, align 8
  %59 = load i32, i32* @TPI_INFO_EN, align 4
  %60 = load i32, i32* @TPI_INFO_TRANS_EN, align 4
  %61 = load i32, i32* @TPI_INFO_TRANS_EN, align 4
  %62 = call i32 @hdmi_writeb_mask(%struct.zx_hdmi* %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %52, %26
  %65 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hdmi_writeb(%struct.zx_hdmi*, i64, i32) #2

declare dso_local i32 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i32*, i32) #2

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #2

declare dso_local i32 @hdmi_writeb_mask(%struct.zx_hdmi*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
