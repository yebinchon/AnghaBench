; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_write_ksv_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_hdcp.c_msm_hdmi_hdcp_write_ksv_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_hdcp_ctrl = type { i32, i32, i32*, %struct.hdmi* }
%struct.hdmi = type { i32 }

@REG_HDMI_HDCP_SHA_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"HDCP_SHA_STATUS=%08x\00", align 1
@HDMI_HDCP_SHA_STATUS_COMP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"COMP_DONE\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@HDMI_HDCP_SHA_STATUS_BLOCK_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"BLOCK_DONE\00", align 1
@HDMI_HDCP_SHA_DATA_DONE = common dso_local global i32 0, align 4
@REG_HDMI_HDCP_SHA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_hdcp_ctrl*)* @msm_hdmi_hdcp_write_ksv_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_hdcp_write_ksv_fifo(%struct.hdmi_hdcp_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_hdcp_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdmi_hdcp_ctrl* %0, %struct.hdmi_hdcp_ctrl** %3, align 8
  %13 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %13, i32 0, i32 3
  %15 = load %struct.hdmi*, %struct.hdmi** %14, align 8
  store %struct.hdmi* %15, %struct.hdmi** %5, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 5, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %26 = load i32, i32* @REG_HDMI_HDCP_SHA_STATUS, align 4
  %27 = call i32 @hdmi_read(%struct.hdmi* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @HDMI_HDCP_SHA_STATUS_COMP_DONE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %119

42:                                               ; preds = %35
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %119

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @HDMI_HDCP_SHA_STATUS_BLOCK_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %119

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %58 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 64
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %66

65:                                               ; preds = %56
  store i32 64, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  %70 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %108, %66
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @HDMI_HDCP_SHA_DATA_DONE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %91, %80
  %99 = load i32, i32* @REG_HDMI_HDCP_SHA_DATA, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %10, align 4
  %101 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %102 = call i32 @msm_hdmi_hdcp_scm_wr(%struct.hdmi_hdcp_ctrl* %101, i32* %11, i32* %10, i32 1)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %2, align 4
  br label %119

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %76

111:                                              ; preds = %76
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.hdmi_hdcp_ctrl*, %struct.hdmi_hdcp_ctrl** %3, align 8
  %114 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, %struct.hdmi_hdcp_ctrl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %105, %50, %42, %40
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @msm_hdmi_hdcp_scm_wr(%struct.hdmi_hdcp_ctrl*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
