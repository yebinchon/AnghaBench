; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_timf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_update_timf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Updated timing frequency: %d (default: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_update_timf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_update_timf(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %4 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %5 = call i32 @dib8000_read32(%struct.dib8000_state* %4, i32 435)
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  store i32 %5, i32* %3, align 4
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 16
  %11 = call i32 @dib8000_write_word(%struct.dib8000_state* %8, i32 29, i32 %10)
  %12 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 65535
  %15 = call i32 @dib8000_write_word(%struct.dib8000_state* %12, i32 30, i32 %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @dib8000_read32(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
