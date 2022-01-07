; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headnv50.c_nv50_head_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headnv50.c_nv50_head_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_head = type { i32, %struct.nvkm_head_state, %struct.TYPE_6__* }
%struct.nvkm_head_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_head*, %struct.nvkm_head_state*)* @nv50_head_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_head_state(%struct.nvkm_head* %0, %struct.nvkm_head_state* %1) #0 {
  %3 = alloca %struct.nvkm_head*, align 8
  %4 = alloca %struct.nvkm_head_state*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_head* %0, %struct.nvkm_head** %3, align 8
  store %struct.nvkm_head_state* %1, %struct.nvkm_head_state** %4, align 8
  %8 = load %struct.nvkm_head*, %struct.nvkm_head** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_head*, %struct.nvkm_head** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 1344
  %19 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %20 = load %struct.nvkm_head*, %struct.nvkm_head** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %20, i32 0, i32 1
  %22 = icmp eq %struct.nvkm_head_state* %19, %21
  %23 = zext i1 %22 to i32
  %24 = mul nsw i32 %23, 4
  %25 = add nsw i32 %18, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 6359784, %27
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, -65536
  %32 = lshr i32 %31, 16
  %33 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65535
  %37 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %38 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 6359792, %40
  %42 = call i32 @nvkm_rd32(%struct.nvkm_device* %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, -65536
  %45 = lshr i32 %44, 16
  %46 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %47 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 65535
  %50 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %51 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 6359800, %53
  %55 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -65536
  %58 = lshr i32 %57, 16
  %59 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %60 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 65535
  %63 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 6359808, %66
  %68 = call i32 @nvkm_rd32(%struct.nvkm_device* %65, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, -65536
  %71 = lshr i32 %70, 16
  %72 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %73 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 65535
  %76 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %77 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 6359760, %79
  %81 = call i32 @nvkm_rd32(%struct.nvkm_device* %78, i32 %80)
  %82 = and i32 %81, 4194303
  %83 = mul nsw i32 %82, 1000
  %84 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %85 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
