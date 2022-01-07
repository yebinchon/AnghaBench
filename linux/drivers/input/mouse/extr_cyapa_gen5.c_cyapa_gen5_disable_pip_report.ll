; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_disable_pip_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_disable_pip_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.pip_app_cmd_head = type { i32*, i32, i32, i32, i32 }

@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@GEN5_CMD_SET_PARAMETER = common dso_local global i32 0, align 4
@GEN5_PARAMETER_DISABLE_PIP_REPORT = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen5_disable_pip_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_disable_pip_report(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.pip_app_cmd_head*, align 8
  %5 = alloca [10 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 40)
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %12 = bitcast i32* %11 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %12, %struct.pip_app_cmd_head** %4, align 8
  %13 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %14 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %15 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %14, i32 0, i32 4
  %16 = call i32 @put_unaligned_le16(i32 %13, i32* %15)
  %17 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %18 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %17, i32 0, i32 3
  %19 = call i32 @put_unaligned_le16(i32 38, i32* %18)
  %20 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %21 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %22 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @GEN5_CMD_SET_PARAMETER, align 4
  %24 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %25 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @GEN5_PARAMETER_DISABLE_PIP_REPORT, align 4
  %27 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %28 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %32 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %4, align 8
  %36 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 1, i32* %38, align 4
  store i32 28, i32* %7, align 4
  %39 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %42 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %43 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %39, i32* %40, i32 40, i32* %41, i32* %7, i32 500, i32 %42, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %1
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GEN5_PARAMETER_DISABLE_PIP_REPORT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* @GEN5_CMD_SET_PARAMETER, align 4
  %54 = call i32 @VALID_CMD_RESP_HEADER(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %56, %51, %46, %1
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ %64, %63 ], [ %67, %65 ]
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @VALID_CMD_RESP_HEADER(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
