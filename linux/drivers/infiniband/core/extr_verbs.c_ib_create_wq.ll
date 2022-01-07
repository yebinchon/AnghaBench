; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_pd = type { i32, %struct.TYPE_5__* }
%struct.ib_wq_init_attr = type { %struct.TYPE_6__*, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_wq* @ib_create_wq(%struct.ib_pd* %0, %struct.ib_wq_init_attr* %1) #0 {
  %3 = alloca %struct.ib_wq*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_wq_init_attr*, align 8
  %6 = alloca %struct.ib_wq*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_wq_init_attr* %1, %struct.ib_wq_init_attr** %5, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)*, %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)** %11, align 8
  %13 = icmp ne %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_wq* @ERR_PTR(i32 %16)
  store %struct.ib_wq* %17, %struct.ib_wq** %3, align 8
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)*, %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)** %23, align 8
  %25 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %26 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %27 = call %struct.ib_wq* %24(%struct.ib_pd* %25, %struct.ib_wq_init_attr* %26, i32* null)
  store %struct.ib_wq* %27, %struct.ib_wq** %6, align 8
  %28 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %29 = call i32 @IS_ERR(%struct.ib_wq* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %73, label %31

31:                                               ; preds = %18
  %32 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %36 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %41 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %46 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %51 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %50, i32 0, i32 4
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %53 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %56 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %55, i32 0, i32 3
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %58 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %59 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %58, i32 0, i32 2
  store %struct.ib_pd* %57, %struct.ib_pd** %59, align 8
  %60 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %61 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %63 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %66 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @atomic_inc(i32* %68)
  %70 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %71 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %70, i32 0, i32 0
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  br label %73

73:                                               ; preds = %31, %18
  %74 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  store %struct.ib_wq* %74, %struct.ib_wq** %3, align 8
  br label %75

75:                                               ; preds = %73, %14
  %76 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  ret %struct.ib_wq* %76
}

declare dso_local %struct.ib_wq* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_wq*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
