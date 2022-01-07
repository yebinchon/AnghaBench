; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_fec.c_bcom_fec_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_fec.c_bcom_fec_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { %struct.bcom_fec_priv*, i32 }
%struct.bcom_fec_priv = type { i32, i32 }

@BCOM_FLAGS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bcom_task* @bcom_fec_rx_init(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcom_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcom_task*, align 8
  %9 = alloca %struct.bcom_fec_priv*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.bcom_task* @bcom_task_alloc(i32 %10, i32 4, i32 8)
  store %struct.bcom_task* %11, %struct.bcom_task** %8, align 8
  %12 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  %13 = icmp ne %struct.bcom_task* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %36

15:                                               ; preds = %3
  %16 = load i32, i32* @BCOM_FLAGS_NONE, align 4
  %17 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  %18 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  %20 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %19, i32 0, i32 0
  %21 = load %struct.bcom_fec_priv*, %struct.bcom_fec_priv** %20, align 8
  store %struct.bcom_fec_priv* %21, %struct.bcom_fec_priv** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.bcom_fec_priv*, %struct.bcom_fec_priv** %9, align 8
  %24 = getelementptr inbounds %struct.bcom_fec_priv, %struct.bcom_fec_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.bcom_fec_priv*, %struct.bcom_fec_priv** %9, align 8
  %27 = getelementptr inbounds %struct.bcom_fec_priv, %struct.bcom_fec_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  %29 = call i64 @bcom_fec_rx_reset(%struct.bcom_task* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  %33 = call i32 @bcom_task_free(%struct.bcom_task* %32)
  store %struct.bcom_task* null, %struct.bcom_task** %4, align 8
  br label %36

34:                                               ; preds = %15
  %35 = load %struct.bcom_task*, %struct.bcom_task** %8, align 8
  store %struct.bcom_task* %35, %struct.bcom_task** %4, align 8
  br label %36

36:                                               ; preds = %34, %31, %14
  %37 = load %struct.bcom_task*, %struct.bcom_task** %4, align 8
  ret %struct.bcom_task* %37
}

declare dso_local %struct.bcom_task* @bcom_task_alloc(i32, i32, i32) #1

declare dso_local i64 @bcom_fec_rx_reset(%struct.bcom_task*) #1

declare dso_local i32 @bcom_task_free(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
