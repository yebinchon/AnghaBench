; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_tsptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_tsptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.tiler_block = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tcm_pt }
%struct.tcm_pt = type { i32, i32 }

@geom = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tiler_tsptr(%struct.tiler_block* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tiler_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcm_pt*, align 8
  store %struct.tiler_block* %0, %struct.tiler_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  %11 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.tcm_pt* %12, %struct.tcm_pt** %9, align 8
  %13 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  %14 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @validfmt(i64 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  %22 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.tcm_pt*, %struct.tcm_pt** %9, align 8
  %26 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %29 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  %30 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %27, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.tcm_pt*, %struct.tcm_pt** %9, align 8
  %40 = getelementptr inbounds %struct.tcm_pt, %struct.tcm_pt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %43 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  %44 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %41, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @tiler_get_address(i64 %23, i64 %24, i64 %38, i64 %52)
  ret i32 %53
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @validfmt(i64) #1

declare dso_local i32 @tiler_get_address(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
