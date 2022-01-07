; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_alloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { %struct.ib_pd*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }
%struct.ib_pd = type { i32, %struct.TYPE_4__* }
%struct.ib_fmr_attr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fmr* @ib_alloc_fmr(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_fmr*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_fmr_attr*, align 8
  %8 = alloca %struct.ib_fmr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %7, align 8
  %9 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %10 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)**
  %15 = load %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)*, %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)** %14, align 8
  %16 = icmp ne %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_fmr* @ERR_PTR(i32 %19)
  store %struct.ib_fmr* %20, %struct.ib_fmr** %4, align 8
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %23 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)**
  %28 = load %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)*, %struct.ib_fmr* (%struct.ib_pd*, i32, %struct.ib_fmr_attr*)** %27, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %7, align 8
  %32 = call %struct.ib_fmr* %28(%struct.ib_pd* %29, i32 %30, %struct.ib_fmr_attr* %31)
  store %struct.ib_fmr* %32, %struct.ib_fmr** %8, align 8
  %33 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %34 = call i32 @IS_ERR(%struct.ib_fmr* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %21
  %37 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %38 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %41 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %40, i32 0, i32 1
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %43 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %43, i32 0, i32 0
  store %struct.ib_pd* %42, %struct.ib_pd** %44, align 8
  %45 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %46 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %36, %21
  %49 = load %struct.ib_fmr*, %struct.ib_fmr** %8, align 8
  store %struct.ib_fmr* %49, %struct.ib_fmr** %4, align 8
  br label %50

50:                                               ; preds = %48, %17
  %51 = load %struct.ib_fmr*, %struct.ib_fmr** %4, align 8
  ret %struct.ib_fmr* %51
}

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_fmr*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
