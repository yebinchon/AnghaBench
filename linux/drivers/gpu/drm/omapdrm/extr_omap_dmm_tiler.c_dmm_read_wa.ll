; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_read_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_read_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmm = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"sDMA read transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dmm*, i64)* @dmm_read_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dmm_read_wa(%struct.dmm* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.dmm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dmm* %0, %struct.dmm** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dmm*, %struct.dmm** %4, align 8
  %10 = getelementptr inbounds %struct.dmm, %struct.dmm* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load %struct.dmm*, %struct.dmm** %4, align 8
  %15 = getelementptr inbounds %struct.dmm, %struct.dmm* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.dmm*, %struct.dmm** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dmm_dma_copy(%struct.dmm* %17, i64 %18, i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.dmm*, %struct.dmm** %4, align 8
  %25 = getelementptr inbounds %struct.dmm, %struct.dmm* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.dmm*, %struct.dmm** %4, align 8
  %29 = getelementptr inbounds %struct.dmm, %struct.dmm* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @readl(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %40

34:                                               ; preds = %2
  %35 = call i32 (...) @rmb()
  %36 = load %struct.dmm*, %struct.dmm** %4, align 8
  %37 = getelementptr inbounds %struct.dmm, %struct.dmm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @readl(i64 %38)
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %34, %23
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i32 @dmm_dma_copy(%struct.dmm*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
