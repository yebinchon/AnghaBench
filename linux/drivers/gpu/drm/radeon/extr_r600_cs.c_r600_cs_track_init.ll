; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_track_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_track_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r600_cs_track = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32**, i64*, i64, i32*, i64, i32*, i32**, i32**, i32**, i64*, i64*, i64*, i64*, i32 }

@DX9_CONSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r600_cs_track*)* @r600_cs_track_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_cs_track_init(%struct.r600_cs_track* %0) #0 {
  %2 = alloca %struct.r600_cs_track*, align 8
  %3 = alloca i32, align 4
  store %struct.r600_cs_track* %0, %struct.r600_cs_track** %2, align 8
  %4 = load i32, i32* @DX9_CONSTS, align 4
  %5 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %6 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %5, i32 0, i32 36
  store i32 %4, i32* %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %89, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %92

10:                                               ; preds = %7
  %11 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %12 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %11, i32 0, i32 35
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %18 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %17, i32 0, i32 34
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %24 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %23, i32 0, i32 33
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %30 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %29, i32 0, i32 32
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 0, i64* %34, align 8
  %35 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %36 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -1, i32* %40, align 4
  %41 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %42 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %41, i32 0, i32 31
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %48 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 -1, i32* %52, align 4
  %53 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %54 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 -1, i32* %58, align 4
  %59 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %60 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %59, i32 0, i32 30
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  %65 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %66 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 -1, i32* %70, align 4
  %71 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %72 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %71, i32 0, i32 29
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* null, i32** %76, align 8
  %77 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %78 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 -1, i32* %82, align 4
  %83 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %84 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 -1, i32* %88, align 4
  br label %89

89:                                               ; preds = %10
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %7

92:                                               ; preds = %7
  %93 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %94 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %93, i32 0, i32 6
  store i32 0, i32* %94, align 8
  %95 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %96 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %95, i32 0, i32 7
  store i32 16, i32* %96, align 4
  %97 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %98 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %97, i32 0, i32 8
  store i32 4, i32* %98, align 8
  %99 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %100 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %99, i32 0, i32 9
  store i32 -1, i32* %100, align 4
  %101 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %102 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %101, i32 0, i32 10
  store i32 -1, i32* %102, align 8
  %103 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %104 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %103, i32 0, i32 11
  store i32 1, i32* %104, align 4
  %105 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %106 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %105, i32 0, i32 28
  store i32* null, i32** %106, align 8
  %107 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %108 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %107, i32 0, i32 12
  store i32 -1, i32* %108, align 8
  %109 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %110 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %109, i32 0, i32 13
  store i32 33554439, i32* %110, align 4
  %111 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %112 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %111, i32 0, i32 14
  store i32 -16384, i32* %112, align 8
  %113 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %114 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %113, i32 0, i32 15
  store i32 -1, i32* %114, align 4
  %115 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %116 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %115, i32 0, i32 27
  store i64 0, i64* %116, align 8
  %117 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %118 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %117, i32 0, i32 16
  store i32 -1, i32* %118, align 8
  %119 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %120 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %119, i32 0, i32 17
  store i32 1, i32* %120, align 4
  %121 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %122 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %121, i32 0, i32 26
  store i32* null, i32** %122, align 8
  %123 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %124 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %123, i32 0, i32 18
  store i32 -1, i32* %124, align 8
  %125 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %126 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %125, i32 0, i32 25
  store i64 0, i64* %126, align 8
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %155, %92
  %128 = load i32, i32* %3, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  %131 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %132 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %131, i32 0, i32 24
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 0, i64* %136, align 8
  %137 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %138 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %137, i32 0, i32 23
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  store i32* null, i32** %142, align 8
  %143 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %144 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %143, i32 0, i32 19
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 -1, i32* %148, align 4
  %149 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %150 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %149, i32 0, i32 20
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 -1, i32* %154, align 4
  br label %155

155:                                              ; preds = %130
  %156 = load i32, i32* %3, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %3, align 4
  br label %127

158:                                              ; preds = %127
  %159 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %160 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %159, i32 0, i32 21
  store i32 1, i32* %160, align 8
  %161 = load %struct.r600_cs_track*, %struct.r600_cs_track** %2, align 8
  %162 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %161, i32 0, i32 22
  store i32 0, i32* %162, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
