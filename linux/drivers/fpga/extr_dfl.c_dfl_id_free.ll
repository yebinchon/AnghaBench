; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_id_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl.c_dfl_id_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DFL_ID_MAX = common dso_local global i32 0, align 4
@dfl_id_mutex = common dso_local global i32 0, align 4
@dfl_devs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dfl_id_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfl_id_free(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DFL_ID_MAX, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = call i32 @mutex_lock(i32* @dfl_id_mutex)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dfl_devs, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @idr_remove(i32* %15, i32 %16)
  %18 = call i32 @mutex_unlock(i32* @dfl_id_mutex)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
