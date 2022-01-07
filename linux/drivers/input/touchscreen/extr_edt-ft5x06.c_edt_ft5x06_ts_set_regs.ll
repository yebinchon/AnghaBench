; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_set_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt_ft5x06_ts_data = type { i32, %struct.edt_reg_addr }
%struct.edt_reg_addr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@WORK_REGISTER_THRESHOLD = common dso_local global i8* null, align 8
@WORK_REGISTER_REPORT_RATE = common dso_local global i8* null, align 8
@WORK_REGISTER_GAIN = common dso_local global i8* null, align 8
@WORK_REGISTER_OFFSET = common dso_local global i8* null, align 8
@NO_REGISTER = common dso_local global i8* null, align 8
@WORK_REGISTER_NUM_X = common dso_local global i8* null, align 8
@WORK_REGISTER_NUM_Y = common dso_local global i8* null, align 8
@M09_REGISTER_THRESHOLD = common dso_local global i8* null, align 8
@M09_REGISTER_GAIN = common dso_local global i8* null, align 8
@M09_REGISTER_OFFSET = common dso_local global i8* null, align 8
@M09_REGISTER_NUM_X = common dso_local global i8* null, align 8
@M09_REGISTER_NUM_Y = common dso_local global i8* null, align 8
@EV_REGISTER_THRESHOLD = common dso_local global i8* null, align 8
@EV_REGISTER_GAIN = common dso_local global i8* null, align 8
@EV_REGISTER_OFFSET_X = common dso_local global i8* null, align 8
@EV_REGISTER_OFFSET_Y = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edt_ft5x06_ts_data*)* @edt_ft5x06_ts_set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edt_ft5x06_ts_set_regs(%struct.edt_ft5x06_ts_data* %0) #0 {
  %2 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %3 = alloca %struct.edt_reg_addr*, align 8
  store %struct.edt_ft5x06_ts_data* %0, %struct.edt_ft5x06_ts_data** %2, align 8
  %4 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %5 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %4, i32 0, i32 1
  store %struct.edt_reg_addr* %5, %struct.edt_reg_addr** %3, align 8
  %6 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %7 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %100 [
    i32 132, label %9
    i32 131, label %34
    i32 130, label %34
    i32 129, label %59
    i32 128, label %84
  ]

9:                                                ; preds = %1
  %10 = load i8*, i8** @WORK_REGISTER_THRESHOLD, align 8
  %11 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %12 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @WORK_REGISTER_REPORT_RATE, align 8
  %14 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %15 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @WORK_REGISTER_GAIN, align 8
  %17 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %18 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @WORK_REGISTER_OFFSET, align 8
  %20 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %21 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @NO_REGISTER, align 8
  %23 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %24 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @NO_REGISTER, align 8
  %26 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %27 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @WORK_REGISTER_NUM_X, align 8
  %29 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %30 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @WORK_REGISTER_NUM_Y, align 8
  %32 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %33 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  br label %100

34:                                               ; preds = %1, %1
  %35 = load i8*, i8** @M09_REGISTER_THRESHOLD, align 8
  %36 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %37 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @NO_REGISTER, align 8
  %39 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %40 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @M09_REGISTER_GAIN, align 8
  %42 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %43 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @M09_REGISTER_OFFSET, align 8
  %45 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %46 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @NO_REGISTER, align 8
  %48 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %49 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @NO_REGISTER, align 8
  %51 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %52 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @M09_REGISTER_NUM_X, align 8
  %54 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %55 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @M09_REGISTER_NUM_Y, align 8
  %57 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %58 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  br label %100

59:                                               ; preds = %1
  %60 = load i8*, i8** @EV_REGISTER_THRESHOLD, align 8
  %61 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %62 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @EV_REGISTER_GAIN, align 8
  %64 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %65 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @NO_REGISTER, align 8
  %67 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %68 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @EV_REGISTER_OFFSET_X, align 8
  %70 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %71 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @EV_REGISTER_OFFSET_Y, align 8
  %73 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %74 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @NO_REGISTER, align 8
  %76 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %77 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @NO_REGISTER, align 8
  %79 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %80 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @NO_REGISTER, align 8
  %82 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %83 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  br label %100

84:                                               ; preds = %1
  %85 = load i8*, i8** @M09_REGISTER_THRESHOLD, align 8
  %86 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %87 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @M09_REGISTER_GAIN, align 8
  %89 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %90 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @M09_REGISTER_OFFSET, align 8
  %92 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %93 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @NO_REGISTER, align 8
  %95 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %96 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @NO_REGISTER, align 8
  %98 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %99 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %1, %84, %59, %34, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
