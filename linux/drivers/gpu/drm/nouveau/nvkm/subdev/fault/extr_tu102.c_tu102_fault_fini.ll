; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_tu102.c_tu102_fault_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_tu102.c_tu102_fault_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault = type { i64*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fault*)* @tu102_fault_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tu102_fault_fini(%struct.nvkm_fault* %0) #0 {
  %2 = alloca %struct.nvkm_fault*, align 8
  store %struct.nvkm_fault* %0, %struct.nvkm_fault** %2, align 8
  %3 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %3, i32 0, i32 2
  %5 = call i32 @nvkm_notify_put(i32* %4)
  %6 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %14 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (i64)*, i32 (i64)** %17, align 8
  %19 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %20 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 %18(i64 %23)
  br label %25

25:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @nvkm_notify_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
