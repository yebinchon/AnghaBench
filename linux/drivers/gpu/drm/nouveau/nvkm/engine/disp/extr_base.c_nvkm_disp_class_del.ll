; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_class_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_base.c_nvkm_disp_class_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oproxy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_disp = type { %struct.TYPE_6__, %struct.nvkm_oproxy* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_oproxy*)* @nvkm_disp_class_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_disp_class_del(%struct.nvkm_oproxy* %0) #0 {
  %2 = alloca %struct.nvkm_oproxy*, align 8
  %3 = alloca %struct.nvkm_disp*, align 8
  store %struct.nvkm_oproxy* %0, %struct.nvkm_oproxy** %2, align 8
  %4 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nvkm_disp* @nvkm_disp(i32 %7)
  store %struct.nvkm_disp* %8, %struct.nvkm_disp** %3, align 8
  %9 = load %struct.nvkm_disp*, %struct.nvkm_disp** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.nvkm_disp*, %struct.nvkm_disp** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %14, i32 0, i32 1
  %16 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %15, align 8
  %17 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %2, align 8
  %18 = icmp eq %struct.nvkm_oproxy* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.nvkm_disp*, %struct.nvkm_disp** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %20, i32 0, i32 1
  store %struct.nvkm_oproxy* null, %struct.nvkm_oproxy** %21, align 8
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.nvkm_disp*, %struct.nvkm_disp** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local %struct.nvkm_disp* @nvkm_disp(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
