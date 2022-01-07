; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_modify_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_modify_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)* }
%struct.ib_wq_attr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_wq(%struct.ib_wq* %0, %struct.ib_wq_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_wq*, align 8
  %6 = alloca %struct.ib_wq_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_wq* %0, %struct.ib_wq** %5, align 8
  store %struct.ib_wq_attr* %1, %struct.ib_wq_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %10 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)*, i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)** %13, align 8
  %15 = icmp ne i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %21 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)*, i32 (%struct.ib_wq*, %struct.ib_wq_attr*, i32, i32*)** %24, align 8
  %26 = load %struct.ib_wq*, %struct.ib_wq** %5, align 8
  %27 = load %struct.ib_wq_attr*, %struct.ib_wq_attr** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.ib_wq* %26, %struct.ib_wq_attr* %27, i32 %28, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
