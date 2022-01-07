; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_cmdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_cmdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dsi = type { i64 }
%struct.mipi_dsi_msg = type { i8*, i32, i32 }

@BTA = common dso_local global i32 0, align 4
@LONG_PACKET = common dso_local global i32 0, align 4
@SHORT_PACKET = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i64 0, align 8
@DATA_ID = common dso_local global i64 0, align 8
@DATA_0 = common dso_local global i64 0, align 8
@DATA_1 = common dso_local global i64 0, align 8
@DSI_CMDQ0 = common dso_local global i64 0, align 8
@DSI_CMDQ_SIZE = common dso_local global i64 0, align 8
@CMDQ_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dsi*, %struct.mipi_dsi_msg*)* @mtk_dsi_cmdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dsi_cmdq(%struct.mtk_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.mtk_dsi*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mtk_dsi* %0, %struct.mtk_dsi** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %13 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @MTK_DSI_HOST_IS_READ(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @BTA, align 4
  store i32 %23, i32* %6, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %26 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @LONG_PACKET, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SHORT_PACKET, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %37 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 3
  %45 = sdiv i32 %44, 4
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %47 = load i64, i64* @CONFIG, align 8
  %48 = load i64, i64* @DATA_ID, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @DATA_0, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @DATA_1, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %11, align 8
  %54 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %55 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %57, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %10, align 8
  br label %73

64:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %65 = load i64, i64* @CONFIG, align 8
  %66 = load i64, i64* @DATA_ID, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %64, %40
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %97, %73
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %77 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %87 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DSI_CMDQ0, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %93, %94
  %96 = call i32 @writeb(i8 signext %85, i64 %95)
  br label %97

97:                                               ; preds = %81
  %98 = load i64, i64* %12, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %12, align 8
  br label %74

100:                                              ; preds = %74
  %101 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %102 = load i64, i64* @DSI_CMDQ0, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @mtk_dsi_mask(%struct.mtk_dsi* %101, i64 %102, i64 %103, i32 %105)
  %107 = load %struct.mtk_dsi*, %struct.mtk_dsi** %3, align 8
  %108 = load i64, i64* @DSI_CMDQ_SIZE, align 8
  %109 = load i64, i64* @CMDQ_SIZE, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mtk_dsi_mask(%struct.mtk_dsi* %107, i64 %108, i64 %109, i32 %110)
  ret void
}

declare dso_local i64 @MTK_DSI_HOST_IS_READ(i32) #1

declare dso_local i32 @writeb(i8 signext, i64) #1

declare dso_local i32 @mtk_dsi_mask(%struct.mtk_dsi*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
