; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24116.c_cx24116_clone_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24116.c_cx24116_clone_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24116_state* }
%struct.cx24116_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @cx24116_clone_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx24116_clone_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.cx24116_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.cx24116_state*, %struct.cx24116_state** %5, align 8
  store %struct.cx24116_state* %6, %struct.cx24116_state** %3, align 8
  %7 = load %struct.cx24116_state*, %struct.cx24116_state** %3, align 8
  %8 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cx24116_state*, %struct.cx24116_state** %3, align 8
  %11 = getelementptr inbounds %struct.cx24116_state, %struct.cx24116_state* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
