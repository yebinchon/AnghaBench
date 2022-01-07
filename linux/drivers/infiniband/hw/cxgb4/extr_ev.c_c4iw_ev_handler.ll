; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_c4iw_ev_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_c4iw_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_cq = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"unknown cqid 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_ev_handler(%struct.c4iw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c4iw_cq*, align 8
  %6 = alloca i64, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %8 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @xa_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.c4iw_cq* @xa_load(i32* %12, i32 %13)
  store %struct.c4iw_cq* %14, %struct.c4iw_cq** %5, align 8
  %15 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %16 = icmp ne %struct.c4iw_cq* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %2
  %18 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %19 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %22 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @xa_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %26 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %25, i32 0, i32 4
  %27 = call i32 @t4_clear_cq_armed(i32* %26)
  %28 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %29 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %28, i32 0, i32 2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %33 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %34, align 8
  %36 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %37 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %36, i32 0, i32 3
  %38 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %39 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(%struct.TYPE_2__* %37, i32 %41)
  %43 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %44 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %43, i32 0, i32 2
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %48 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %47, i32 0, i32 1
  %49 = call i64 @atomic_dec_and_test(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %17
  %52 = load %struct.c4iw_cq*, %struct.c4iw_cq** %5, align 8
  %53 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %52, i32 0, i32 0
  %54 = call i32 @wake_up(i32* %53)
  br label %55

55:                                               ; preds = %51, %17
  br label %63

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %60 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @xa_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %55
  ret i32 0
}

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local %struct.c4iw_cq* @xa_load(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @t4_clear_cq_armed(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
