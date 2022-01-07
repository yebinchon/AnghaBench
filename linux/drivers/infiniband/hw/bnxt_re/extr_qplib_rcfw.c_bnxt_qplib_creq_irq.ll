; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_creq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_creq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_rcfw = type { i32, %struct.bnxt_qplib_hwq }
%struct.bnxt_qplib_hwq = type { i64, i32 }
%struct.creq_base = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnxt_qplib_creq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_creq_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %6 = alloca %struct.bnxt_qplib_hwq*, align 8
  %7 = alloca %struct.creq_base**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bnxt_qplib_rcfw*
  store %struct.bnxt_qplib_rcfw* %10, %struct.bnxt_qplib_rcfw** %5, align 8
  %11 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %11, i32 0, i32 1
  store %struct.bnxt_qplib_hwq* %12, %struct.bnxt_qplib_hwq** %6, align 8
  %13 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bnxt_qplib_hwq*, %struct.bnxt_qplib_hwq** %6, align 8
  %17 = call i32 @HWQ_CMP(i32 %15, %struct.bnxt_qplib_hwq* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.bnxt_qplib_hwq, %struct.bnxt_qplib_hwq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.creq_base**
  store %struct.creq_base** %22, %struct.creq_base*** %7, align 8
  %23 = load %struct.creq_base**, %struct.creq_base*** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @get_creq_pg(i32 %24)
  %26 = getelementptr inbounds %struct.creq_base*, %struct.creq_base** %23, i64 %25
  %27 = load %struct.creq_base*, %struct.creq_base** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @get_creq_idx(i32 %28)
  %30 = getelementptr inbounds %struct.creq_base, %struct.creq_base* %27, i64 %29
  %31 = call i32 @prefetch(%struct.creq_base* %30)
  %32 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %32, i32 0, i32 0
  %34 = call i32 @tasklet_schedule(i32* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @HWQ_CMP(i32, %struct.bnxt_qplib_hwq*) #1

declare dso_local i32 @prefetch(%struct.creq_base*) #1

declare dso_local i64 @get_creq_pg(i32) #1

declare dso_local i64 @get_creq_idx(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
