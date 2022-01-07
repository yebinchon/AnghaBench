; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_received_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_cec.c_hdmi_cec_received_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_data = type { i32, i32 }
%struct.cec_msg = type { i32, i32* }

@HDMI_CEC_RX_COUNT = common dso_local global i32 0, align 4
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@HDMI_CEC_RX_CMD_HEADER = common dso_local global i32 0, align 4
@HDMI_CEC_RX_COMMAND = common dso_local global i32 0, align 4
@HDMI_CEC_RX_OPERAND = common dso_local global i32 0, align 4
@HDMI_CEC_RX_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_core_data*)* @hdmi_cec_received_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_cec_received_msg(%struct.hdmi_core_data* %0) #0 {
  %2 = alloca %struct.hdmi_core_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_msg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_core_data* %0, %struct.hdmi_core_data** %2, align 8
  %7 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %8 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HDMI_CEC_RX_COUNT, align 4
  %11 = call i32 @hdmi_read_reg(i32 %9, i32 %10)
  %12 = and i32 %11, 255
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %100, %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 112
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %107

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %84, label %21

21:                                               ; preds = %17
  %22 = bitcast %struct.cec_msg* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 15
  %25 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %29 = sub nsw i32 %28, 2
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %33 = sub nsw i32 %32, 2
  %34 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %37 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HDMI_CEC_RX_CMD_HEADER, align 4
  %40 = call i32 @hdmi_read_reg(i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %45 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HDMI_CEC_RX_COMMAND, align 4
  %48 = call i32 @hdmi_read_reg(i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %48, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %73, %35
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load i32, i32* @HDMI_CEC_RX_OPERAND, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul i32 %59, 4
  %61 = add i32 %58, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %63 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @hdmi_read_reg(i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add i32 2, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %52

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %77, align 8
  %80 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %81 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cec_received_msg(i32 %82, %struct.cec_msg* %4)
  br label %84

84:                                               ; preds = %76, %17
  %85 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %86 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HDMI_CEC_RX_CONTROL, align 4
  %89 = call i32 @hdmi_write_reg(i32 %87, i32 %88, i32 1)
  br label %90

90:                                               ; preds = %98, %84
  %91 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %92 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HDMI_CEC_RX_CONTROL, align 4
  %95 = call i32 @hdmi_read_reg(i32 %93, i32 %94)
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 @udelay(i32 1)
  br label %90

100:                                              ; preds = %90
  %101 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %2, align 8
  %102 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HDMI_CEC_RX_COUNT, align 4
  %105 = call i32 @hdmi_read_reg(i32 %103, i32 %104)
  %106 = and i32 %105, 255
  store i32 %106, i32* %3, align 4
  br label %13

107:                                              ; preds = %13
  ret void
}

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cec_received_msg(i32, %struct.cec_msg*) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
