; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_intr_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_intr_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@NUM_INTERRUPT_SOURCES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@BITS_PER_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_intr_bits(%struct.hfi1_devdata* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NUM_INTERRUPT_SOURCES, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @NUM_INTERRUPT_SOURCES, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %16
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ERANGE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %66

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %57, %30
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @BITS_PER_REGISTER, align 8
  %39 = srem i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub nsw i64 %47, 1
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @read_mod_write(%struct.hfi1_devdata* %46, i64 %48, i64 %49, i32 %50)
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %45, %42, %36
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @BIT_ULL(i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %32

60:                                               ; preds = %32
  %61 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @read_mod_write(%struct.hfi1_devdata* %61, i64 %62, i64 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %27, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @read_mod_write(%struct.hfi1_devdata*, i64, i64, i32) #1

declare dso_local i64 @BIT_ULL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
