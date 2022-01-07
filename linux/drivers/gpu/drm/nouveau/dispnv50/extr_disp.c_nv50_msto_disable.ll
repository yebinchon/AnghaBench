; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.nv50_msto = type { i32, %struct.TYPE_5__*, %struct.nv50_mstc* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nv50_mstc = type { i32, %struct.nv50_mstm* }
%struct.nv50_mstm = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @nv50_msto_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_msto_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.nv50_msto*, align 8
  %4 = alloca %struct.nv50_mstc*, align 8
  %5 = alloca %struct.nv50_mstm*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.nv50_msto* @nv50_msto(%struct.drm_encoder* %6)
  store %struct.nv50_msto* %7, %struct.nv50_msto** %3, align 8
  %8 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %8, i32 0, i32 2
  %10 = load %struct.nv50_mstc*, %struct.nv50_mstc** %9, align 8
  store %struct.nv50_mstc* %10, %struct.nv50_mstc** %4, align 8
  %11 = load %struct.nv50_mstc*, %struct.nv50_mstc** %4, align 8
  %12 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %11, i32 0, i32 1
  %13 = load %struct.nv50_mstm*, %struct.nv50_mstm** %12, align 8
  store %struct.nv50_mstm* %13, %struct.nv50_mstm** %5, align 8
  %14 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %15 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %14, i32 0, i32 4
  %16 = load %struct.nv50_mstc*, %struct.nv50_mstc** %4, align 8
  %17 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @drm_dp_mst_reset_vcpi_slots(i32* %15, i32 %18)
  %20 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %21 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32*, i32, i32)** %23, align 8
  %25 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %26 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %29 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %24(%struct.TYPE_6__* %27, i32 %33, i32* null, i32 0, i32 0)
  %35 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %36 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %38 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %1
  %43 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %44 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %1
  %46 = load %struct.nv50_msto*, %struct.nv50_msto** %3, align 8
  %47 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  ret void
}

declare dso_local %struct.nv50_msto* @nv50_msto(%struct.drm_encoder*) #1

declare dso_local i32 @drm_dp_mst_reset_vcpi_slots(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
