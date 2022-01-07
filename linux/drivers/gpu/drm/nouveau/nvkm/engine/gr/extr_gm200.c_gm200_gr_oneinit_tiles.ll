; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_oneinit_tiles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_oneinit_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32, i32, i32 }

@gm200_gr_tile_map_2_8 = common dso_local global i32 0, align 4
@gm200_gr_tile_map_4_16 = common dso_local global i32 0, align 4
@gm200_gr_tile_map_6_24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm200_gr_oneinit_tiles(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %3 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %4 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %9 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %14 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @gm200_gr_tile_map_2_8, align 4
  %17 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %18 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  br label %70

23:                                               ; preds = %7, %1
  %24 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %25 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %30 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %35 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @gm200_gr_tile_map_4_16, align 4
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %39 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %37, i32 %40)
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %43 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %42, i32 0, i32 2
  store i32 4, i32* %43, align 4
  br label %69

44:                                               ; preds = %28, %23
  %45 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %46 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %51 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 24
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %56 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @gm200_gr_tile_map_6_24, align 4
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %60 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %58, i32 %61)
  %63 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %64 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %63, i32 0, i32 2
  store i32 5, i32* %64, align 4
  br label %68

65:                                               ; preds = %49, %44
  %66 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %67 = call i32 @gf100_gr_oneinit_tiles(%struct.gf100_gr* %66)
  br label %68

68:                                               ; preds = %65, %54
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %12
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @gf100_gr_oneinit_tiles(%struct.gf100_gr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
