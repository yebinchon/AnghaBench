; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_get_pp_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_get_pp_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@EBADRQC = common dso_local global i32 0, align 4
@IDH_IRQ_GET_PP_SCLK = common dso_local global i32 0, align 4
@IDH_IRQ_GET_PP_MCLK = common dso_local global i32 0, align 4
@IDH_SUCCESS = common dso_local global i32 0, align 4
@NBIO = common dso_local global i32 0, align 4
@mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IDH_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s DPM request failed\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SCLK\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MCLK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i8*)* @xgpu_ai_get_pp_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpu_ai_get_pp_clk(%struct.amdgpu_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = call i32 @amdgim_is_hwperf(%struct.amdgpu_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EBADRQC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %102

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %27 [
    i32 128, label %23
    i32 129, label %25
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @IDH_IRQ_GET_PP_SCLK, align 4
  store i32 %24, i32* %9, align 4
  br label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @IDH_IRQ_GET_PP_MCLK, align 4
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBADRQC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %102

30:                                               ; preds = %25, %23
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @xgpu_ai_mailbox_trans_msg(%struct.amdgpu_device* %35, i32 %36, i32 0, i32 0, i32 0)
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = load i32, i32* @IDH_SUCCESS, align 4
  %40 = call i32 @xgpu_ai_poll_msg(%struct.amdgpu_device* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %83, label %43

43:                                               ; preds = %30
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %43
  %50 = load i32, i32* @NBIO, align 4
  %51 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW1, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %50, i32 0, i32 %51)
  %53 = call i32 @RREG32_NO_KIQ(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @strnlen(i8* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %49
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i32 @strcpy(i8* %69, i8* %78)
  br label %81

80:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %8, align 4
  br label %96

83:                                               ; preds = %43, %30
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %85 = load i32, i32* @IDH_FAIL, align 4
  %86 = call i32 @xgpu_ai_poll_msg(%struct.amdgpu_device* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 128
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %94 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %27, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @amdgim_is_hwperf(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xgpu_ai_mailbox_trans_msg(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @xgpu_ai_poll_msg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
