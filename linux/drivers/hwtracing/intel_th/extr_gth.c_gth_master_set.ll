; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_gth_master_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_gth_master_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gth_device = type { i64 }

@REG_GTH_SWDEST0 = common dso_local global i32 0, align 4
@REG_GTH_GSWTDEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gth_device*, i32, i32)* @gth_master_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gth_master_set(%struct.gth_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gth_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gth_device* %0, %struct.gth_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @REG_GTH_SWDEST0, align 4
  %11 = load i32, i32* %5, align 4
  %12 = lshr i32 %11, 1
  %13 = and i32 %12, -4
  %14 = add i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  %17 = mul i32 %16, 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp uge i32 %18, 256
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @REG_GTH_GSWTDEST, align 4
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.gth_device*, %struct.gth_device** %4, align 8
  %24 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @ioread32(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 15, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  %39 = or i32 8, %38
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %22
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.gth_device*, %struct.gth_device** %4, align 8
  %47 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @iowrite32(i32 %45, i64 %51)
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
