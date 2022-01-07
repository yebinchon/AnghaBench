; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_demod_abort_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_demod_abort_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { i32 }
%struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T = type { i32 }

@MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN = common dso_local global i32 0, align 4
@MXL_HYDRA_ABORT_TUNE_CMD = common dso_local global i32 0, align 4
@MXL_CMD_WRITE = common dso_local global i32 0, align 4
@MXL_HYDRA_CMD_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*)* @cfg_demod_abort_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_demod_abort_tune(%struct.mxl* %0) #0 {
  %2 = alloca %struct.mxl*, align 8
  %3 = alloca %struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mxl* %0, %struct.mxl** %2, align 8
  store i32 4, i32* %4, align 4
  %7 = load i32, i32* @MXL_HYDRA_OEM_MAX_CMD_BUFF_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.mxl*, %struct.mxl** %2, align 8
  %12 = getelementptr inbounds %struct.mxl, %struct.mxl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T, %struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @MXL_HYDRA_ABORT_TUNE_CMD, align 4
  %16 = load i32, i32* @MXL_CMD_WRITE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BUILD_HYDRA_CMD(i32 %15, i32 %16, i32 %17, %struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T* %3, i32* %10)
  %19 = load %struct.mxl*, %struct.mxl** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MXL_HYDRA_CMD_HEADER_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds i32, i32* %10, i64 0
  %24 = call i32 @send_command(%struct.mxl* %19, i32 %22, i32* %23)
  %25 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %25)
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_HYDRA_CMD(i32, i32, i32, %struct.MXL_HYDRA_DEMOD_ABORT_TUNE_T*, i32*) #2

declare dso_local i32 @send_command(%struct.mxl*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
