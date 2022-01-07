; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_update_timf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_update_timf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"updated timf_frequency: %d (default: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*)* @dib7000p_update_timf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_update_timf(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %4 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %5 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %4, i32 427)
  %6 = shl i32 %5, 16
  %7 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %8 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %7, i32 428)
  %9 = or i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 160
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %13 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 50
  %16 = sdiv i32 %11, %15
  %17 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %18 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 16
  %22 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %19, i32 23, i32 %21)
  %23 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 65535
  %26 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %23, i32 24, i32 %25)
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %28 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %31 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %35)
  ret void
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
