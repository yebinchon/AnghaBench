; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_cmd_resp_header_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_cmd_resp_header_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i64* }

@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_BL_RESP_REPORT_ID = common dso_local global i64 0, align 8
@CYAPA_GEN5 = common dso_local global i8* null, align 8
@CYAPA_STATE_GEN5_BL = common dso_local global i8* null, align 8
@CYAPA_STATE_GEN5_APP = common dso_local global i8* null, align 8
@PIP_RESP_RSVD_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_RSVD_KEY = common dso_local global i64 0, align 8
@PIP_RESP_BL_SOP_OFFSET = common dso_local global i64 0, align 8
@PIP_SOP_KEY = common dso_local global i64 0, align 8
@PIP_EOP_KEY = common dso_local global i64 0, align 8
@PIP_APP_RESP_REPORT_ID = common dso_local global i64 0, align 8
@CYAPA_STATE_NO_DEVICE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64*)* @gen5_cmd_resp_header_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen5_cmd_resp_header_parse(%struct.cyapa* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %10 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %11, %struct.cyapa_pip_cmd_states** %6, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = call i32 @get_unaligned_le16(i64* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %17 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %18 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %16, i64* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  store i32 %34, i32* %3, align 4
  br label %138

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i8*, i8** @CYAPA_GEN5, align 8
  %48 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %49 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @CYAPA_STATE_GEN5_BL, align 8
  %51 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %52 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %60

53:                                               ; preds = %39
  %54 = load i8*, i8** @CYAPA_GEN5, align 8
  %55 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %56 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @CYAPA_STATE_GEN5_APP, align 8
  %58 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %59 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %46
  br label %137

61:                                               ; preds = %35
  %62 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %63 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %61
  %71 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %72 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @PIP_RESP_RSVD_OFFSET, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PIP_RESP_RSVD_KEY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %70
  %80 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %81 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @PIP_RESP_BL_SOP_OFFSET, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PIP_SOP_KEY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %79
  %89 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %90 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PIP_EOP_KEY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load i8*, i8** @CYAPA_GEN5, align 8
  %101 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %102 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @CYAPA_STATE_GEN5_BL, align 8
  %104 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %105 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  br label %136

106:                                              ; preds = %88, %79, %70, %61
  %107 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %108 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PIP_APP_RESP_REPORT_ID, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %106
  %116 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %6, align 8
  %117 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @PIP_RESP_RSVD_OFFSET, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PIP_RESP_RSVD_KEY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load i8*, i8** @CYAPA_GEN5, align 8
  %126 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %127 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @CYAPA_STATE_GEN5_APP, align 8
  %129 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %130 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %135

131:                                              ; preds = %115, %106
  %132 = load i8*, i8** @CYAPA_STATE_NO_DEVICE, align 8
  %133 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %134 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %124
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %60
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %33
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
