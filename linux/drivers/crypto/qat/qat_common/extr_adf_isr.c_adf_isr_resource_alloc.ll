; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_isr_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_isr.c_adf_isr_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_isr_resource_alloc(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf_accel_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %3, align 8
  %5 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %6 = call i32 @adf_isr_alloc_msix_entry_table(%struct.adf_accel_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %13 = call i64 @adf_enable_msix(%struct.adf_accel_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %27

16:                                               ; preds = %11
  %17 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %18 = call i64 @adf_setup_bh(%struct.adf_accel_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %27

21:                                               ; preds = %16
  %22 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %23 = call i64 @adf_request_irqs(%struct.adf_accel_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %25, %20, %15
  %28 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %29 = call i32 @adf_isr_resource_free(%struct.adf_accel_dev* %28)
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %26, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @adf_isr_alloc_msix_entry_table(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_enable_msix(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_setup_bh(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_request_irqs(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_isr_resource_free(%struct.adf_accel_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
