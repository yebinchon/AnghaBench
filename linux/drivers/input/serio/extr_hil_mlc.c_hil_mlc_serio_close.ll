; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hil_mlc.c_hil_mlc_serio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32*, %struct.hil_mlc_serio_map* }
%struct.hil_mlc_serio_map = type { %struct.hil_mlc* }
%struct.hil_mlc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @hil_mlc_serio_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_mlc_serio_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.hil_mlc_serio_map*, align 8
  %4 = alloca %struct.hil_mlc*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 1
  %7 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %6, align 8
  store %struct.hil_mlc_serio_map* %7, %struct.hil_mlc_serio_map** %3, align 8
  %8 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %3, align 8
  %9 = icmp eq %struct.hil_mlc_serio_map* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.hil_mlc_serio_map*, %struct.hil_mlc_serio_map** %3, align 8
  %13 = getelementptr inbounds %struct.hil_mlc_serio_map, %struct.hil_mlc_serio_map* %12, i32 0, i32 0
  %14 = load %struct.hil_mlc*, %struct.hil_mlc** %13, align 8
  store %struct.hil_mlc* %14, %struct.hil_mlc** %4, align 8
  %15 = load %struct.hil_mlc*, %struct.hil_mlc** %4, align 8
  %16 = icmp eq %struct.hil_mlc* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.serio*, %struct.serio** %2, align 8
  %20 = call i32 @serio_set_drvdata(%struct.serio* %19, i32* null)
  %21 = load %struct.serio*, %struct.serio** %2, align 8
  %22 = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
