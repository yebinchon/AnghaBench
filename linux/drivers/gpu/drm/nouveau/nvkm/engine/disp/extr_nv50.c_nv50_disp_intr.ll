; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_intr(%struct.nv50_disp* %0) #0 {
  %2 = alloca %struct.nv50_disp*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nv50_disp* %0, %struct.nv50_disp** %2, align 8
  %8 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %3, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 6357024)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 6357028)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %22, %1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 2031616
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 2031616
  %25 = call i32 @__ffs(i32 %24)
  %26 = sub nsw i32 %25, 16
  store i32 %26, i32* %6, align 4
  %27 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @nv50_disp_intr_error(%struct.nv50_disp* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 65536, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 31
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 31
  %43 = call i32 @__ffs(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @nv50_disp_chan_uevent_send(%struct.nv50_disp* %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %58 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %57, i32 0, i32 3
  %59 = call i32 @nvkm_disp_vblank(%struct.TYPE_6__* %58, i32 0)
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %61 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 6357028, i32 4)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %68 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %67, i32 0, i32 3
  %69 = call i32 @nvkm_disp_vblank(%struct.TYPE_6__* %68, i32 1)
  %70 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %70, i32 6357028, i32 8)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 112
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 112
  %79 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %80 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %82 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %85 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %84, i32 0, i32 1
  %86 = call i32 @queue_work(i32 %83, i32* %85)
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %88 = load %struct.nv50_disp*, %struct.nv50_disp** %2, align 8
  %89 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 6357028, i32 %90)
  br label %92

92:                                               ; preds = %76, %72
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @nv50_disp_intr_error(%struct.nv50_disp*, i32) #1

declare dso_local i32 @nv50_disp_chan_uevent_send(%struct.nv50_disp*, i32) #1

declare dso_local i32 @nvkm_disp_vblank(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
