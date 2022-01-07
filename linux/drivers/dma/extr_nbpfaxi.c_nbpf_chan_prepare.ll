; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_chan_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_chan_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpf_channel = type { i32, i32, i32 }

@NBPF_SLAVE_RQ_HIGH = common dso_local global i32 0, align 4
@NBPF_CHAN_CFG_HIEN = common dso_local global i32 0, align 4
@NBPF_SLAVE_RQ_LOW = common dso_local global i32 0, align 4
@NBPF_CHAN_CFG_LOEN = common dso_local global i32 0, align 4
@NBPF_SLAVE_RQ_LEVEL = common dso_local global i32 0, align 4
@NBPF_CHAN_CFG_LVL = common dso_local global i32 0, align 4
@NBPF_CHAN_CFG_AM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbpf_channel*)* @nbpf_chan_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbpf_chan_prepare(%struct.nbpf_channel* %0) #0 {
  %2 = alloca %struct.nbpf_channel*, align 8
  store %struct.nbpf_channel* %0, %struct.nbpf_channel** %2, align 8
  %3 = load %struct.nbpf_channel*, %struct.nbpf_channel** %2, align 8
  %4 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NBPF_SLAVE_RQ_HIGH, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NBPF_CHAN_CFG_HIEN, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  %14 = load %struct.nbpf_channel*, %struct.nbpf_channel** %2, align 8
  %15 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NBPF_SLAVE_RQ_LOW, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @NBPF_CHAN_CFG_LOEN, align 4
  br label %23

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %13, %24
  %26 = load %struct.nbpf_channel*, %struct.nbpf_channel** %2, align 8
  %27 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NBPF_SLAVE_RQ_LEVEL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @NBPF_CHAN_CFG_LVL, align 4
  %34 = load i32, i32* @NBPF_CHAN_CFG_AM, align 4
  %35 = and i32 %34, 512
  %36 = or i32 %33, %35
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ 0, %37 ]
  %40 = or i32 %25, %39
  %41 = load %struct.nbpf_channel*, %struct.nbpf_channel** %2, align 8
  %42 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = load %struct.nbpf_channel*, %struct.nbpf_channel** %2, align 8
  %46 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
