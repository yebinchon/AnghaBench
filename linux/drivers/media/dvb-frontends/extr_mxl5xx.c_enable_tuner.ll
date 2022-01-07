; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_enable_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_enable_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }
%struct.MXL_HYDRA_TUNER_CMD = type { i32, i32 }

@MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN = common dso_local global i32 0, align 4
@MXL_HYDRA_TUNER_ACTIVATE_CMD = common dso_local global i32 0, align 4
@MXL_CMD_WRITE = common dso_local global i32 0, align 4
@MXL_HYDRA_CMD_HEADER_SIZE = common dso_local global i32 0, align 4
@HYDRA_TUNER_ENABLE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tuner %u ready = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i32, i32)* @enable_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_tuner(%struct.mxl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.MXL_HYDRA_TUNER_CMD, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 8, i32* %10, align 4
  %16 = load i32, i32* @MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 10, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.MXL_HYDRA_TUNER_CMD, %struct.MXL_HYDRA_TUNER_CMD* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.MXL_HYDRA_TUNER_CMD, %struct.MXL_HYDRA_TUNER_CMD* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @MXL_HYDRA_TUNER_ACTIVATE_CMD, align 4
  %25 = load i32, i32* @MXL_CMD_WRITE, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @BUILD_HYDRA_CMD(i32 %24, i32 %25, i32 %26, %struct.MXL_HYDRA_TUNER_CMD* %9, i32* %19)
  %28 = load %struct.mxl*, %struct.mxl** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MXL_HYDRA_CMD_HEADER_SIZE, align 4
  %31 = add nsw i32 %29, %30
  %32 = getelementptr inbounds i32, i32* %19, i64 0
  %33 = call i32 @send_command(%struct.mxl* %28, i32 %31, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

38:                                               ; preds = %3
  %39 = load %struct.mxl*, %struct.mxl** %5, align 8
  %40 = load i32, i32* @HYDRA_TUNER_ENABLE_COMPLETE, align 4
  %41 = call i32 @read_register(%struct.mxl* %39, i32 %40, i32* %13)
  br label %42

42:                                               ; preds = %55, %38
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %47, %48
  %50 = and i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ false, %42 ], [ %52, %46 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  %56 = call i32 @msleep(i32 20)
  %57 = load %struct.mxl*, %struct.mxl** %5, align 8
  %58 = load i32, i32* @HYDRA_TUNER_ENABLE_COMPLETE, align 4
  %59 = call i32 @read_register(%struct.mxl* %57, i32 %58, i32* %13)
  br label %42

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

64:                                               ; preds = %60
  %65 = load %struct.mxl*, %struct.mxl** %5, align 8
  %66 = load i32, i32* @HYDRA_TUNER_ENABLE_COMPLETE, align 4
  %67 = call i32 @read_register(%struct.mxl* %65, i32 %66, i32* %13)
  %68 = load %struct.mxl*, %struct.mxl** %5, align 8
  %69 = getelementptr inbounds %struct.mxl, %struct.mxl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %72, %73
  %75 = and i32 %74, 1
  %76 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %75)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %64, %63, %36
  %78 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_HYDRA_CMD(i32, i32, i32, %struct.MXL_HYDRA_TUNER_CMD*, i32*) #2

declare dso_local i32 @send_command(%struct.mxl*, i32, i32*) #2

declare dso_local i32 @read_register(%struct.mxl*, i32, i32*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
