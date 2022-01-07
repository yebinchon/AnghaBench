; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_v2_wait_for_credit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_v2_wait_for_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.altera_cvp_conf* }
%struct.altera_cvp_conf = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@V2_CREDIT_TIMEOUT_US = common dso_local global i32 0, align 4
@V2_CHECK_CREDIT_US = common dso_local global i32 0, align 4
@VSE_CVP_TX_CREDITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error reading CVP Credit Register\0A\00", align 1
@ALTERA_CVP_V2_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"CE Bit error credit reg[0x%x]:sent[0x%x]\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Timeout waiting for credit\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, i32)* @altera_cvp_v2_wait_for_credit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_cvp_v2_wait_for_credit(%struct.fpga_manager* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpga_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.altera_cvp_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.fpga_manager* %0, %struct.fpga_manager** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @V2_CREDIT_TIMEOUT_US, align 4
  %11 = load i32, i32* @V2_CHECK_CREDIT_US, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %14 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %13, i32 0, i32 0
  %15 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %14, align 8
  store %struct.altera_cvp_conf* %15, %struct.altera_cvp_conf** %7, align 8
  br label %16

16:                                               ; preds = %62, %2
  %17 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %18 = load i32, i32* @VSE_CVP_TX_CREDITS, align 4
  %19 = call i32 @altera_read_config_byte(%struct.altera_cvp_conf* %17, i32 %18, i64* %9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %24 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %32 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %74

37:                                               ; preds = %29
  %38 = load %struct.fpga_manager*, %struct.fpga_manager** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ALTERA_CVP_V2_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @altera_cvp_chk_error(%struct.fpga_manager* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %47 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %52 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %53)
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %37
  %58 = load i32, i32* @V2_CHECK_CREDIT_US, align 4
  %59 = load i32, i32* @V2_CHECK_CREDIT_US, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @usleep_range(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %16, label %66

66:                                               ; preds = %62
  %67 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %7, align 8
  %68 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %45, %36, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @altera_read_config_byte(%struct.altera_cvp_conf*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @altera_cvp_chk_error(%struct.fpga_manager*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
