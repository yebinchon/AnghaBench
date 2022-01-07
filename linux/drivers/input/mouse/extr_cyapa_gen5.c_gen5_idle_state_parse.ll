; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_idle_state_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_gen5_idle_state_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32 }

@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PIP_RESP_LENGTH_OFFSET = common dso_local global i64 0, align 8
@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i32 0, align 4
@cyapa_sort_gen5_hid_descriptor_data = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_HID_BL_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_BL_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN5_BL = common dso_local global i32 0, align 4
@PIP_HID_APP_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_APP_MAX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN5_APP = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @gen5_idle_state_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen5_idle_state_parse(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %12 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %17 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %16, i32* null, i32* null, i32* null)
  %18 = mul nuw i64 4, %13
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %15, i32 0, i32 %19)
  %21 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %22 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %21, i32* %15, i32 3)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %32, %30 ]
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %116

35:                                               ; preds = %1
  %36 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %37 = getelementptr inbounds i32, i32* %15, i64 %36
  %38 = call i32 @get_unaligned_le16(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %115

42:                                               ; preds = %35
  %43 = load i32, i32* @CYAPA_GEN5, align 4
  %44 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %45 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %47 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %46, i32* null, i32* null, i32* null)
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %54 = load i32, i32* @cyapa_sort_gen5_hid_descriptor_data, align 4
  %55 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %51, i32* %52, i32 %53, i32* %15, i32* %7, i32 300, i32 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %116

60:                                               ; preds = %42
  %61 = load i64, i64* @PIP_RESP_LENGTH_OFFSET, align 8
  %62 = getelementptr inbounds i32, i32* %15, i64 %61
  %63 = call i32 @get_unaligned_le16(i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = getelementptr inbounds i32, i32* %15, i64 16
  %65 = call i32 @get_unaligned_le16(i32* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69, %60
  %74 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %75 = getelementptr inbounds i32, i32* %15, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PIP_HID_BL_REPORT_ID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @GEN5_BL_MAX_OUTPUT_LENGTH, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @CYAPA_STATE_GEN5_BL, align 4
  %85 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %86 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %114

87:                                               ; preds = %79, %73, %69
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %91, %87
  %96 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %97 = getelementptr inbounds i32, i32* %15, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PIP_HID_APP_REPORT_ID, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @GEN5_APP_MAX_OUTPUT_LENGTH, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @CYAPA_STATE_GEN5_APP, align 4
  %107 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %108 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %101, %95, %91
  %110 = load i32, i32* @CYAPA_STATE_NO_DEVICE, align 4
  %111 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %112 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %35
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %58, %33
  %117 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i32*, i32) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
