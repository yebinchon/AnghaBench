; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_fecs_start_ctxsw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_fecs_start_ctxsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_fecs_start_ctxsw(%struct.nvkm_gr* %0) #0 {
  %2 = alloca %struct.nvkm_gr*, align 8
  %3 = alloca %struct.gf100_gr*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %2, align 8
  %5 = load %struct.nvkm_gr*, %struct.nvkm_gr** %2, align 8
  %6 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %5)
  store %struct.gf100_gr* %6, %struct.gf100_gr** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %8 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %12 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %1
  %18 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %19 = call i32 @gf100_gr_fecs_ctrl_ctxsw(%struct.gf100_gr* %18, i32 57)
  store i32 %19, i32* %4, align 4
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.gf100_gr*, %struct.gf100_gr** %3, align 8
  %31 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gf100_gr_fecs_ctrl_ctxsw(%struct.gf100_gr*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
