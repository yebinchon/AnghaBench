; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_sseu_get_eus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_sseu_get_eus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sseu_dev_info = type { i64*, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sseu_dev_info*, i32, i32)* @sseu_get_eus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sseu_get_eus(%struct.sseu_dev_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sseu_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sseu_dev_info* %0, %struct.sseu_dev_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sseu_eu_idx(%struct.sseu_dev_info* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %38, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %17 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GEN_SSEU_STRIDE(i32 %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %4, align 8
  %23 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %24, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BITS_PER_BYTE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @sseu_eu_idx(%struct.sseu_dev_info*, i32, i32) #1

declare dso_local i32 @GEN_SSEU_STRIDE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
