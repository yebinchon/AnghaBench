; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_iter_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc_iter = type { i32 }
%struct.msc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc_iter*, %struct.msc*)* @msc_iter_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msc_iter_remove(%struct.msc_iter* %0, %struct.msc* %1) #0 {
  %3 = alloca %struct.msc_iter*, align 8
  %4 = alloca %struct.msc*, align 8
  store %struct.msc_iter* %0, %struct.msc_iter** %3, align 8
  store %struct.msc* %1, %struct.msc** %4, align 8
  %5 = load %struct.msc*, %struct.msc** %4, align 8
  %6 = getelementptr inbounds %struct.msc, %struct.msc* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %9 = getelementptr inbounds %struct.msc_iter, %struct.msc_iter* %8, i32 0, i32 0
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.msc*, %struct.msc** %4, align 8
  %12 = getelementptr inbounds %struct.msc, %struct.msc* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.msc_iter*, %struct.msc_iter** %3, align 8
  %15 = call i32 @kfree(%struct.msc_iter* %14)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.msc_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
