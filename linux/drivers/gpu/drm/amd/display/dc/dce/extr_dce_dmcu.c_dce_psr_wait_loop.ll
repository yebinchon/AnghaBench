; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_psr_wait_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_dmcu.c_dce_psr_wait_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmcu = type { i32, i32 }
%struct.dce_dmcu = type { i32 }
%union.dce_dmcu_psr_config_data_wait_loop_reg1 = type { i64 }
%struct.TYPE_2__ = type { i32 }

@MASTER_COMM_CNTL_REG = common dso_local global i32 0, align 4
@MASTER_COMM_INTERRUPT = common dso_local global i32 0, align 4
@MASTER_COMM_DATA_REG1 = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE0 = common dso_local global i32 0, align 4
@PSR_SET_WAITLOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmcu*, i32)* @dce_psr_wait_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_psr_wait_loop(%struct.dmcu* %0, i32 %1) #0 {
  %3 = alloca %struct.dmcu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce_dmcu*, align 8
  %6 = alloca %union.dce_dmcu_psr_config_data_wait_loop_reg1, align 8
  store %struct.dmcu* %0, %struct.dmcu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %8 = call %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu* %7)
  store %struct.dce_dmcu* %8, %struct.dce_dmcu** %5, align 8
  %9 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %10 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %17 = call i32 @dce_is_dmcu_initialized(%struct.dmcu* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %46

20:                                               ; preds = %15
  %21 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %22 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %23 = call i32 @REG_WAIT(i32 %21, i32 %22, i32 0, i32 1, i32 10000)
  %24 = bitcast %union.dce_dmcu_psr_config_data_wait_loop_reg1* %6 to i64*
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = bitcast %union.dce_dmcu_psr_config_data_wait_loop_reg1* %6 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %30 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dmcu*, %struct.dmcu** %3, align 8
  %32 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MASTER_COMM_DATA_REG1, align 4
  %35 = call i32 @REG(i32 %34)
  %36 = bitcast %union.dce_dmcu_psr_config_data_wait_loop_reg1* %6 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dm_write_reg(i32 %33, i32 %35, i64 %37)
  %39 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %40 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %41 = load i32, i32* @PSR_SET_WAITLOOP, align 4
  %42 = call i32 @REG_UPDATE(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %44 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %45 = call i32 @REG_UPDATE(i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %20, %19, %14
  ret void
}

declare dso_local %struct.dce_dmcu* @TO_DCE_DMCU(%struct.dmcu*) #1

declare dso_local i32 @dce_is_dmcu_initialized(%struct.dmcu*) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i64) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
