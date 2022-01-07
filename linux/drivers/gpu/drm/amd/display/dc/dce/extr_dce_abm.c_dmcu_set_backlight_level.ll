; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dmcu_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dmcu_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_abm = type { i32 }

@MASTER_COMM_CNTL_REG = common dso_local global i32 0, align 4
@MASTER_COMM_INTERRUPT = common dso_local global i32 0, align 4
@BL1_PWM_USER_LEVEL = common dso_local global i32 0, align 4
@MASTER_COMM_DATA_REG1 = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG = common dso_local global i32 0, align 4
@MASTER_COMM_CMD_REG_BYTE0 = common dso_local global i32 0, align 4
@MCP_BL_SET = common dso_local global i32 0, align 4
@BIOS_SCRATCH_2 = common dso_local global i32 0, align 4
@ATOM_S2_CURRENT_BL_LEVEL_MASK = common dso_local global i32 0, align 4
@ATOM_S2_CURRENT_BL_LEVEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_abm*, i32, i32, i32)* @dmcu_set_backlight_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmcu_set_backlight_level(%struct.dce_abm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dce_abm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dce_abm* %0, %struct.dce_abm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 65536
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 255, i32* %9, align 4
  br label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.dce_abm*, %struct.dce_abm** %5, align 8
  %21 = getelementptr inbounds %struct.dce_abm, %struct.dce_abm* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dce_abm_set_pipe(i32* %21, i32 %22)
  %24 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %25 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %26 = call i32 @REG_WAIT(i32 %24, i32 %25, i32 0, i32 1, i32 80000)
  %27 = load i32, i32* @BL1_PWM_USER_LEVEL, align 4
  %28 = load i32, i32* @BL1_PWM_USER_LEVEL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @REG_UPDATE(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* @MASTER_COMM_DATA_REG1, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @REG_WRITE(i32 %35, i32 %36)
  %38 = load i32, i32* @MASTER_COMM_CMD_REG, align 4
  %39 = load i32, i32* @MASTER_COMM_CMD_REG_BYTE0, align 4
  %40 = load i32, i32* @MCP_BL_SET, align 4
  %41 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %43 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %44 = call i32 @REG_UPDATE(i32 %42, i32 %43, i32 1)
  %45 = load i32, i32* @BIOS_SCRATCH_2, align 4
  %46 = call i32 @REG_READ(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @ATOM_S2_CURRENT_BL_LEVEL_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @ATOM_S2_CURRENT_BL_LEVEL_MASK, align 4
  %52 = load i32, i32* @ATOM_S2_CURRENT_BL_LEVEL_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ATOM_S2_CURRENT_BL_LEVEL_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @BIOS_SCRATCH_2, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @REG_WRITE(i32 %61, i32 %62)
  %64 = load i32, i32* @MASTER_COMM_CNTL_REG, align 4
  %65 = load i32, i32* @MASTER_COMM_INTERRUPT, align 4
  %66 = call i32 @REG_WAIT(i32 %64, i32 %65, i32 0, i32 1, i32 80000)
  ret void
}

declare dso_local i32 @dce_abm_set_pipe(i32*, i32) #1

declare dso_local i32 @REG_WAIT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
