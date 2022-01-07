; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_stop_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_stop_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.idma64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*)* @idma64_stop_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_stop_transfer(%struct.idma64_chan* %0) #0 {
  %2 = alloca %struct.idma64_chan*, align 8
  %3 = alloca %struct.idma64*, align 8
  store %struct.idma64_chan* %0, %struct.idma64_chan** %2, align 8
  %4 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %5 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.idma64* @to_idma64(i32 %8)
  store %struct.idma64* %9, %struct.idma64** %3, align 8
  %10 = load %struct.idma64*, %struct.idma64** %3, align 8
  %11 = load %struct.idma64_chan*, %struct.idma64_chan** %2, align 8
  %12 = call i32 @idma64_chan_stop(%struct.idma64* %10, %struct.idma64_chan* %11)
  ret void
}

declare dso_local %struct.idma64* @to_idma64(i32) #1

declare dso_local i32 @idma64_chan_stop(%struct.idma64*, %struct.idma64_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
