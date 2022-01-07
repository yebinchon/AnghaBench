; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_process_m_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-iproc.c_bcm_iproc_i2c_process_m_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_iproc_i2c_dev = type { i32, i32, i64 }

@IS_M_TX_UNDERRUN_SHIFT = common dso_local global i32 0, align 4
@IS_M_RX_THLD_SHIFT = common dso_local global i32 0, align 4
@IS_M_START_BUSY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_iproc_i2c_dev*, i32)* @bcm_iproc_i2c_process_m_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_iproc_i2c_process_m_event(%struct.bcm_iproc_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_iproc_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm_iproc_i2c_dev* %0, %struct.bcm_iproc_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IS_M_TX_UNDERRUN_SHIFT, align 4
  %7 = call i32 @BIT(i32 %6)
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %12 = call i32 @bcm_iproc_i2c_send(%struct.bcm_iproc_i2c_dev* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IS_M_RX_THLD_SHIFT, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %21 = call i32 @bcm_iproc_i2c_read(%struct.bcm_iproc_i2c_dev* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IS_M_START_BUSY_SHIFT, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %30 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.bcm_iproc_i2c_dev*, %struct.bcm_iproc_i2c_dev** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_iproc_i2c_dev, %struct.bcm_iproc_i2c_dev* %36, i32 0, i32 1
  %38 = call i32 @complete(i32* %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %22
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bcm_iproc_i2c_send(%struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @bcm_iproc_i2c_read(%struct.bcm_iproc_i2c_dev*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
