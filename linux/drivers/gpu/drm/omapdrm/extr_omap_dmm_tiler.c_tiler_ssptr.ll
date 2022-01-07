; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_ssptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_ssptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.tiler_block = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@TILVIEW_8BIT = common dso_local global i64 0, align 8
@geom = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tiler_ssptr(%struct.tiler_block* %0) #0 {
  %2 = alloca %struct.tiler_block*, align 8
  store %struct.tiler_block* %0, %struct.tiler_block** %2, align 8
  %3 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %4 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @validfmt(i64 %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i64, i64* @TILVIEW_8BIT, align 8
  %12 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %13 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %16 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @geom, align 8
  %21 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %22 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %19, %26
  %28 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %29 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @geom, align 8
  %34 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  %35 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %32, %39
  %41 = call i64 @tiler_get_address(i64 %14, i32 0, i32 %27, i32 %40)
  %42 = add nsw i64 %11, %41
  ret i64 %42
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @validfmt(i64) #1

declare dso_local i64 @tiler_get_address(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
