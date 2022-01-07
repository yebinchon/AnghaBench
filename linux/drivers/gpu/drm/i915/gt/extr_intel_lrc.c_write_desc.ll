; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_write_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_write_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_execlists*, i32, i32)* @write_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_desc(%struct.intel_engine_execlists* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_engine_execlists*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %8 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @lower_32_bits(i32 %12)
  %14 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %15 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @writel(i32 %13, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @upper_32_bits(i32 %22)
  %24 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %25 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = add nsw i64 %30, 1
  %32 = call i32 @writel(i32 %23, i64 %31)
  br label %46

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %37 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %4, align 8
  %43 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @writel(i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
