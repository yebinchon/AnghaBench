; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_outp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_outp* (%struct.nvkm_outp*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_outp_del(%struct.nvkm_outp** %0) #0 {
  %2 = alloca %struct.nvkm_outp**, align 8
  %3 = alloca %struct.nvkm_outp*, align 8
  store %struct.nvkm_outp** %0, %struct.nvkm_outp*** %2, align 8
  %4 = load %struct.nvkm_outp**, %struct.nvkm_outp*** %2, align 8
  %5 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  store %struct.nvkm_outp* %5, %struct.nvkm_outp** %3, align 8
  %6 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %7 = icmp ne %struct.nvkm_outp* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %8
  %18 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_outp* (%struct.nvkm_outp*)*, %struct.nvkm_outp* (%struct.nvkm_outp*)** %21, align 8
  %23 = icmp ne %struct.nvkm_outp* (%struct.nvkm_outp*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.nvkm_outp* (%struct.nvkm_outp*)*, %struct.nvkm_outp* (%struct.nvkm_outp*)** %28, align 8
  %30 = load %struct.nvkm_outp*, %struct.nvkm_outp** %3, align 8
  %31 = call %struct.nvkm_outp* %29(%struct.nvkm_outp* %30)
  %32 = load %struct.nvkm_outp**, %struct.nvkm_outp*** %2, align 8
  store %struct.nvkm_outp* %31, %struct.nvkm_outp** %32, align 8
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.nvkm_outp**, %struct.nvkm_outp*** %2, align 8
  %35 = load %struct.nvkm_outp*, %struct.nvkm_outp** %34, align 8
  %36 = call i32 @kfree(%struct.nvkm_outp* %35)
  %37 = load %struct.nvkm_outp**, %struct.nvkm_outp*** %2, align 8
  store %struct.nvkm_outp* null, %struct.nvkm_outp** %37, align 8
  br label %38

38:                                               ; preds = %33, %8, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.nvkm_outp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
