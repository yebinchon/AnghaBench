; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_init_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_init_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { i8*, i8* }
%struct.rxe_qp = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.ib_qp_init_attr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_dev*, %struct.rxe_qp*, %struct.ib_qp_init_attr*)* @rxe_qp_init_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_qp_init_misc(%struct.rxe_dev* %0, %struct.rxe_qp* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.rxe_port*, align 8
  %8 = alloca i8*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %4, align 8
  store %struct.rxe_qp* %1, %struct.rxe_qp** %5, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %6, align 8
  %9 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %13 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %12, i32 0, i32 10
  store i32 %11, i32* %13, align 4
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ib_mtu_enum_to_int(i32 %20)
  %22 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %23 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  store %struct.rxe_port* %29, %struct.rxe_port** %7, align 8
  %30 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %31 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %59 [
    i32 128, label %33
    i32 129, label %46
  ]

33:                                               ; preds = %3
  %34 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %35 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.rxe_port*, %struct.rxe_port** %7, align 8
  %39 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %41 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %44 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  br label %65

46:                                               ; preds = %3
  %47 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %48 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.rxe_port*, %struct.rxe_port** %7, align 8
  %52 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %57 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %65

59:                                               ; preds = %3
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %63 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %46, %33
  %66 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %67 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %66, i32 0, i32 5
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %70 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %69, i32 0, i32 4
  %71 = call i32 @skb_queue_head_init(i32* %70)
  %72 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %73 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %72, i32 0, i32 3
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %76 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %75, i32 0, i32 2
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %79 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %78, i32 0, i32 1
  %80 = call i32 @atomic_set(i32* %79, i32 0)
  %81 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %82 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %81, i32 0, i32 0
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  ret void
}

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
