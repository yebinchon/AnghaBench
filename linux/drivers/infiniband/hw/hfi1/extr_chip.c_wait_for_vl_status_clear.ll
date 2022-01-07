; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_for_vl_status_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_for_vl_status_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@VL_STATUS_CLEAR_TIMEOUT = common dso_local global i32 0, align 4
@SEND_CM_CREDIT_USED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"%s credit change status not clearing after %dms, mask 0x%llx, not clear 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Continuing anyway.  A credit loss may occur.  Suggest a link bounce\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i8*)* @wait_for_vl_status_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_vl_status_clear(%struct.hfi1_devdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @VL_STATUS_CLEAR_TIMEOUT, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %3, %28
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %15 = load i32, i32* @SEND_CM_CREDIT_USED_STATUS, align 4
  %16 = call i32 @read_csr(%struct.hfi1_devdata* %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %39

22:                                               ; preds = %13
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @time_after(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %30

28:                                               ; preds = %22
  %29 = call i32 @udelay(i32 1)
  br label %13

30:                                               ; preds = %27
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @VL_STATUS_CLEAR_TIMEOUT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %37, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %30, %21
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
