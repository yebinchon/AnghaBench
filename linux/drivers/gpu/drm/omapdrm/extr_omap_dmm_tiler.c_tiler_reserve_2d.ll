; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_reserve_2d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_reserve_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.tiler_block = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@geom = common dso_local global %struct.TYPE_4__* null, align 8
@containers = common dso_local global i32* null, align 8
@list_lock = common dso_local global i32 0, align 4
@omap_dmm = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tiler_block* @tiler_reserve_2d(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tiler_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tiler_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 128, i64* %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tiler_block* @kzalloc(i32 12, i32 %15)
  store %struct.tiler_block* %16, %struct.tiler_block** %10, align 8
  %17 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %18 = icmp ne %struct.tiler_block* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.tiler_block* @ERR_PTR(i32 %21)
  store %struct.tiler_block* %22, %struct.tiler_block** %5, align 8
  br label %110

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @validfmt(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @DIV_ROUND_UP(i64 %30, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @DIV_ROUND_UP(i64 %38, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @geom, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %51, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @max(i64 %59, i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %23
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @ALIGN(i64 %66, i64 %67)
  br label %71

69:                                               ; preds = %23
  %70 = load i64, i64* %11, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i64 [ %68, %65 ], [ %70, %69 ]
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sdiv i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %78 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** @containers, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %89 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %88, i32 0, i32 2
  %90 = call i32 @tcm_reserve_2d(i32 %83, i64 %84, i64 %85, i64 %86, i32 -1, i64 %87, i32* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %71
  %94 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %95 = call i32 @kfree(%struct.tiler_block* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  %98 = call %struct.tiler_block* @ERR_PTR(i32 %97)
  store %struct.tiler_block* %98, %struct.tiler_block** %5, align 8
  br label %110

99:                                               ; preds = %71
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %100)
  %102 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %103 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @omap_dmm, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @list_add(i32* %103, i32* %105)
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %107)
  %109 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  store %struct.tiler_block* %109, %struct.tiler_block** %5, align 8
  br label %110

110:                                              ; preds = %99, %93, %19
  %111 = load %struct.tiler_block*, %struct.tiler_block** %5, align 8
  ret %struct.tiler_block* %111
}

declare dso_local %struct.tiler_block* @kzalloc(i32, i32) #1

declare dso_local %struct.tiler_block* @ERR_PTR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @validfmt(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @tcm_reserve_2d(i32, i64, i64, i64, i32, i64, i32*) #1

declare dso_local i32 @kfree(%struct.tiler_block*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
