; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_set_psr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_dmcu_set_psr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { i32 }
%struct.dce_dmcu = type { i32 }

@MASTER_COMM_CNTL_REG = common dso_local global i32 0, align 4
@MASTER_COMM_INTERRUPT = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE0 = common dso_local global i32 0, align 4
@PSR_ENABLE = common dso_local global i32 0, align 4
@PSR_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmcu*, i32, i32)* @dce_dmcu_set_psr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_dmcu_set_psr_enable(%struct.dmcu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmcu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_dmcu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dmcu* %0, %struct.dmcu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %13 = call %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu* %12)
  store %struct.dce_dmcu* %13, %struct.dce_dmcu** %7, align 8
  store i32 801, i32* %8, align 4
  store i32 100, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %14 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %15 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @REG_WAIT(i32 %14, i32 %15, i32 0, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %23 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %24 = load i32, i32* @PSR_ENABLE, align 4
  %25 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %28 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %29 = load i32, i32* @PSR_EXIT, align 4
  %30 = call i32 @REG_UPDATE(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %33 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %34 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 1)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp ule i32 %39, 100
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load %struct.dmcu*, %struct.dmcu** %4, align 8
  %43 = call i32 @dce_get_dmcu_psr_state(%struct.dmcu* %42, i64* %11)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %61

50:                                               ; preds = %46
  br label %56

51:                                               ; preds = %41
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %61

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %50
  %57 = call i32 @udelay(i32 10)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %38

61:                                               ; preds = %54, %49, %38
  br label %62

62:                                               ; preds = %61, %31
  ret void
}

declare dso_local %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu*) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dce_get_dmcu_psr_state(%struct.dmcu*, i64*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
