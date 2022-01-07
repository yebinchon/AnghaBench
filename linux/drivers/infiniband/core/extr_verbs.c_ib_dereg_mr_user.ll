; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dereg_mr_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_dereg_mr_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { %struct.TYPE_4__*, i32, %struct.ib_sig_attrs*, %struct.ib_dm*, %struct.ib_pd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_sig_attrs = type { i32 }
%struct.ib_dm = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_dereg_mr_user(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_dm*, align 8
  %7 = alloca %struct.ib_sig_attrs*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %9 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %10 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %9, i32 0, i32 4
  %11 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  store %struct.ib_pd* %11, %struct.ib_pd** %5, align 8
  %12 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 3
  %14 = load %struct.ib_dm*, %struct.ib_dm** %13, align 8
  store %struct.ib_dm* %14, %struct.ib_dm** %6, align 8
  %15 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %16 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %15, i32 0, i32 2
  %17 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %16, align 8
  store %struct.ib_sig_attrs* %17, %struct.ib_sig_attrs** %7, align 8
  %18 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %19 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %18, i32 0, i32 1
  %20 = call i32 @rdma_restrack_del(i32* %19)
  %21 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %22 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.ib_mr*, %struct.ib_udata*)**
  %27 = load i32 (%struct.ib_mr*, %struct.ib_udata*)*, i32 (%struct.ib_mr*, %struct.ib_udata*)** %26, align 8
  %28 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %29 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %30 = call i32 %27(%struct.ib_mr* %28, %struct.ib_udata* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %2
  %34 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %35 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %34, i32 0, i32 0
  %36 = call i32 @atomic_dec(i32* %35)
  %37 = load %struct.ib_dm*, %struct.ib_dm** %6, align 8
  %38 = icmp ne %struct.ib_dm* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.ib_dm*, %struct.ib_dm** %6, align 8
  %41 = getelementptr inbounds %struct.ib_dm, %struct.ib_dm* %40, i32 0, i32 0
  %42 = call i32 @atomic_dec(i32* %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %7, align 8
  %45 = call i32 @kfree(%struct.ib_sig_attrs* %44)
  br label %46

46:                                               ; preds = %43, %2
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @rdma_restrack_del(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.ib_sig_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
