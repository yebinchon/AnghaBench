; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_cce_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_clear_cce_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@CCE_STATUS = common dso_local global i32 0, align 4
@CCE_CTRL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CCE_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Timeout waiting for CceStatus to clear bits 0x%llx, remaining 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32, i32)* @clear_cce_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_cce_status(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %10 = load i32, i32* @CCE_STATUS, align 4
  %11 = call i32 @read_csr(%struct.hfi1_devdata* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %19 = load i32, i32* @CCE_CTRL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @write_csr(%struct.hfi1_devdata* %18, i32 %19, i32 %20)
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i32, i32* @CCE_STATUS_TIMEOUT, align 4
  %24 = call i64 @msecs_to_jiffies(i32 %23)
  %25 = add i64 %22, %24
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %17, %47
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %28 = load i32, i32* @CCE_STATUS, align 4
  %29 = call i32 @read_csr(%struct.hfi1_devdata* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %49

35:                                               ; preds = %26
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @dd_dev_err(%struct.hfi1_devdata* %41, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %49

47:                                               ; preds = %35
  %48 = call i32 @udelay(i32 1)
  br label %26

49:                                               ; preds = %40, %34, %16
  ret void
}

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
