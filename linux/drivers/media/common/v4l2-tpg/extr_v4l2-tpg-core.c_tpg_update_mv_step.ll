; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_update_mv_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_update_mv_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_update_mv_step(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  %3 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  %4 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %5 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 131
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 -1, i32 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %11 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %19 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %45 [
    i32 133, label %21
    i32 129, label %21
    i32 134, label %30
    i32 130, label %30
    i32 132, label %39
    i32 128, label %39
    i32 131, label %42
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %23 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 319
  %26 = sdiv i32 %25, 320
  %27 = mul nsw i32 %26, 4
  %28 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %29 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %45

30:                                               ; preds = %17, %17
  %31 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %32 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 639
  %35 = sdiv i32 %34, 640
  %36 = mul nsw i32 %35, 4
  %37 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %38 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %45

39:                                               ; preds = %17, %17
  %40 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %41 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  br label %45

42:                                               ; preds = %17
  %43 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %44 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %17, %42, %39, %30, %21
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %50 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %53 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %57 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %48, %45
  %59 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %60 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 131
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 -1, i32 1
  store i32 %64, i32* %3, align 4
  %65 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %66 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %92 [
    i32 133, label %68
    i32 129, label %68
    i32 134, label %77
    i32 130, label %77
    i32 132, label %86
    i32 128, label %86
    i32 131, label %89
  ]

68:                                               ; preds = %58, %58
  %69 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %70 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 319
  %73 = sdiv i32 %72, 320
  %74 = mul nsw i32 %73, 4
  %75 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %76 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %92

77:                                               ; preds = %58, %58
  %78 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %79 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 639
  %82 = sdiv i32 %81, 640
  %83 = mul nsw i32 %82, 4
  %84 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %85 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  br label %92

86:                                               ; preds = %58, %58
  %87 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %88 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %87, i32 0, i32 4
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %58
  %90 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %91 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %90, i32 0, i32 4
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %58, %89, %86, %77, %68
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %97 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %100 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  %103 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %104 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %95, %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
