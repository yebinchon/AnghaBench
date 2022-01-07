; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_stop_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_rcfw_stop_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_rcfw_stop_irq(%struct.bnxt_qplib_rcfw* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnxt_qplib_rcfw* %0, %struct.bnxt_qplib_rcfw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %6, i32 0, i32 6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bnxt_qplib_is_chip_gen_p5(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %12, i32 0, i32 2
  %14 = call i32 @tasklet_disable(i32* %13)
  %15 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bnxt_qplib_ring_creq_db(i32 %17, i32 %21, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @synchronize_irq(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %38, i32 0, i32 2
  %40 = call i32 @tasklet_kill(i32* %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.bnxt_qplib_rcfw* %50)
  %52 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %3, align 8
  %53 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @bnxt_qplib_is_chip_gen_p5(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @bnxt_qplib_ring_creq_db(i32, i32, i32, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.bnxt_qplib_rcfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
