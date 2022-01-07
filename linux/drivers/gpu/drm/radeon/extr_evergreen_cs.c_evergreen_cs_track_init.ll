; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_track_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_track_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evergreen_cs_track = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32**, i64*, i64, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i32**, i64*, i64*, i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evergreen_cs_track*)* @evergreen_cs_track_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_cs_track_init(%struct.evergreen_cs_track* %0) #0 {
  %2 = alloca %struct.evergreen_cs_track*, align 8
  %3 = alloca i32, align 4
  store %struct.evergreen_cs_track* %0, %struct.evergreen_cs_track** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %9 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %8, i32 0, i32 36
  %10 = load i32**, i32*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  store i32* null, i32** %13, align 8
  %14 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %15 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %14, i32 0, i32 35
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  store i32* null, i32** %19, align 8
  %20 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %21 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %20, i32 0, i32 34
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %27 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %26, i32 0, i32 33
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 12
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  %40 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %41 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %40, i32 0, i32 32
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* null, i32** %45, align 8
  %46 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %47 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 -1, i32* %51, align 4
  %52 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %53 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %52, i32 0, i32 31
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %59 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 -1, i32* %63, align 4
  %64 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %65 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %64, i32 0, i32 30
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  %70 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %71 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 268435455, i32* %75, align 4
  %76 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %77 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %76, i32 0, i32 29
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %39
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %36

85:                                               ; preds = %36
  %86 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %87 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %86, i32 0, i32 3
  store i32 -1, i32* %87, align 8
  %88 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %89 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %88, i32 0, i32 4
  store i32 -1, i32* %89, align 4
  %90 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %91 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %90, i32 0, i32 5
  store i32 1, i32* %91, align 8
  %92 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %93 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %92, i32 0, i32 6
  store i32 -1, i32* %93, align 4
  %94 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %95 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %94, i32 0, i32 7
  store i32 -16384, i32* %95, align 8
  %96 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %97 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %96, i32 0, i32 8
  store i32 -1, i32* %97, align 4
  %98 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %99 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %98, i32 0, i32 9
  store i32 -1, i32* %99, align 8
  %100 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %101 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %100, i32 0, i32 10
  store i32 -1, i32* %101, align 4
  %102 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %103 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %102, i32 0, i32 11
  store i32 -1, i32* %103, align 8
  %104 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %105 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %104, i32 0, i32 12
  store i32 -1, i32* %105, align 4
  %106 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %107 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %106, i32 0, i32 28
  store i32* null, i32** %107, align 8
  %108 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %109 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %108, i32 0, i32 27
  store i32* null, i32** %109, align 8
  %110 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %111 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %110, i32 0, i32 13
  store i32 -1, i32* %111, align 8
  %112 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %113 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %112, i32 0, i32 14
  store i32 -1, i32* %113, align 4
  %114 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %115 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %114, i32 0, i32 15
  store i32 -1, i32* %115, align 8
  %116 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %117 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %116, i32 0, i32 26
  store i32* null, i32** %117, align 8
  %118 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %119 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %118, i32 0, i32 25
  store i32* null, i32** %119, align 8
  %120 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %121 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %120, i32 0, i32 16
  store i32 1, i32* %121, align 4
  %122 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %123 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %122, i32 0, i32 24
  store i32* null, i32** %123, align 8
  %124 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %125 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %124, i32 0, i32 17
  store i32 -1, i32* %125, align 8
  %126 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %127 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %126, i32 0, i32 23
  store i64 0, i64* %127, align 8
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %150, %85
  %129 = load i32, i32* %3, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %133 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %132, i32 0, i32 22
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 0, i64* %137, align 8
  %138 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %139 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %138, i32 0, i32 21
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* null, i32** %143, align 8
  %144 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %145 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %144, i32 0, i32 18
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 -1, i32* %149, align 4
  br label %150

150:                                              ; preds = %131
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %128

153:                                              ; preds = %128
  %154 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %155 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %154, i32 0, i32 19
  store i32 1, i32* %155, align 8
  %156 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %2, align 8
  %157 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %156, i32 0, i32 20
  store i32 0, i32* %157, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
