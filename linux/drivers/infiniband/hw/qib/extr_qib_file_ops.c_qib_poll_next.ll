; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_poll_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_poll_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 (i32, i32, i32)*, i64 (%struct.qib_ctxtdata.0*)* }
%struct.qib_ctxtdata.0 = type opaque
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }

@QIB_CTXT_WAITING_RCV = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, %struct.file*, %struct.poll_table_struct*)* @qib_poll_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_poll_next(%struct.qib_ctxtdata* %0, %struct.file* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca %struct.qib_ctxtdata*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %6, align 8
  %9 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %10 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %9, i32 0, i32 4
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %14 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %13, i32 0, i32 3
  %15 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %16 = call i32 @poll_wait(%struct.file* %12, i32* %14, %struct.poll_table_struct* %15)
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 2
  %22 = load i64 (%struct.qib_ctxtdata.0*)*, i64 (%struct.qib_ctxtdata.0*)** %21, align 8
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %24 = bitcast %struct.qib_ctxtdata* %23 to %struct.qib_ctxtdata.0*
  %25 = call i64 %22(%struct.qib_ctxtdata.0* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load i32, i32* @QIB_CTXT_WAITING_RCV, align 4
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %33, align 8
  %35 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %36 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %4, align 8
  %40 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %34(i32 %37, i32 %38, i32 %41)
  store i32 0, i32* %8, align 4
  br label %47

43:                                               ; preds = %3
  %44 = load i32, i32* @EPOLLIN, align 4
  %45 = load i32, i32* @EPOLLRDNORM, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %27
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %49 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
