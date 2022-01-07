; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_guc_send_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_guc_send_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*, i32)* @guc_send_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_send_reg(%struct.intel_guc* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %30 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 4, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @_MMIO(i64 %36)
  ret i32 %37
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @_MMIO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
