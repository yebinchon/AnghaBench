; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fpga_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fpga_manager*)* }

@ENOENT = common dso_local global i32 0, align 4
@FPGA_MGR_STATUS_OPERATION_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"reconfig operation error\0A\00", align 1
@FPGA_MGR_STATUS_CRC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"reconfig CRC error\0A\00", align 1
@FPGA_MGR_STATUS_INCOMPATIBLE_IMAGE_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"reconfig incompatible image\0A\00", align 1
@FPGA_MGR_STATUS_IP_PROTOCOL_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"reconfig IP protocol error\0A\00", align 1
@FPGA_MGR_STATUS_FIFO_OVERFLOW_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"reconfig fifo overflow error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @status_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fpga_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.fpga_manager* @to_fpga_manager(%struct.device* %11)
  store %struct.fpga_manager* %12, %struct.fpga_manager** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %14 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.fpga_manager*)*, i32 (%struct.fpga_manager*)** %16, align 8
  %18 = icmp ne i32 (%struct.fpga_manager*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %106

22:                                               ; preds = %3
  %23 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %24 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.fpga_manager*)*, i32 (%struct.fpga_manager*)** %26, align 8
  %28 = load %struct.fpga_manager*, %struct.fpga_manager** %8, align 8
  %29 = call i32 %27(%struct.fpga_manager* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FPGA_MGR_STATUS_OPERATION_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i64 @sprintf(i8* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %34, %22
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @FPGA_MGR_STATUS_CRC_ERR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i64 @sprintf(i8* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @FPGA_MGR_STATUS_INCOMPATIBLE_IMAGE_ERR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i64 @sprintf(i8* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %64, %59
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @FPGA_MGR_STATUS_IP_PROTOCOL_ERR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i64 @sprintf(i8* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %79, %74
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @FPGA_MGR_STATUS_FIFO_OVERFLOW_ERR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i64 @sprintf(i8* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %94, %89
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %19
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.fpga_manager* @to_fpga_manager(%struct.device*) #1

declare dso_local i64 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
