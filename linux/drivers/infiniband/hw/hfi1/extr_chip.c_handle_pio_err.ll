; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_pio_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_handle_pio_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"PIO Error: %s\0A\00", align 1
@ALL_PIO_FREEZE_ERR = common dso_local global i32 0, align 4
@NUM_SEND_PIO_ERR_STATUS_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32)* @handle_pio_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_pio_err(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [96 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %10 = getelementptr inbounds [96 x i8], [96 x i8]* %7, i64 0, i64 0
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pio_err_status_string(i8* %10, i32 96, i32 %11)
  %13 = call i32 @dd_dev_info(%struct.hfi1_devdata* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ALL_PIO_FREEZE_ERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @start_freeze_handling(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %3
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NUM_SEND_PIO_ERR_STATUS_COUNTERS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @incr_cntr64(i32* %42)
  br label %44

44:                                               ; preds = %36, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %24
  ret void
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @pio_err_status_string(i8*, i32, i32) #1

declare dso_local i32 @start_freeze_handling(i32, i32) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
