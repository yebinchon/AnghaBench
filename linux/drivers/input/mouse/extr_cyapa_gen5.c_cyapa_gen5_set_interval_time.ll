; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_set_interval_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_set_interval_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.pip_app_cmd_head = type { i32, i32, i32, i32, i64 }
%struct.gen5_app_set_parameter_data = type { i32, i32, i32 }

@CYAPA_TSG_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@GEN5_PARAMETER_ACT_INTERVL_SIZE = common dso_local global i32 0, align 4
@GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE = common dso_local global i32 0, align 4
@GEN5_PARAMETER_LP_INTRVL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_CMD_SET_PARAMETER = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32, i64)* @cyapa_gen5_set_interval_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_set_interval_time(%struct.cyapa* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pip_app_cmd_head*, align 8
  %9 = alloca %struct.gen5_app_set_parameter_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [7 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = bitcast i32* %21 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %24, %struct.pip_app_cmd_head** %8, align 8
  %25 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %26 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.gen5_app_set_parameter_data*
  store %struct.gen5_app_set_parameter_data* %28, %struct.gen5_app_set_parameter_data** %9, align 8
  store i32 36, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %36 [
    i32 130, label %30
    i32 129, label %32
    i32 128, label %34
  ]

30:                                               ; preds = %3
  %31 = load i32, i32* @GEN5_PARAMETER_ACT_INTERVL_SIZE, align 4
  store i32 %31, i32* %15, align 4
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* @GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE, align 4
  store i32 %33, i32* %15, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @GEN5_PARAMETER_LP_INTRVL_SIZE, align 4
  store i32 %35, i32* %15, align 4
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %102

39:                                               ; preds = %34, %32, %30
  %40 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %41 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %42 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %41, i32 0, i32 3
  %43 = call i32 @put_unaligned_le16(i32 %40, i32* %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sub nsw i32 4, %45
  %47 = sub nsw i32 %44, %46
  %48 = sub nsw i32 %47, 2
  %49 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %50 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %49, i32 0, i32 2
  %51 = call i32 @put_unaligned_le16(i32 %48, i32* %50)
  %52 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %53 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %54 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @GEN5_CMD_SET_PARAMETER, align 4
  %56 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %57 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.gen5_app_set_parameter_data*, %struct.gen5_app_set_parameter_data** %9, align 8
  %60 = getelementptr inbounds %struct.gen5_app_set_parameter_data, %struct.gen5_app_set_parameter_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.gen5_app_set_parameter_data*, %struct.gen5_app_set_parameter_data** %9, align 8
  %63 = getelementptr inbounds %struct.gen5_app_set_parameter_data, %struct.gen5_app_set_parameter_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.gen5_app_set_parameter_data*, %struct.gen5_app_set_parameter_data** %9, align 8
  %67 = getelementptr inbounds %struct.gen5_app_set_parameter_data, %struct.gen5_app_set_parameter_data* %66, i32 0, i32 2
  %68 = call i32 @put_unaligned_le32(i32 %65, i32* %67)
  store i32 28, i32* %14, align 4
  %69 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %72 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %73 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %69, i32* %21, i32 %70, i32* %71, i32* %14, i32 500, i32 %72, i32 0)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %39
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 6
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %88 = load i32, i32* @GEN5_CMD_SET_PARAMETER, align 4
  %89 = call i32 @VALID_CMD_RESP_HEADER(i32* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86, %81, %76, %39
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %16, align 4
  br label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ %98, %96 ]
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %102

101:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %102

102:                                              ; preds = %101, %99, %36
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_unaligned_le16(i32, i32*) #2

declare dso_local i32 @put_unaligned_le32(i32, i32*) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @VALID_CMD_RESP_HEADER(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
