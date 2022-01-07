; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_acquire_hw_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_acquire_hw_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@ASIC_CFG_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Hardware mutex already acquired, mutex mask %u\0A\00", align 1
@HM_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"Unable to acquire hardware mutex, mutex mask %u, my mask %u (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"retrying\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"giving up\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acquire_hw_mutex(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = load i32, i32* @ASIC_CFG_MUTEX, align 4
  %15 = call i64 @read_csr(%struct.hfi1_devdata* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @dd_dev_info(%struct.hfi1_devdata* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* @HM_TIMEOUT, align 4
  %27 = call i64 @msecs_to_jiffies(i32 %26)
  %28 = load i64, i64* @jiffies, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %25, %48
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = load i32, i32* @ASIC_CFG_MUTEX, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %31, i32 %32, i64 %33)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = load i32, i32* @ASIC_CFG_MUTEX, align 4
  %37 = call i64 @read_csr(%struct.hfi1_devdata* %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %72

42:                                               ; preds = %30
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @msleep(i32 20)
  br label %30

50:                                               ; preds = %47
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 @dd_dev_err(%struct.hfi1_devdata* %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55, i8* %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %65 = load i32, i32* @ASIC_CFG_MUTEX, align 4
  %66 = call i32 @write_csr(%struct.hfi1_devdata* %64, i32 %65, i64 0)
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %25

69:                                               ; preds = %50
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %41, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
