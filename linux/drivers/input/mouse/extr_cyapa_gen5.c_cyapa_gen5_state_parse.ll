; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_state_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_state_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@PIP_HID_BL_REPORT_ID = common dso_local global i64 0, align 8
@PIP_HID_APP_REPORT_ID = common dso_local global i64 0, align 8
@GEN5_APP_REPORT_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GEN5_APP_CONTRACT_REPORT_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GEN5_APP_REPORT_DESCRIPTOR_ID = common dso_local global i64 0, align 8
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN5_APP = common dso_local global i64 0, align 8
@GEN5_BL_REPORT_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GEN5_BL_REPORT_DESCRIPTOR_ID = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN5_BL = common dso_local global i64 0, align 8
@PIP_TOUCH_REPORT_ID = common dso_local global i64 0, align 8
@PIP_BTN_REPORT_ID = common dso_local global i64 0, align 8
@GEN5_OLD_PUSH_BTN_REPORT_ID = common dso_local global i64 0, align 8
@PIP_PUSH_BTN_REPORT_ID = common dso_local global i64 0, align 8
@PIP_WAKEUP_EVENT_REPORT_ID = common dso_local global i64 0, align 8
@PIP_BL_RESP_REPORT_ID = common dso_local global i64 0, align 8
@PIP_APP_RESP_REPORT_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64*, i32)* @cyapa_gen5_state_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_state_parse(%struct.cyapa* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64*, i64** %6, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %172

17:                                               ; preds = %11
  %18 = load i64, i64* @CYAPA_STATE_NO_DEVICE, align 8
  %19 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %20 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = call i32 @get_unaligned_le16(i64* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %17
  %32 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %33 = call i32 @gen5_idle_state_parse(%struct.cyapa* %32)
  br label %147

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PIP_HID_BL_REPORT_ID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PIP_HID_APP_REPORT_ID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %38
  %51 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = call i32 @gen5_hid_description_header_parse(%struct.cyapa* %51, i64* %52)
  br label %146

54:                                               ; preds = %44, %34
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @GEN5_APP_REPORT_DESCRIPTOR_SIZE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @GEN5_APP_CONTRACT_REPORT_DESCRIPTOR_SIZE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58, %54
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GEN5_APP_REPORT_DESCRIPTOR_ID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i64, i64* @CYAPA_GEN5, align 8
  %70 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %71 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* @CYAPA_STATE_GEN5_APP, align 8
  %73 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %74 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %145

75:                                               ; preds = %62, %58
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GEN5_BL_REPORT_DESCRIPTOR_SIZE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GEN5_BL_REPORT_DESCRIPTOR_ID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i64, i64* @CYAPA_GEN5, align 8
  %87 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %88 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @CYAPA_STATE_GEN5_BL, align 8
  %90 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %91 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %144

92:                                               ; preds = %79, %75
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PIP_TOUCH_REPORT_ID, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %122, label %98

98:                                               ; preds = %92
  %99 = load i64*, i64** %6, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PIP_BTN_REPORT_ID, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %122, label %104

104:                                              ; preds = %98
  %105 = load i64*, i64** %6, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GEN5_OLD_PUSH_BTN_REPORT_ID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load i64*, i64** %6, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PIP_PUSH_BTN_REPORT_ID, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i64*, i64** %6, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PIP_WAKEUP_EVENT_REPORT_ID, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116, %110, %104, %98, %92
  %123 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %124 = load i64*, i64** %6, align 8
  %125 = call i32 @gen5_report_data_header_parse(%struct.cyapa* %123, i64* %124)
  br label %143

126:                                              ; preds = %116
  %127 = load i64*, i64** %6, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PIP_BL_RESP_REPORT_ID, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i64*, i64** %6, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PIP_APP_RESP_REPORT_ID, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132, %126
  %139 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %140 = load i64*, i64** %6, align 8
  %141 = call i32 @gen5_cmd_resp_header_parse(%struct.cyapa* %139, i64* %140)
  br label %142

142:                                              ; preds = %138, %132
  br label %143

143:                                              ; preds = %142, %122
  br label %144

144:                                              ; preds = %143, %85
  br label %145

145:                                              ; preds = %144, %68
  br label %146

146:                                              ; preds = %145, %50
  br label %147

147:                                              ; preds = %146, %31
  %148 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %149 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CYAPA_GEN5, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %147
  %154 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %155 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %154, i32* null, i32* null, i32* null)
  %156 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %157 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CYAPA_STATE_GEN5_APP, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %153
  %162 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %163 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CYAPA_STATE_GEN5_BL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161, %153
  store i32 0, i32* %4, align 4
  br label %172

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %147
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %169, %167, %14
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i32 @gen5_idle_state_parse(%struct.cyapa*) #1

declare dso_local i32 @gen5_hid_description_header_parse(%struct.cyapa*, i64*) #1

declare dso_local i32 @gen5_report_data_header_parse(%struct.cyapa*, i64*) #1

declare dso_local i32 @gen5_cmd_resp_header_parse(%struct.cyapa*, i64*) #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
