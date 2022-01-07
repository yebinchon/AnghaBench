; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_CfgCommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_CfgCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32, i32, i32, i32 }

@HI_RA_RAM_SRV_CFG_KEY__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_RST_KEY_ACT = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CFG_DIV__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CFG_BDL__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CFG_WUP__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CFG_ACT__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CFG_ACT_PWD_EXE = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CMD__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CMD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @HI_CfgCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HI_CfgCommand(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %5 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %4, i32 0, i32 4
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %8 = load i32, i32* @HI_RA_RAM_SRV_CFG_KEY__A, align 4
  %9 = load i32, i32* @HI_RA_RAM_SRV_RST_KEY_ACT, align 4
  %10 = call i32 @Write16(%struct.drxd_state* %7, i32 %8, i32 %9, i32 0)
  %11 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %12 = load i32, i32* @HI_RA_RAM_SRV_CFG_DIV__A, align 4
  %13 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %14 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Write16(%struct.drxd_state* %11, i32 %12, i32 %15, i32 0)
  %17 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %18 = load i32, i32* @HI_RA_RAM_SRV_CFG_BDL__A, align 4
  %19 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %20 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Write16(%struct.drxd_state* %17, i32 %18, i32 %21, i32 0)
  %23 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %24 = load i32, i32* @HI_RA_RAM_SRV_CFG_WUP__A, align 4
  %25 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %26 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Write16(%struct.drxd_state* %23, i32 %24, i32 %27, i32 0)
  %29 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %30 = load i32, i32* @HI_RA_RAM_SRV_CFG_ACT__A, align 4
  %31 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %32 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Write16(%struct.drxd_state* %29, i32 %30, i32 %33, i32 0)
  %35 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %36 = load i32, i32* @HI_RA_RAM_SRV_CFG_KEY__A, align 4
  %37 = load i32, i32* @HI_RA_RAM_SRV_RST_KEY_ACT, align 4
  %38 = call i32 @Write16(%struct.drxd_state* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %40 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HI_RA_RAM_SRV_CFG_ACT_PWD_EXE, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @HI_RA_RAM_SRV_CFG_ACT_PWD_EXE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %1
  %47 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %48 = load i32, i32* @HI_RA_RAM_SRV_CMD__A, align 4
  %49 = load i32, i32* @HI_RA_RAM_SRV_CMD_CONFIG, align 4
  %50 = call i32 @Write16(%struct.drxd_state* %47, i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %53 = load i32, i32* @HI_RA_RAM_SRV_CMD_CONFIG, align 4
  %54 = call i32 @HI_Command(%struct.drxd_state* %52, i32 %53, i32* null)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %57 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %56, i32 0, i32 4
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @HI_Command(%struct.drxd_state*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
