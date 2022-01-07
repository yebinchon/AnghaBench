; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_clear_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_zbc_clear_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gf100_gr*, i32)* @gf100_gr_zbc_clear_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_gr_zbc_clear_color(%struct.gf100_gr* %0, i32 %1) #0 {
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %7 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %5, align 8
  %12 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %13 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %2
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 4216836, i32 %32)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %35 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %36 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 4216840, i32 %44)
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %48 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvkm_wr32(%struct.nvkm_device* %46, i32 4216844, i32 %56)
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %60 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %58, i32 4216848, i32 %68)
  br label %70

70:                                               ; preds = %21, %2
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %72 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %73 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %71, i32 4216852, i32 %79)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 4216864, i32 %82)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %85 = call i32 @nvkm_wr32(%struct.nvkm_device* %84, i32 4216868, i32 4)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
