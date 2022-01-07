; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32**, i32**, i32**, i32***, i32*** }

@TPG_MAX_PAT_LINES = common dso_local global i32 0, align 4
@TPG_MAX_PLANES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpg_free(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %67, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TPG_MAX_PAT_LINES, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %70

9:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %63, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TPG_MAX_PLANES, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %10
  %15 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %16 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %15, i32 0, i32 4
  %17 = load i32***, i32**** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32**, i32*** %17, i64 %19
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @vfree(i32* %25)
  %27 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %28 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %27, i32 0, i32 4
  %29 = load i32***, i32**** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32**, i32*** %29, i64 %31
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %14
  br label %63

40:                                               ; preds = %14
  %41 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %42 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %41, i32 0, i32 3
  %43 = load i32***, i32**** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32**, i32*** %43, i64 %45
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vfree(i32* %51)
  %53 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %54 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %53, i32 0, i32 3
  %55 = load i32***, i32**** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32**, i32*** %55, i64 %57
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %40, %39
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %10

66:                                               ; preds = %10
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %5

70:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %118, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @TPG_MAX_PLANES, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %71
  %76 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %77 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @vfree(i32* %82)
  %84 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %85 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @vfree(i32* %90)
  %92 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %93 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @vfree(i32* %98)
  %100 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %101 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %100, i32 0, i32 2
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  store i32* null, i32** %105, align 8
  %106 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %107 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* null, i32** %111, align 8
  %112 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %113 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %75
  %119 = load i32, i32* %4, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %71

121:                                              ; preds = %71
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
