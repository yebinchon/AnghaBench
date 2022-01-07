; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_setup_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_setup_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_buf = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_puda_buf*, %struct.i40iw_puda_buf*)* @i40iw_ieq_setup_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_ieq_setup_tx_buf(%struct.i40iw_puda_buf* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_puda_buf*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_puda_buf* %0, %struct.i40iw_puda_buf** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %5 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %6 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %9 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %14 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %19 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %24 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %26 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %27 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %28 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i40iw_ieq_copy_to_txbuf(%struct.i40iw_puda_buf* %25, %struct.i40iw_puda_buf* %26, i32 0, i32 0, i32 %29)
  ret void
}

declare dso_local i32 @i40iw_ieq_copy_to_txbuf(%struct.i40iw_puda_buf*, %struct.i40iw_puda_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
