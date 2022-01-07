; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_vf_isr.c_adf_vf_isr_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_vf_isr.c_adf_vf_isr_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_vf_isr_resource_alloc(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf_accel_dev*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %3, align 8
  %4 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %5 = call i64 @adf_enable_msi(%struct.adf_accel_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %10 = call i64 @adf_setup_pf2vf_bh(%struct.adf_accel_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %24

13:                                               ; preds = %8
  %14 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %15 = call i64 @adf_setup_bh(%struct.adf_accel_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %24

18:                                               ; preds = %13
  %19 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %20 = call i64 @adf_request_msi_irq(%struct.adf_accel_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %29

24:                                               ; preds = %22, %17, %12, %7
  %25 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %26 = call i32 @adf_vf_isr_resource_free(%struct.adf_accel_dev* %25)
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @adf_enable_msi(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_setup_pf2vf_bh(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_setup_bh(%struct.adf_accel_dev*) #1

declare dso_local i64 @adf_request_msi_irq(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_vf_isr_resource_free(%struct.adf_accel_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
