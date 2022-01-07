; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_alloc_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_alloc_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_rq = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_udata = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_alloc_rq(%struct.rvt_rq* %0, i64 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_rq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  store %struct.rvt_rq* %0, %struct.rvt_rq** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %10 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %11 = icmp ne %struct.ib_udata* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = add i64 4, %13
  %15 = call %struct.TYPE_5__* @vmalloc_user(i64 %14)
  %16 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %17 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %16, i32 0, i32 1
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %77

23:                                               ; preds = %12
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_4__* @kzalloc_node(i32 16, i32 %24, i32 %25)
  %27 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %28 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %27, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %30 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %77

34:                                               ; preds = %23
  %35 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %36 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %41 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %39, i32* %43, align 4
  br label %66

44:                                               ; preds = %4
  %45 = load i64, i64* %7, align 8
  %46 = add i64 4, %45
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.TYPE_4__* @vzalloc_node(i64 %46, i32 %47)
  %49 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %50 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %49, i32 0, i32 0
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %52 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %77

56:                                               ; preds = %44
  %57 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %58 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %63 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %34
  %67 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %68 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %73 = getelementptr inbounds %struct.rvt_rq, %struct.rvt_rq* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_init(i32* %75)
  store i32 0, i32* %5, align 4
  br label %82

77:                                               ; preds = %55, %33, %22
  %78 = load %struct.rvt_rq*, %struct.rvt_rq** %6, align 8
  %79 = call i32 @rvt_free_rq(%struct.rvt_rq* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_5__* @vmalloc_user(i64) #1

declare dso_local %struct.TYPE_4__* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @vzalloc_node(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rvt_free_rq(%struct.rvt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
