; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* }
%struct.ib_qp_attr = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.ib_qp_init_attr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %9 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %10 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %14 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)*, i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)** %21, align 8
  %23 = icmp ne i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)*, i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)** %29, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %37 = call i32 %30(i32 %33, %struct.ib_qp_attr* %34, i32 %35, %struct.ib_qp_init_attr* %36)
  br label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %24
  %42 = phi i32 [ %37, %24 ], [ %40, %38 ]
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
