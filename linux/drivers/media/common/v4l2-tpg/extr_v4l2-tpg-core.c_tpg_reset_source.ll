; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_reset_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_reset_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_reset_source(%struct.tpg_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %12 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %15 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %18 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %21 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @V4L2_FIELD_HAS_T_OR_B(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %27 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = udiv i32 %28, 2
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %33 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %35 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %38 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %42 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %46 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %49 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %52 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %56 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %59 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %62 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %95, %30
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %67 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %73 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %71, %78
  %80 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %81 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %80, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 2, %86
  %88 = udiv i32 %79, %87
  %89 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %90 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %70
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %64

98:                                               ; preds = %64
  %99 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %100 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %99, i32 0, i32 8
  store i32 1, i32* %100, align 8
  ret void
}

declare dso_local i64 @V4L2_FIELD_HAS_T_OR_B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
