; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_buf_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rx_buf_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32, i32, i64, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@BCM_HDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"pdc rx bufs\00", align 1
@RX_BUF_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PDC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*)* @pdc_rx_buf_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_rx_buf_pool_create(%struct.pdc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pdc_state*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %3, align 8
  %6 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %7 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %6, i32 0, i32 4
  %8 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  store %struct.platform_device* %8, %struct.platform_device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %12 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %15 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %17 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i64, i64* @BCM_HDR_LEN, align 8
  %22 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %23 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %31 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RX_BUF_ALIGN, align 4
  %34 = call i32 @dma_pool_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.device* %29, i32 %32, i32 %33, i32 0)
  %35 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %36 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %38 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @PDC_SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @dma_pool_create(i8*, %struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
