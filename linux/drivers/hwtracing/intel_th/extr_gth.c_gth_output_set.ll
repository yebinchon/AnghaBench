; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_gth_output_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_gth_output_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gth_device = type { i64 }

@REG_GTH_GTHOPT1 = common dso_local global i64 0, align 8
@REG_GTH_GTHOPT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gth_device*, i32, i32)* @gth_output_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gth_output_set(%struct.gth_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gth_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gth_device* %0, %struct.gth_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @REG_GTH_GTHOPT1, align 8
  br label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @REG_GTH_GTHOPT0, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 3
  %21 = mul nsw i32 %20, 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.gth_device*, %struct.gth_device** %4, align 8
  %23 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @ioread32(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 255, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.gth_device*, %struct.gth_device** %4, align 8
  %40 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
