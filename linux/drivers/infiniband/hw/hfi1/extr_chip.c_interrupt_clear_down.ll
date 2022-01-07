; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_interrupt_clear_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_interrupt_clear_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.err_reg_info = type { i32, i32, i32 (%struct.hfi1_devdata*, i64, i64)*, i32, i32 }

@MAX_CLEAR_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Repeating %s bits 0x%llx - masking\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i64, %struct.err_reg_info*)* @interrupt_clear_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_clear_down(%struct.hfi1_devdata* %0, i64 %1, %struct.err_reg_info* %2) #0 {
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.err_reg_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.err_reg_info* %2, %struct.err_reg_info** %6, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %3, %71
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %14 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @read_kctxt_csr(%struct.hfi1_devdata* %11, i64 %12, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %72

20:                                               ; preds = %10
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %24 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %21, i64 %22, i32 %25, i64 %26)
  %28 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %29 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %28, i32 0, i32 2
  %30 = load i32 (%struct.hfi1_devdata*, i64, i64)*, i32 (%struct.hfi1_devdata*, i64, i64)** %29, align 8
  %31 = call i64 @likely(i32 (%struct.hfi1_devdata*, i64, i64)* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %35 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %34, i32 0, i32 2
  %36 = load i32 (%struct.hfi1_devdata*, i64, i64)*, i32 (%struct.hfi1_devdata*, i64, i64)** %35, align 8
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 %36(%struct.hfi1_devdata* %37, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %33, %20
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @MAX_CLEAR_COUNT, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %49 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %50 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @dd_dev_err(%struct.hfi1_devdata* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52)
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %57 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @read_kctxt_csr(%struct.hfi1_devdata* %54, i64 %55, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.err_reg_info*, %struct.err_reg_info** %6, align 8
  %67 = getelementptr inbounds %struct.err_reg_info, %struct.err_reg_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %64, i64 %65, i32 %68, i64 %69)
  br label %72

71:                                               ; preds = %41
  br label %10

72:                                               ; preds = %47, %19
  ret void
}

declare dso_local i64 @read_kctxt_csr(%struct.hfi1_devdata*, i64, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i64, i32, i64) #1

declare dso_local i64 @likely(i32 (%struct.hfi1_devdata*, i64, i64)*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
