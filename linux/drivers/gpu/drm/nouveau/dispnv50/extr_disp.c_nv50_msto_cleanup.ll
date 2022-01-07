; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_msto_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_msto = type { i32, i32*, %struct.nv50_mstc*, %struct.TYPE_2__ }
%struct.nv50_mstc = type { i32, %struct.nv50_mstm* }
%struct.nv50_mstm = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: msto cleanup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_msto*)* @nv50_msto_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_msto_cleanup(%struct.nv50_msto* %0) #0 {
  %2 = alloca %struct.nv50_msto*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nv50_mstc*, align 8
  %5 = alloca %struct.nv50_mstm*, align 8
  store %struct.nv50_msto* %0, %struct.nv50_msto** %2, align 8
  %6 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %7 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_drm(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %3, align 8
  %11 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %12 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %11, i32 0, i32 2
  %13 = load %struct.nv50_mstc*, %struct.nv50_mstc** %12, align 8
  store %struct.nv50_mstc* %13, %struct.nv50_mstc** %4, align 8
  %14 = load %struct.nv50_mstc*, %struct.nv50_mstc** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %14, i32 0, i32 1
  %16 = load %struct.nv50_mstm*, %struct.nv50_mstm** %15, align 8
  store %struct.nv50_mstm* %16, %struct.nv50_mstm** %5, align 8
  %17 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %18 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %24 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %25 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %30 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %29, i32 0, i32 0
  %31 = load %struct.nv50_mstc*, %struct.nv50_mstc** %4, align 8
  %32 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @drm_dp_mst_deallocate_vcpi(i32* %30, i32 %33)
  %35 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %36 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %35, i32 0, i32 2
  store %struct.nv50_mstc* null, %struct.nv50_mstc** %36, align 8
  %37 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %38 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.nv50_msto*, %struct.nv50_msto** %2, align 8
  %40 = getelementptr inbounds %struct.nv50_msto, %struct.nv50_msto* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @drm_dp_mst_deallocate_vcpi(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
