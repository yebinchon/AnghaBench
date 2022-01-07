; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_ResetCommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_HI_ResetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32 }

@HI_RA_RAM_SRV_RST_KEY__A = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_RST_KEY_ACT = common dso_local global i32 0, align 4
@HI_RA_RAM_SRV_CMD_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*)* @HI_ResetCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HI_ResetCommand(%struct.drxd_state* %0) #0 {
  %2 = alloca %struct.drxd_state*, align 8
  %3 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %2, align 8
  %4 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %5 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %8 = load i32, i32* @HI_RA_RAM_SRV_RST_KEY__A, align 4
  %9 = load i32, i32* @HI_RA_RAM_SRV_RST_KEY_ACT, align 4
  %10 = call i32 @Write16(%struct.drxd_state* %7, i32 %8, i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %15 = load i32, i32* @HI_RA_RAM_SRV_CMD_RESET, align 4
  %16 = call i32 @HI_Command(%struct.drxd_state* %14, i32 %15, i32* null)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.drxd_state*, %struct.drxd_state** %2, align 8
  %19 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = call i32 @msleep(i32 1)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @HI_Command(%struct.drxd_state*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
