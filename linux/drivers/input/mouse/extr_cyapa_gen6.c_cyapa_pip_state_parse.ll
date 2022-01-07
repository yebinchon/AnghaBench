; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_pip_state_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_pip_state_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32 }
%struct.pip_fixed_info = type { i32, i32 }

@__const.cyapa_pip_state_parse.cmd = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@CYAPA_STATE_NO_DEVICE = common dso_local global i32 0, align 4
@PIP_DEEP_SLEEP_STATE_ON = common dso_local global i32 0, align 4
@cyapa_sort_pip_hid_descriptor_data = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_HID_BL_REPORT_ID = common dso_local global i32 0, align 4
@PIP_HID_APP_REPORT_ID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CYAPA_GEN6 = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN6_BL = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN6_APP = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN5_BL = common dso_local global i32 0, align 4
@CYAPA_STATE_GEN5_APP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_state_parse(%struct.cyapa* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.pip_fixed_info, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.cyapa_pip_state_parse.cmd to i8*), i64 8, i1 false)
  %17 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @CYAPA_STATE_NO_DEVICE, align 4
  %22 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %23 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %25 = load i32, i32* @PIP_DEEP_SLEEP_STATE_ON, align 4
  %26 = call i32 @cyapa_pip_deep_sleep(%struct.cyapa* %24, i32 %25)
  %27 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %28 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %27, i32* null, i32* null, i32* null)
  %29 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* @cyapa_sort_pip_hid_descriptor_data, align 4
  %33 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %30, i32* %31, i32 8, i32* %20, i32* %12, i32 300, i32 %32, i32 0)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

38:                                               ; preds = %3
  %39 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %40 = getelementptr inbounds i32, i32* %20, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PIP_HID_BL_REPORT_ID, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %13, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %47 = getelementptr inbounds i32, i32* %20, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PIP_HID_APP_REPORT_ID, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %44
  %57 = call i32 @memset(%struct.pip_fixed_info* %9, i32 0, i32 8)
  %58 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @cyapa_get_pip_fixed_info(%struct.cyapa* %58, %struct.pip_fixed_info* %9, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.pip_fixed_info, %struct.pip_fixed_info* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 155
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.pip_fixed_info, %struct.pip_fixed_info* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 11
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* @CYAPA_GEN6, align 4
  %75 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %76 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @CYAPA_STATE_GEN6_BL, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @CYAPA_STATE_GEN6_APP, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %86 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %110

87:                                               ; preds = %69, %65
  %88 = getelementptr inbounds %struct.pip_fixed_info, %struct.pip_fixed_info* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 145
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.pip_fixed_info, %struct.pip_fixed_info* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i32, i32* @CYAPA_GEN5, align 4
  %97 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %98 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @CYAPA_STATE_GEN5_BL, align 4
  br label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @CYAPA_STATE_GEN5_APP, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %108 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %91, %87
  br label %110

110:                                              ; preds = %109, %83
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %110, %63, %52, %36
  %112 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cyapa_pip_deep_sleep(%struct.cyapa*, i32) #3

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #3

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #3

declare dso_local i32 @memset(%struct.pip_fixed_info*, i32, i32) #3

declare dso_local i32 @cyapa_get_pip_fixed_info(%struct.cyapa*, %struct.pip_fixed_info*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
