; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_array_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_array_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_array = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32** }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@MTHCA_ARRAY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Array %p index %d page %d with ref count %d < 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_array_clear(%struct.mthca_array* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mthca_array* %0, %struct.mthca_array** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = load i32, i32* @PAGE_SHIFT, align 4
  %10 = zext i32 %9 to i64
  %11 = lshr i64 %8, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %14 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %25 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = ptrtoint i32** %31 to i64
  %33 = call i32 @free_page(i64 %32)
  %34 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %35 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32** null, i32*** %40, align 8
  br label %55

41:                                               ; preds = %2
  %42 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MTHCA_ARRAY_MASK, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %49, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %41, %23
  %56 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %57 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.mthca_array*, %struct.mthca_array** %3, align 8
  %70 = getelementptr inbounds %struct.mthca_array, %struct.mthca_array* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.mthca_array* %66, i32 %67, i32 %68, i64 %76)
  br label %78

78:                                               ; preds = %65, %55
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @pr_debug(i8*, %struct.mthca_array*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
