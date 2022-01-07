; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dealloc_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dealloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { %struct.TYPE_4__*, %struct.ib_pd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_pd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_dealloc_fmr(%struct.ib_fmr* %0) #0 {
  %2 = alloca %struct.ib_fmr*, align 8
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_fmr* %0, %struct.ib_fmr** %2, align 8
  %5 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %6 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %5, i32 0, i32 1
  %7 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  store %struct.ib_pd* %7, %struct.ib_pd** %3, align 8
  %8 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %9 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ib_fmr*)**
  %14 = load i32 (%struct.ib_fmr*)*, i32 (%struct.ib_fmr*)** %13, align 8
  %15 = load %struct.ib_fmr*, %struct.ib_fmr** %2, align 8
  %16 = call i32 %14(%struct.ib_fmr* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
