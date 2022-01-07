; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_do_hdmi_hw_aud_set_ncts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_do_hdmi_hw_aud_set_ncts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_hdmi = type { i32 }

@NCTS_BYTES = common dso_local global i32 0, align 4
@GRL_NCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_hdmi*, i32, i32)* @do_hdmi_hw_aud_set_ncts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hdmi_hw_aud_set_ncts(%struct.mtk_hdmi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mtk_hdmi* %0, %struct.mtk_hdmi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @NCTS_BYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %15 = load i32, i32* @GRL_NCTS, align 4
  %16 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %14, i32 %15, i8 zeroext 0)
  %17 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %18 = load i32, i32* @GRL_NCTS, align 4
  %19 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %17, i32 %18, i8 zeroext 0)
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %21 = load i32, i32* @GRL_NCTS, align 4
  %22 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %20, i32 %21, i8 zeroext 0)
  %23 = trunc i64 %11 to i32
  %24 = call i32 @memset(i8* %13, i32 0, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %28, i8* %29, align 16
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %38, i8* %39, align 2
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %5, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 %47, i8* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = lshr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, i8* %13, i64 6
  store i8 %56, i8* %57, align 2
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %3
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @NCTS_BYTES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %4, align 8
  %64 = load i32, i32* @GRL_NCTS, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @mtk_hdmi_write(%struct.mtk_hdmi* %63, i32 %64, i8 zeroext %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mtk_hdmi_write(%struct.mtk_hdmi*, i32, i8 zeroext) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
