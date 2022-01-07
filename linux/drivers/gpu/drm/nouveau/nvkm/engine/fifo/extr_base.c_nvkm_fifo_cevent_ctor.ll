; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_cevent_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_cevent_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_notify = type { i32, i64, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i64, %struct.nvkm_notify*)* @nvkm_fifo_cevent_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fifo_cevent_ctor(%struct.nvkm_object* %0, i8* %1, i64 %2, %struct.nvkm_notify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_notify*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nvkm_notify* %3, %struct.nvkm_notify** %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %14 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %16 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nvkm_notify*, %struct.nvkm_notify** %9, align 8
  %18 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
