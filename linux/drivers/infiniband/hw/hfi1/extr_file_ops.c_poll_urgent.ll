; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_poll_urgent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_poll_urgent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hfi1_filedata* }
%struct.hfi1_filedata = type { %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i64, i64, i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@HFI1_CTXT_WAITING_URG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @poll_urgent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_urgent(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.hfi1_filedata*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %10, align 8
  store %struct.hfi1_filedata* %11, %struct.hfi1_filedata** %5, align 8
  %12 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %12, i32 0, i32 0
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %13, align 8
  store %struct.hfi1_ctxtdata* %14, %struct.hfi1_ctxtdata** %6, align 8
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %16, align 8
  store %struct.hfi1_devdata* %17, %struct.hfi1_devdata** %7, align 8
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 3
  %21 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %22 = call i32 @poll_wait(%struct.file* %18, i32* %20, %struct.poll_table_struct* %21)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %30 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load i32, i32* @EPOLLIN, align 4
  %35 = load i32, i32* @EPOLLRDNORM, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %47

42:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %43 = load i32, i32* @HFI1_CTXT_WAITING_URG, align 4
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 2
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %49 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %48, i32 0, i32 0
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
