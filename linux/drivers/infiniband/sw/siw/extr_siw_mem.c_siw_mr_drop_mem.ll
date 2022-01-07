; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_mr_drop_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_mr_drop_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_mr = type { %struct.siw_mem* }
%struct.siw_mem = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_mr_drop_mem(%struct.siw_mr* %0) #0 {
  %2 = alloca %struct.siw_mr*, align 8
  %3 = alloca %struct.siw_mem*, align 8
  %4 = alloca %struct.siw_mem*, align 8
  store %struct.siw_mr* %0, %struct.siw_mr** %2, align 8
  %5 = load %struct.siw_mr*, %struct.siw_mr** %2, align 8
  %6 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %5, i32 0, i32 0
  %7 = load %struct.siw_mem*, %struct.siw_mem** %6, align 8
  store %struct.siw_mem* %7, %struct.siw_mem** %3, align 8
  %8 = load %struct.siw_mem*, %struct.siw_mem** %3, align 8
  %9 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = call i32 (...) @smp_mb()
  %11 = load %struct.siw_mem*, %struct.siw_mem** %3, align 8
  %12 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.siw_mem*, %struct.siw_mem** %3, align 8
  %16 = getelementptr inbounds %struct.siw_mem, %struct.siw_mem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 8
  %19 = call %struct.siw_mem* @xa_erase(i32* %14, i32 %18)
  store %struct.siw_mem* %19, %struct.siw_mem** %4, align 8
  %20 = load %struct.siw_mem*, %struct.siw_mem** %4, align 8
  %21 = load %struct.siw_mem*, %struct.siw_mem** %3, align 8
  %22 = icmp ne %struct.siw_mem* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.siw_mem*, %struct.siw_mem** %3, align 8
  %26 = call i32 @siw_mem_put(%struct.siw_mem* %25)
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.siw_mem* @xa_erase(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @siw_mem_put(%struct.siw_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
