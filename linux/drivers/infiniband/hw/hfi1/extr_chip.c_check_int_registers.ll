; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_int_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_int_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@CCE_INT_MASK = common dso_local global i32 0, align 4
@CCE_INT_CLEAR = common dso_local global i32 0, align 4
@CCE_INT_STATUS = common dso_local global i32 0, align 4
@CCE_INT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Interrupt registers not properly mapped by VMM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @check_int_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_int_registers(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i64 -1, i64* %5, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %8 = load i32, i32* @CCE_INT_MASK, align 4
  %9 = call i64 @read_csr(%struct.hfi1_devdata* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load i32, i32* @CCE_INT_MASK, align 4
  %12 = call i32 @write_csr(%struct.hfi1_devdata* %10, i32 %11, i64 0)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = load i32, i32* @CCE_INT_MASK, align 4
  %15 = call i64 @read_csr(%struct.hfi1_devdata* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %21 = load i32, i32* @CCE_INT_CLEAR, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %20, i32 %21, i64 %22)
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = load i32, i32* @CCE_INT_STATUS, align 4
  %26 = call i64 @read_csr(%struct.hfi1_devdata* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %51

30:                                               ; preds = %19
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = load i32, i32* @CCE_INT_FORCE, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %31, i32 %32, i64 %33)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = load i32, i32* @CCE_INT_STATUS, align 4
  %37 = call i64 @read_csr(%struct.hfi1_devdata* %35, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %51

42:                                               ; preds = %30
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32, i32* @CCE_INT_CLEAR, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @write_csr(%struct.hfi1_devdata* %43, i32 %44, i64 %45)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = load i32, i32* @CCE_INT_MASK, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @write_csr(%struct.hfi1_devdata* %47, i32 %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %60

51:                                               ; preds = %41, %29, %18
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %53 = load i32, i32* @CCE_INT_MASK, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @write_csr(%struct.hfi1_devdata* %52, i32 %53, i64 %54)
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %57 = call i32 @dd_dev_err(%struct.hfi1_devdata* %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
