; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_set_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_set_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { i32 }
%struct.dce_abm = type { i32 }

@MASTER_COMM_CNTL_REG = common dso_local global i32 0, align 4
@MASTER_COMM_INTERRUPT = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE0 = common dso_local global i32 0, align 4
@MCP_ABM_LEVEL_SET = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abm*, i32)* @dce_abm_set_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_abm_set_level(%struct.abm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.abm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce_abm*, align 8
  store %struct.abm* %0, %struct.abm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.abm*, %struct.abm** %4, align 8
  %8 = call %struct.dce_abm* @TO_DCE_ABM(%struct.abm* %7)
  store %struct.dce_abm* %8, %struct.dce_abm** %6, align 8
  %9 = load %struct.abm*, %struct.abm** %4, align 8
  %10 = getelementptr inbounds %struct.abm, %struct.abm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %16 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %17 = call i32 @REG_WAIT(i32 %15, i32 %16, i32 0, i32 1, i32 80000)
  %18 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %19 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %20 = load i32, i32* @MCP_ABM_LEVEL_SET, align 4
  %21 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE2, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REG_UPDATE_2(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %25 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %26 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 1)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.dce_abm* @TO_DCE_ABM(%struct.abm*) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
