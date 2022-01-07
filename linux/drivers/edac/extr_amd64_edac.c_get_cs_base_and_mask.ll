; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_cs_base_and_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_cs_base_and_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@K8_REV_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32, i64, i32*, i32*)* @get_cs_base_and_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cs_base_and_mask(%struct.amd64_pvt* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 15
  br i1 %19, label %20, label %55

20:                                               ; preds = %5
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %22 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @K8_REV_F, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %28 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %39 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = call i32 @GENMASK_ULL(i32 31, i32 21)
  %50 = call i32 @GENMASK_ULL(i32 15, i32 9)
  %51 = or i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = call i32 @GENMASK_ULL(i32 29, i32 21)
  %53 = call i32 @GENMASK_ULL(i32 15, i32 9)
  %54 = or i32 %52, %53
  store i32 %54, i32* %14, align 4
  store i64 4, i64* %15, align 8
  br label %168

55:                                               ; preds = %20, %5
  %56 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %57 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 22
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %62 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 21
  br i1 %64, label %65, label %130

65:                                               ; preds = %60
  %66 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %67 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %130

70:                                               ; preds = %65, %55
  %71 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %72 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %83 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @GENMASK_ULL(i32 15, i32 5)
  %96 = and i32 %94, %95
  %97 = shl i32 %96, 6
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @GENMASK_ULL(i32 30, i32 19)
  %101 = and i32 %99, %100
  %102 = shl i32 %101, 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32*, i32** %10, align 8
  store i32 -1, i32* %106, align 4
  %107 = call i32 @GENMASK_ULL(i32 15, i32 5)
  %108 = shl i32 %107, 6
  %109 = call i32 @GENMASK_ULL(i32 30, i32 19)
  %110 = shl i32 %109, 8
  %111 = or i32 %108, %110
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @GENMASK_ULL(i32 15, i32 5)
  %118 = and i32 %116, %117
  %119 = shl i32 %118, 6
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @GENMASK_ULL(i32 30, i32 19)
  %125 = and i32 %123, %124
  %126 = shl i32 %125, 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %194

130:                                              ; preds = %65, %60
  %131 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %132 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %11, align 4
  %142 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %143 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = ashr i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %12, align 4
  store i64 8, i64* %15, align 8
  %154 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %155 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 21
  br i1 %157, label %158, label %162

158:                                              ; preds = %130
  %159 = call i32 @GENMASK_ULL(i32 30, i32 19)
  %160 = call i32 @GENMASK_ULL(i32 13, i32 5)
  %161 = or i32 %159, %160
  store i32 %161, i32* %14, align 4
  store i32 %161, i32* %13, align 4
  br label %166

162:                                              ; preds = %130
  %163 = call i32 @GENMASK_ULL(i32 28, i32 19)
  %164 = call i32 @GENMASK_ULL(i32 13, i32 5)
  %165 = or i32 %163, %164
  store i32 %165, i32* %14, align 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %26
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %13, align 4
  %171 = and i32 %169, %170
  %172 = load i64, i64* %15, align 8
  %173 = trunc i64 %172 to i32
  %174 = shl i32 %171, %173
  %175 = load i32*, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32*, i32** %10, align 8
  store i32 -1, i32* %176, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i64, i64* %15, align 8
  %179 = trunc i64 %178 to i32
  %180 = shl i32 %177, %179
  %181 = xor i32 %180, -1
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = and i32 %185, %186
  %188 = load i64, i64* %15, align 8
  %189 = trunc i64 %188 to i32
  %190 = shl i32 %187, %189
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %190
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %168, %70
  ret void
}

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
