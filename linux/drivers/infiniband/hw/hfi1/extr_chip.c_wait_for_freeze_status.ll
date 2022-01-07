; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_for_freeze_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_wait_for_freeze_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@FREEZE_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@CCE_STATUS = common dso_local global i32 0, align 4
@ALL_FROZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"Time out waiting for SPC %sfreeze, bits 0x%llx, expecting 0x%llx, continuing\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @wait_for_freeze_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_freeze_status(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* @FREEZE_STATUS_TIMEOUT, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %2, %54
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %13 = load i32, i32* @CCE_STATUS, align 4
  %14 = call i64 @read_csr(%struct.hfi1_devdata* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ALL_FROZE, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @ALL_FROZE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %56

24:                                               ; preds = %17
  br label %32

25:                                               ; preds = %11
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ALL_FROZE, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %56

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @ALL_FROZE, align 8
  %45 = and i64 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* @ALL_FROZE, align 8
  br label %51

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i64 [ %49, %48 ], [ 0, %50 ]
  %53 = call i32 @dd_dev_err(%struct.hfi1_devdata* %38, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %42, i64 %45, i64 %52)
  br label %56

54:                                               ; preds = %32
  %55 = call i32 @usleep_range(i32 80, i32 120)
  br label %11

56:                                               ; preds = %51, %30, %23
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i8*, i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
