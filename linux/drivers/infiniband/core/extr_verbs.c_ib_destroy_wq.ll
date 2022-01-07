; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_destroy_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { %struct.TYPE_4__*, i32, %struct.ib_pd*, %struct.ib_cq* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_pd = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_wq(%struct.ib_wq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_wq*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  store %struct.ib_wq* %0, %struct.ib_wq** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %8 = load %struct.ib_wq*, %struct.ib_wq** %4, align 8
  %9 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %8, i32 0, i32 3
  %10 = load %struct.ib_cq*, %struct.ib_cq** %9, align 8
  store %struct.ib_cq* %10, %struct.ib_cq** %6, align 8
  %11 = load %struct.ib_wq*, %struct.ib_wq** %4, align 8
  %12 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %11, i32 0, i32 2
  %13 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  store %struct.ib_pd* %13, %struct.ib_pd** %7, align 8
  %14 = load %struct.ib_wq*, %struct.ib_wq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %14, i32 0, i32 1
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.ib_wq*, %struct.ib_wq** %4, align 8
  %23 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.ib_wq*, %struct.ib_udata*)**
  %28 = load i32 (%struct.ib_wq*, %struct.ib_udata*)*, i32 (%struct.ib_wq*, %struct.ib_udata*)** %27, align 8
  %29 = load %struct.ib_wq*, %struct.ib_wq** %4, align 8
  %30 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %31 = call i32 %28(%struct.ib_wq* %29, %struct.ib_udata* %30)
  %32 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %33 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %32, i32 0, i32 0
  %34 = call i32 @atomic_dec(i32* %33)
  %35 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %36 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %35, i32 0, i32 0
  %37 = call i32 @atomic_dec(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
