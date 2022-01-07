; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio_raw.c_serio_raw_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.serio_raw = type { i32, i32, i32, i32 }

@serio_raw_mutex = common dso_local global i32 0, align 4
@serio_raw_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_raw_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_raw_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.serio_raw*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.serio_raw* @serio_get_drvdata(%struct.serio* %4)
  store %struct.serio_raw* %5, %struct.serio_raw** %3, align 8
  %6 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %7 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %6, i32 0, i32 3
  %8 = call i32 @misc_deregister(i32* %7)
  %9 = call i32 @mutex_lock(i32* @serio_raw_mutex)
  %10 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %11 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %13 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %12, i32 0, i32 2
  %14 = call i32 @list_del_init(i32* %13)
  %15 = call i32 @mutex_unlock(i32* @serio_raw_mutex)
  %16 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %17 = call i32 @serio_raw_hangup(%struct.serio_raw* %16)
  %18 = load %struct.serio*, %struct.serio** %2, align 8
  %19 = call i32 @serio_close(%struct.serio* %18)
  %20 = load %struct.serio_raw*, %struct.serio_raw** %3, align 8
  %21 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %20, i32 0, i32 1
  %22 = load i32, i32* @serio_raw_free, align 4
  %23 = call i32 @kref_put(i32* %21, i32 %22)
  %24 = load %struct.serio*, %struct.serio** %2, align 8
  %25 = call i32 @serio_set_drvdata(%struct.serio* %24, i32* null)
  ret void
}

declare dso_local %struct.serio_raw* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @serio_raw_hangup(%struct.serio_raw*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
