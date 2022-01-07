; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_calibrate_pwcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_calibrate_pwcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.pip_app_cmd_head = type { i32*, i32, i32, i32, i32 }

@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@PIP_CMD_CALIBRATE = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32)* @cyapa_pip_calibrate_pwcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_pip_calibrate_pwcs(%struct.cyapa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pip_app_cmd_head*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %12 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %11, i32* null, i32* null, i32* null)
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 32)
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %16 = bitcast i32* %15 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %16, %struct.pip_app_cmd_head** %6, align 8
  %17 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %18 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %6, align 8
  %19 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %18, i32 0, i32 4
  %20 = call i32 @put_unaligned_le16(i32 %17, i32* %19)
  %21 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %6, align 8
  %22 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %21, i32 0, i32 3
  %23 = call i32 @put_unaligned_le16(i32 30, i32* %22)
  %24 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %25 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %6, align 8
  %26 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PIP_CMD_CALIBRATE, align 4
  %28 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %6, align 8
  %29 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %6, align 8
  %32 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  store i32 24, i32* %9, align 4
  %35 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %39 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %35, i32* %36, i32 32, i32* %37, i32* %9, i32 5000, i32 %38, i32 1)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %2
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %44 = load i32, i32* @PIP_CMD_CALIBRATE, align 4
  %45 = call i32 @VALID_CMD_RESP_HEADER(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %49 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47, %42, %2
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %58, %56 ]
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @VALID_CMD_RESP_HEADER(i32*, i32) #1

declare dso_local i32 @PIP_CMD_COMPLETE_SUCCESS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
