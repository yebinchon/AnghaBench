; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_serdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_serdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_data = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_data*)* @sirf_serdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_serdev_close(%struct.sirf_data* %0) #0 {
  %2 = alloca %struct.sirf_data*, align 8
  store %struct.sirf_data* %0, %struct.sirf_data** %2, align 8
  %3 = load %struct.sirf_data*, %struct.sirf_data** %2, align 8
  %4 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.sirf_data*, %struct.sirf_data** %2, align 8
  %7 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.sirf_data*, %struct.sirf_data** %2, align 8
  %13 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @serdev_device_close(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.sirf_data*, %struct.sirf_data** %2, align 8
  %18 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @serdev_device_close(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
