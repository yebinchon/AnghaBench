; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_zero_memory_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_zero_memory_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pstore*)* @zero_memory_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_memory_area(%struct.pstore* %0) #0 {
  %2 = alloca %struct.pstore*, align 8
  store %struct.pstore* %0, %struct.pstore** %2, align 8
  %3 = load %struct.pstore*, %struct.pstore** %2, align 8
  %4 = getelementptr inbounds %struct.pstore, %struct.pstore* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.pstore*, %struct.pstore** %2, align 8
  %7 = getelementptr inbounds %struct.pstore, %struct.pstore* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SECTOR_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = call i32 @memset(i32 %5, i32 0, i32 %12)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
