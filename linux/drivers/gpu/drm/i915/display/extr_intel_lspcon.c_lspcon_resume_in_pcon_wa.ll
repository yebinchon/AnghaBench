; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_resume_in_pcon_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_resume_in_pcon_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"LSPCON recovering in PCON mode after %u ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"LSPCON DP descriptor mismatch after resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_lspcon*)* @lspcon_resume_in_pcon_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lspcon_resume_in_pcon_wa(%struct.intel_lspcon* %0) #0 {
  %2 = alloca %struct.intel_lspcon*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %2, align 8
  %6 = load %struct.intel_lspcon*, %struct.intel_lspcon** %2, align 8
  %7 = call %struct.intel_dp* @lspcon_to_intel_dp(%struct.intel_lspcon* %6)
  store %struct.intel_dp* %7, %struct.intel_dp** %3, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %4, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %1, %30
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %13 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %12, i32 0, i32 0
  %14 = call i64 @intel_digital_port_connected(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub i64 %17, %18
  %20 = call i32 @jiffies_to_msecs(i64 %19)
  %21 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %34

22:                                               ; preds = %11
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @msecs_to_jiffies(i32 1000)
  %26 = add i64 %24, %25
  %27 = call i64 @time_after(i64 %23, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %32

30:                                               ; preds = %22
  %31 = call i32 @usleep_range(i32 10000, i32 15000)
  br label %11

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %16
  ret void
}

declare dso_local %struct.intel_dp* @lspcon_to_intel_dp(%struct.intel_lspcon*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i64 @intel_digital_port_connected(i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
