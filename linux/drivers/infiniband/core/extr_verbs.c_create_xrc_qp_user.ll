; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_create_xrc_qp_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_create_xrc_qp_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_2__*, i32*, i32*, i32, i32*, %struct.ib_qp*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_2__*, i32, i32 }
%struct.ib_udata = type { i32 }

@__ib_shared_qp_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_qp*, %struct.ib_qp_init_attr*, %struct.ib_udata*)* @create_xrc_qp_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @create_xrc_qp_user(%struct.ib_qp* %0, %struct.ib_qp_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  store %struct.ib_qp* %9, %struct.ib_qp** %8, align 8
  %10 = load i32, i32* @__ib_shared_qp_event_handler, align 4
  %11 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 6
  store %struct.ib_qp* %13, %struct.ib_qp** %15, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 1
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %35 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %34, i32 0, i32 0
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %38 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.ib_qp* @__ib_open_qp(%struct.ib_qp* %37, i32 %40, i32 %43)
  store %struct.ib_qp* %44, %struct.ib_qp** %5, align 8
  %45 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %46 = call i64 @IS_ERR(%struct.ib_qp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  store %struct.ib_qp* %49, %struct.ib_qp** %4, align 8
  br label %57

50:                                               ; preds = %3
  %51 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %55 = call i32 @__ib_insert_xrcd_qp(%struct.TYPE_2__* %53, %struct.ib_qp* %54)
  %56 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  store %struct.ib_qp* %56, %struct.ib_qp** %4, align 8
  br label %57

57:                                               ; preds = %50, %48
  %58 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %58
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.ib_qp* @__ib_open_qp(%struct.ib_qp*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @__ib_insert_xrcd_qp(%struct.TYPE_2__*, %struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
