; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_to_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_to_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_qp_to_init(%struct.rxe_qp* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %4, align 8
  %5 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %24 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %30 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %34 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %36 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %40 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 4
  %42 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %43 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %47 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %50 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %54 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %57 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %2
  %61 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %62 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %66 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %69 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %73 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %2
  %76 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %77 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %80 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %82 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %86 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %88 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
