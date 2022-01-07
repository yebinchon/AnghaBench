; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_rc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_rc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.rvt_dev_info = type { %struct.TYPE_4__, %struct.rvt_ibport** }
%struct.TYPE_4__ = type { i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*, i64, i32)* }
%struct.rvt_ibport = type { i32 }

@s_timer = common dso_local global i32 0, align 4
@RVT_S_TIMER = common dso_local global i32 0, align 4
@qp = common dso_local global %struct.rvt_qp* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rvt_rc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_rc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rvt_ibport*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = ptrtoint %struct.rvt_qp* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @s_timer, align 4
  %11 = call %struct.rvt_qp* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.rvt_qp* %11, %struct.rvt_qp** %3, align 8
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %15)
  store %struct.rvt_dev_info* %16, %struct.rvt_dev_info** %4, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 3
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RVT_S_TIMER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %1
  %31 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %32 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %31, i32 0, i32 1
  %33 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %32, align 8
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %33, i64 %38
  %40 = load %struct.rvt_ibport*, %struct.rvt_ibport** %39, align 8
  store %struct.rvt_ibport* %40, %struct.rvt_ibport** %6, align 8
  %41 = load i32, i32* @RVT_S_TIMER, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %44 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.rvt_ibport*, %struct.rvt_ibport** %6, align 8
  %48 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %52 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %51, i32 0, i32 5
  %53 = call i32 @del_timer(i32* %52)
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %55 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %56 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @trace_rvt_rc_timeout(%struct.rvt_qp* %54, i64 %58)
  %60 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %61 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32 (%struct.rvt_qp*, i64, i32)*, i32 (%struct.rvt_qp*, i64, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.rvt_qp*, i64, i32)* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %30
  %66 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32 (%struct.rvt_qp*, i64, i32)*, i32 (%struct.rvt_qp*, i64, i32)** %68, align 8
  %70 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 %69(%struct.rvt_qp* %70, i64 %74, i32 1)
  br label %76

76:                                               ; preds = %65, %30
  %77 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %78 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32 (%struct.rvt_qp*)*, i32 (%struct.rvt_qp*)** %79, align 8
  %81 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %82 = call i32 %80(%struct.rvt_qp* %81)
  br label %83

83:                                               ; preds = %76, %1
  %84 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %85 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %88 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %87, i32 0, i32 2
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local %struct.rvt_qp* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @trace_rvt_rc_timeout(%struct.rvt_qp*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
