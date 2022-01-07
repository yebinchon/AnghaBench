; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_write_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_write_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmm = type { i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"sDMA write transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmm*, i64, i64)* @dmm_write_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmm_write_wa(%struct.dmm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dmm* %0, %struct.dmm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.dmm*, %struct.dmm** %4, align 8
  %12 = getelementptr inbounds %struct.dmm, %struct.dmm* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @writel(i64 %10, i64 %13)
  %15 = call i32 (...) @wmb()
  %16 = load %struct.dmm*, %struct.dmm** %4, align 8
  %17 = getelementptr inbounds %struct.dmm, %struct.dmm* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.dmm*, %struct.dmm** %4, align 8
  %20 = getelementptr inbounds %struct.dmm, %struct.dmm* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.dmm*, %struct.dmm** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @dmm_dma_copy(%struct.dmm* %24, i64 %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load %struct.dmm*, %struct.dmm** %4, align 8
  %32 = getelementptr inbounds %struct.dmm, %struct.dmm* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.dmm*, %struct.dmm** %4, align 8
  %37 = getelementptr inbounds %struct.dmm, %struct.dmm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i64 %35, i64 %40)
  br label %42

42:                                               ; preds = %30, %3
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dmm_dma_copy(%struct.dmm*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
