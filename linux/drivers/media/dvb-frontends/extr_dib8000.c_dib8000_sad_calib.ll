; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_sad_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_sad_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib8000_state*)* @dib8000_sad_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_sad_calib(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  store i32 3, i32* %3, align 4
  %4 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %5 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 32912
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 2
  %12 = call i32 @dib8000_write_word(%struct.dib8000_state* %9, i32 922, i32 %11)
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %14 = call i32 @dib8000_write_word(%struct.dib8000_state* %13, i32 923, i32 2048)
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %16, 2
  %18 = or i32 %17, 1
  %19 = call i32 @dib8000_write_word(%struct.dib8000_state* %15, i32 922, i32 %18)
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = shl i32 %21, 2
  %23 = call i32 @dib8000_write_word(%struct.dib8000_state* %20, i32 922, i32 %22)
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %26 = call i32 @dib8000_write_word(%struct.dib8000_state* %25, i32 923, i32 0)
  %27 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %28 = call i32 @dib8000_write_word(%struct.dib8000_state* %27, i32 924, i32 776)
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 923, i32 1)
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %32 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 923, i32 0)
  br label %33

33:                                               ; preds = %24, %8
  %34 = call i32 @msleep(i32 1)
  ret i32 0
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
