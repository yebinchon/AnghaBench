; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_pd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pd*, %struct.ib_udata*)* @rxe_dealloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_dealloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.rxe_pd*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %6 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %7 = call %struct.rxe_pd* @to_rpd(%struct.ib_pd* %6)
  store %struct.rxe_pd* %7, %struct.rxe_pd** %5, align 8
  %8 = load %struct.rxe_pd*, %struct.rxe_pd** %5, align 8
  %9 = call i32 @rxe_drop_ref(%struct.rxe_pd* %8)
  ret void
}

declare dso_local %struct.rxe_pd* @to_rpd(%struct.ib_pd*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
