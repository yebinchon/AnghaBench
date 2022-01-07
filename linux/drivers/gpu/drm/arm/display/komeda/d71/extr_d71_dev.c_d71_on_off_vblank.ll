; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_on_off_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_dev.c_d71_on_off_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { %struct.d71_dev* }
%struct.d71_dev = type { %struct.d71_pipeline** }
%struct.d71_pipeline = type { i32 }

@BLK_IRQ_MASK = common dso_local global i32 0, align 4
@DOU_IRQ_PL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_dev*, i32, i32)* @d71_on_off_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d71_on_off_vblank(%struct.komeda_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.d71_dev*, align 8
  %8 = alloca %struct.d71_pipeline*, align 8
  store %struct.komeda_dev* %0, %struct.komeda_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %10 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %9, i32 0, i32 0
  %11 = load %struct.d71_dev*, %struct.d71_dev** %10, align 8
  store %struct.d71_dev* %11, %struct.d71_dev** %7, align 8
  %12 = load %struct.d71_dev*, %struct.d71_dev** %7, align 8
  %13 = getelementptr inbounds %struct.d71_dev, %struct.d71_dev* %12, i32 0, i32 0
  %14 = load %struct.d71_pipeline**, %struct.d71_pipeline*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.d71_pipeline*, %struct.d71_pipeline** %14, i64 %16
  %18 = load %struct.d71_pipeline*, %struct.d71_pipeline** %17, align 8
  store %struct.d71_pipeline* %18, %struct.d71_pipeline** %8, align 8
  %19 = load %struct.d71_pipeline*, %struct.d71_pipeline** %8, align 8
  %20 = getelementptr inbounds %struct.d71_pipeline, %struct.d71_pipeline* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BLK_IRQ_MASK, align 4
  %23 = load i32, i32* @DOU_IRQ_PL0, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DOU_IRQ_PL0, align 4
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @malidp_write32_mask(i32 %21, i32 %22, i32 %23, i32 %30)
  ret void
}

declare dso_local i32 @malidp_write32_mask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
