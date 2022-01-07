; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_init_db_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_init_db_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_init_db_tab(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %5 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %6 = call i32 @mthca_is_memfree(%struct.mthca_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_7__* @kmalloc(i32 32, i32 %10)
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 0
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %13, align 8
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %9
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %23 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %34 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.TYPE_6__* @kmalloc_array(i32 %55, i32 8, i32 %56)
  %58 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %21
  %69 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @kfree(%struct.TYPE_7__* %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %98

75:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %76

97:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %68, %18, %8
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_6__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
