; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHANNEL_STATUS_PARAMETERS_UNKNOWN = common dso_local global i64 0, align 8
@FE_MM_W_CHANNEL_CONTEXT = common dso_local global i32 0, align 4
@fe_info = common dso_local global i64 0, align 8
@FE_MM_W_FE_INFO = common dso_local global i32 0, align 4
@OUT_MSG_FE_CHANNEL_SEARCH = common dso_local global i32 0, align 4
@OUT_MSG_FE_CHANNEL_TUNE = common dso_local global i32 0, align 4
@FE_MM_R_CHANNEL_SEARCH_STATE = common dso_local global i32 0, align 4
@FE_MM_R_CHANNEL_TUNE_STATE = common dso_local global i32 0, align 4
@FE_STATUS_DEMOD_SUCCESS = common dso_local global i32 0, align 4
@CT_DEMOD_STOP = common dso_local global i8* null, align 8
@FE_STATUS_LOCKED = common dso_local global i32 0, align 4
@FE_STATUS_TUNE_FAILED = common dso_local global i32 0, align 4
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_fw_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_tune(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib9000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  store %struct.dib9000_state* %9, %struct.dib9000_state** %3, align 8
  store i32 10, i32* %4, align 4
  %10 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %11 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CHANNEL_STATUS_PARAMETERS_UNKNOWN, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %98 [
    i32 129, label %20
    i32 128, label %48
  ]

20:                                               ; preds = %1
  %21 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %22 = call i32 @dib9000_fw_set_channel_head(%struct.dib9000_state* %21)
  %23 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %24 = load i32, i32* @FE_MM_W_CHANNEL_CONTEXT, align 4
  %25 = load i64, i64* @fe_info, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %23, i32 %24, i32* %26)
  %28 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %29 = load i32, i32* @FE_MM_W_FE_INFO, align 4
  %30 = load i64, i64* @fe_info, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %28, i32 %29, i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  %36 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %37 = load i32, i32* @OUT_MSG_FE_CHANNEL_SEARCH, align 4
  %38 = call i32 @dib9000_mbx_send(%struct.dib9000_state* %36, i32 %37, i32* null, i32 0)
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = call i32 @dib9000_fw_set_channel_union(%struct.dvb_frontend* %40)
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %43 = load i32, i32* @OUT_MSG_FE_CHANNEL_TUNE, align 4
  %44 = call i32 @dib9000_mbx_send(%struct.dib9000_state* %42, i32 %43, i32* null, i32 0)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %47 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %46, i32 0, i32 0
  store i32 128, i32* %47, align 8
  br label %100

48:                                               ; preds = %1
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %53 = load i32, i32* @FE_MM_R_CHANNEL_SEARCH_STATE, align 4
  %54 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %55 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %52, i32 %53, i32* %56, i32 1)
  br label %65

58:                                               ; preds = %48
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %60 = load i32, i32* @FE_MM_R_CHANNEL_TUNE_STATE, align 4
  %61 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %62 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %59, i32 %60, i32* %63, i32 1)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %67 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %89 [
    i32 0, label %72
    i32 -2, label %73
  ]

72:                                               ; preds = %65
  br label %97

73:                                               ; preds = %65
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @FE_STATUS_DEMOD_SUCCESS, align 4
  %78 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %79 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %88

80:                                               ; preds = %73
  %81 = load i8*, i8** @CT_DEMOD_STOP, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %84 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @FE_STATUS_LOCKED, align 4
  %86 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %87 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %76
  br label %97

89:                                               ; preds = %65
  %90 = load i32, i32* @FE_STATUS_TUNE_FAILED, align 4
  %91 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %92 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i8*, i8** @CT_DEMOD_STOP, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %96 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %89, %88, %72
  br label %100

98:                                               ; preds = %1
  %99 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %97, %45
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dib9000_fw_set_channel_head(%struct.dib9000_state*) #1

declare dso_local i32 @dib9000_risc_mem_write(%struct.dib9000_state*, i32, i32*) #1

declare dso_local i32 @dib9000_mbx_send(%struct.dib9000_state*, i32, i32*, i32) #1

declare dso_local i32 @dib9000_fw_set_channel_union(%struct.dvb_frontend*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
