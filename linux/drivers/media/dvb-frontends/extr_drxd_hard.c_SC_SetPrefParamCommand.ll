; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SC_SetPrefParamCommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SC_SetPrefParamCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }

@SC_RA_RAM_CMD_ADDR__A = common dso_local global i32 0, align 4
@SC_RA_RAM_PARAM1__A = common dso_local global i32 0, align 4
@SC_RA_RAM_PARAM0__A = common dso_local global i32 0, align 4
@SC_RA_RAM_CMD_SET_PREF_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32, i32, i32)* @SC_SetPrefParamCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SC_SetPrefParamCommand(%struct.drxd_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drxd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %11 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  br label %13

13:                                               ; preds = %4
  %14 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %15 = call i32 @SC_WaitForReady(%struct.drxd_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %51

19:                                               ; preds = %13
  %20 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %21 = load i32, i32* @SC_RA_RAM_CMD_ADDR__A, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @Write16(%struct.drxd_state* %20, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %51

27:                                               ; preds = %19
  %28 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %29 = load i32, i32* @SC_RA_RAM_PARAM1__A, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @Write16(%struct.drxd_state* %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %51

35:                                               ; preds = %27
  %36 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %37 = load i32, i32* @SC_RA_RAM_PARAM0__A, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @Write16(%struct.drxd_state* %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %45 = load i32, i32* @SC_RA_RAM_CMD_SET_PREF_PARAM, align 4
  %46 = call i32 @SC_SendCommand(%struct.drxd_state* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49, %42, %34, %26, %18
  %52 = load %struct.drxd_state*, %struct.drxd_state** %5, align 8
  %53 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SC_WaitForReady(%struct.drxd_state*) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @SC_SendCommand(%struct.drxd_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
