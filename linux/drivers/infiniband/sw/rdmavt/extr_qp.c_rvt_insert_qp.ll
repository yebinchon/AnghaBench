; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_insert_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_insert_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_4__*, %struct.rvt_ibport** }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.rvt_ibport = type { i32* }
%struct.rvt_qp = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_dev_info*, %struct.rvt_qp*)* @rvt_insert_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_insert_qp(%struct.rvt_dev_info* %0, %struct.rvt_qp* %1) #0 {
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.rvt_ibport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %4, align 8
  %8 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %8, i32 0, i32 1
  %10 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %9, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %10, i64 %15
  %17 = load %struct.rvt_ibport*, %struct.rvt_ibport** %16, align 8
  store %struct.rvt_ibport* %17, %struct.rvt_ibport** %5, align 8
  %18 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %19 = call i32 @rvt_get_qp(%struct.rvt_qp* %18)
  %20 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load %struct.rvt_ibport*, %struct.rvt_ibport** %5, align 8
  %33 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %43 = call i32 @rcu_assign_pointer(i32 %41, %struct.rvt_qp* %42)
  br label %79

44:                                               ; preds = %2
  %45 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %46 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @hash_32(i64 %49, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %57 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %65 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %67 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %75 = call i32 @rcu_assign_pointer(i32 %73, %struct.rvt_qp* %74)
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @trace_rvt_qpinsert(%struct.rvt_qp* %76, i64 %77)
  br label %79

79:                                               ; preds = %44, %31
  %80 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %81 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @rvt_get_qp(%struct.rvt_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rvt_qp*) #1

declare dso_local i64 @hash_32(i64, i32) #1

declare dso_local i32 @trace_rvt_qpinsert(%struct.rvt_qp*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
