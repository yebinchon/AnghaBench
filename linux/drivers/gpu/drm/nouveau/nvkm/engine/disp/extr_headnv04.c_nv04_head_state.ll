; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headnv04.c_nv04_head_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headnv04.c_nv04_head_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_head = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_head_state = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_head*, %struct.nvkm_head_state*)* @nv04_head_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_head_state(%struct.nvkm_head* %0, %struct.nvkm_head_state* %1) #0 {
  %3 = alloca %struct.nvkm_head*, align 8
  %4 = alloca %struct.nvkm_head_state*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_head* %0, %struct.nvkm_head** %3, align 8
  store %struct.nvkm_head_state* %1, %struct.nvkm_head_state** %4, align 8
  %7 = load %struct.nvkm_head*, %struct.nvkm_head** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load %struct.nvkm_head*, %struct.nvkm_head** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 512
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 6817792, %19
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 %20)
  %22 = and i32 %21, 65535
  %23 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 6817796, %26
  %28 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 %27)
  %29 = and i32 %28, 65535
  %30 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %31 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %37 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 6817824, %39
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %38, i32 %40)
  %42 = and i32 %41, 65535
  %43 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 6817828, %46
  %48 = call i32 @nvkm_rd32(%struct.nvkm_device* %45, i32 %47)
  %49 = and i32 %48, 65535
  %50 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %51 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %53 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.nvkm_head_state*, %struct.nvkm_head_state** %4, align 8
  %57 = getelementptr inbounds %struct.nvkm_head_state, %struct.nvkm_head_state* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
