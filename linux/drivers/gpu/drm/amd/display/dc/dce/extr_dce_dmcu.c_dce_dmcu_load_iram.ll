; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_load_iram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_load_iram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { i32 }
%struct.dce_dmcu = type { i32 }

@DMCU_RAM_ACCESS_CTRL = common dso_local global i32 0, align 4
@IRAM_HOST_ACCESS_EN = common dso_local global i32 0, align 4
@IRAM_WR_ADDR_AUTO_INC = common dso_local global i32 0, align 4
@DCI_MEM_PWR_STATUS = common dso_local global i32 0, align 4
@DMCU_IRAM_MEM_PWR_STATE = common dso_local global i32 0, align 4
@DMCU_IRAM_WR_CTRL = common dso_local global i32 0, align 4
@DMCU_IRAM_WR_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_dmcu_load_iram(%struct.dmcu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dmcu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce_dmcu*, align 8
  %10 = alloca i32, align 4
  store %struct.dmcu* %0, %struct.dmcu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %12 = call %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu* %11)
  store %struct.dce_dmcu* %12, %struct.dce_dmcu** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @DMCU_RAM_ACCESS_CTRL, align 4
  %14 = load i32, i32* @IRAM_HOST_ACCESS_EN, align 4
  %15 = load i32, i32* @IRAM_WR_ADDR_AUTO_INC, align 4
  %16 = call i32 @REG_UPDATE_2(i32 %13, i32 %14, i32 1, i32 %15, i32 1)
  %17 = load i32, i32* @DCI_MEM_PWR_STATUS, align 4
  %18 = load i32, i32* @DMCU_IRAM_MEM_PWR_STATE, align 4
  %19 = call i32 @REG_WAIT(i32 %17, i32 %18, i32 0, i32 2, i32 10)
  %20 = load i32, i32* @DMCU_IRAM_WR_CTRL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = trunc i32 %21 to i8
  %23 = call i32 @REG_WRITE(i32 %20, i8 signext %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %36, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @DMCU_IRAM_WR_DATA, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @REG_WRITE(i32 %29, i8 signext %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %24

39:                                               ; preds = %24
  %40 = load i32, i32* @DMCU_RAM_ACCESS_CTRL, align 4
  %41 = load i32, i32* @IRAM_HOST_ACCESS_EN, align 4
  %42 = load i32, i32* @IRAM_WR_ADDR_AUTO_INC, align 4
  %43 = call i32 @REG_UPDATE_2(i32 %40, i32 %41, i32 0, i32 %42, i32 0)
  ret i32 1
}

declare dso_local %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
