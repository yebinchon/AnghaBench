; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_hw_clear_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_hw_clear_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MALIDP_REGMAP_HAS_CLEARIRQ = common dso_local global i32 0, align 4
@MALIDP_REG_CLEARIRQ = common dso_local global i64 0, align 8
@MALIDP_REG_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*, i32, i64)* @malidp_hw_clear_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_hw_clear_irq(%struct.malidp_hw_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.malidp_hw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @malidp_get_block_base(%struct.malidp_hw_device* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %12 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MALIDP_REGMAP_HAS_CLEARIRQ, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MALIDP_REG_CLEARIRQ, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %21, i64 %22, i64 %25)
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @malidp_hw_write(%struct.malidp_hw_device* %28, i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %27, %20
  ret void
}

declare dso_local i64 @malidp_get_block_base(%struct.malidp_hw_device*, i32) #1

declare dso_local i32 @malidp_hw_write(%struct.malidp_hw_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
