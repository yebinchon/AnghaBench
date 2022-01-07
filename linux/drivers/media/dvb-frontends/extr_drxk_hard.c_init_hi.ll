; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_init_hi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_init_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*)* @init_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hi(%struct.drxk_state* %0) #0 {
  %2 = alloca %struct.drxk_state*, align 8
  store %struct.drxk_state* %0, %struct.drxk_state** %2, align 8
  %3 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %5 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 1
  %8 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %9 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %11 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %10, i32 0, i32 2
  store i32 38655, i32* %11, align 4
  %12 = load i32, i32* @SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE, align 4
  %13 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %14 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %16 = call i32 @hi_cfg_command(%struct.drxk_state* %15)
  ret i32 %16
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @hi_cfg_command(%struct.drxk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
