; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nv50_head_atom = type { %struct.nv50_head_mode }
%struct.nv50_head_mode = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nv50_dmac }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head*, %struct.nv50_head_atom*)* @headc57d_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @headc57d_mode(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca %struct.nv50_head_mode*, align 8
  %7 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %8 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_12__* @nv50_disp(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.nv50_dmac* %16, %struct.nv50_dmac** %5, align 8
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 0
  store %struct.nv50_head_mode* %18, %struct.nv50_head_mode** %6, align 8
  %19 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %20 = call i32* @evo_wait(%struct.nv50_dmac* %19, i32 12)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %132

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %25 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1024
  %29 = add nsw i32 8292, %28
  %30 = call i32 @evo_mthd(i32* %23, i32 %29, i32 5)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %33 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %38 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %36, %40
  %42 = call i32 @evo_data(i32* %31, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %45 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %50 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %48, %52
  %54 = call i32 @evo_data(i32* %43, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %57 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %62 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %60, %64
  %66 = call i32 @evo_data(i32* %55, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %69 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %74 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %72, %76
  %78 = call i32 @evo_data(i32* %67, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %81 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %86 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %84, %88
  %90 = call i32 @evo_data(i32* %79, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %93 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 1024
  %97 = add nsw i32 8204, %96
  %98 = call i32 @evo_mthd(i32* %91, i32 %97, i32 1)
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %101 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 1000
  %104 = call i32 @evo_data(i32* %99, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %107 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 1024
  %111 = add nsw i32 8232, %110
  %112 = call i32 @evo_mthd(i32* %105, i32 %111, i32 1)
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %115 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 1000
  %118 = call i32 @evo_data(i32* %113, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %121 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 1024
  %125 = add nsw i32 8240, %124
  %126 = call i32 @evo_mthd(i32* %119, i32 %125, i32 1)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @evo_data(i32* %127, i32 4116)
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %131 = call i32 @evo_kick(i32* %129, %struct.nv50_dmac* %130)
  br label %132

132:                                              ; preds = %22, %2
  ret void
}

declare dso_local %struct.TYPE_12__* @nv50_disp(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_dmac*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_dmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
