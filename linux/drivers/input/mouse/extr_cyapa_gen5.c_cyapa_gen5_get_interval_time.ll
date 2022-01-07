; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_get_interval_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_get_interval_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.pip_app_cmd_head = type { i32, i32, i32, i32, i64 }
%struct.gen5_app_get_parameter_data = type { i64 }

@CYAPA_TSG_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@GEN5_PARAMETER_ACT_INTERVL_SIZE = common dso_local global i64 0, align 8
@GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE = common dso_local global i64 0, align 8
@GEN5_PARAMETER_LP_INTRVL_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_CMD_GET_PARAMETER = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64*)* @cyapa_gen5_get_interval_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_get_interval_time(%struct.cyapa* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pip_app_cmd_head*, align 8
  %9 = alloca %struct.gen5_app_get_parameter_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [11 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %20 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @CYAPA_TSG_MAX_CMD_SIZE, align 4
  %25 = call i32 @memset(i64* %23, i32 0, i32 %24)
  %26 = bitcast i64* %23 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %26, %struct.pip_app_cmd_head** %8, align 8
  %27 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %28 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.gen5_app_get_parameter_data*
  store %struct.gen5_app_get_parameter_data* %30, %struct.gen5_app_get_parameter_data** %9, align 8
  store i32 32, i32* %12, align 4
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %6, align 8
  switch i64 %32, label %39 [
    i64 130, label %33
    i64 129, label %35
    i64 128, label %37
  ]

33:                                               ; preds = %3
  %34 = load i64, i64* @GEN5_PARAMETER_ACT_INTERVL_SIZE, align 8
  store i64 %34, i64* %15, align 8
  br label %42

35:                                               ; preds = %3
  %36 = load i64, i64* @GEN5_PARAMETER_ACT_LFT_INTERVL_SIZE, align 8
  store i64 %36, i64* %15, align 8
  br label %42

37:                                               ; preds = %3
  %38 = load i64, i64* @GEN5_PARAMETER_LP_INTRVL_SIZE, align 8
  store i64 %38, i64* %15, align 8
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %114

42:                                               ; preds = %37, %35, %33
  %43 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %44 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %45 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %44, i32 0, i32 3
  %46 = call i32 @put_unaligned_le16(i32 %43, i32* %45)
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %47, 2
  %49 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %50 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %49, i32 0, i32 2
  %51 = call i32 @put_unaligned_le16(i32 %48, i32* %50)
  %52 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %53 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %54 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @GEN5_CMD_GET_PARAMETER, align 4
  %56 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %8, align 8
  %57 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.gen5_app_get_parameter_data*, %struct.gen5_app_get_parameter_data** %9, align 8
  %60 = getelementptr inbounds %struct.gen5_app_get_parameter_data, %struct.gen5_app_get_parameter_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 88, i32* %14, align 4
  %61 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds [11 x i64], [11 x i64]* %13, i64 0, i64 0
  %64 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %65 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %61, i64* %23, i32 %62, i64* %63, i32* %14, i32 500, i32 %64, i32 0)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %42
  %69 = getelementptr inbounds [11 x i64], [11 x i64]* %13, i64 0, i64 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds [11 x i64], [11 x i64]* %13, i64 0, i64 6
  %75 = load i64, i64* %74, align 16
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [11 x i64], [11 x i64]* %13, i64 0, i64 0
  %79 = load i32, i32* @GEN5_CMD_GET_PARAMETER, align 4
  %80 = call i32 @VALID_CMD_RESP_HEADER(i64* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77, %73, %68, %42
  %83 = load i32, i32* %18, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  br label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %86, %85 ], [ %89, %87 ]
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %114

92:                                               ; preds = %77
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %93

93:                                               ; preds = %105, %92
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i64, i64* %17, align 8
  %99 = mul nsw i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 255, %100
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %16, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %16, align 8
  br label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %17, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %17, align 8
  br label %93

108:                                              ; preds = %93
  %109 = getelementptr inbounds [11 x i64], [11 x i64]* %13, i64 0, i64 7
  %110 = call i64 @get_unaligned_le16(i64* %109)
  %111 = load i64, i64* %16, align 8
  %112 = and i64 %110, %111
  %113 = load i64*, i64** %7, align 8
  store i64 %112, i64* %113, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %114

114:                                              ; preds = %108, %90, %39
  %115 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @put_unaligned_le16(i32, i32*) #2

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i64*, i32, i64*, i32*, i32, i32, i32) #2

declare dso_local i32 @VALID_CMD_RESP_HEADER(i64*, i32) #2

declare dso_local i64 @get_unaligned_le16(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
