; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_msgqueue_0137bca5_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue_0137c63d.c_msgqueue_0137bca5_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32 }
%struct.nvkm_secboot = type { i32 }
%struct.nvkm_msgqueue = type { i32 }
%struct.msgqueue_0137bca5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_msgqueue }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msgqueue_0137bca5_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgqueue_0137bca5_new(%struct.nvkm_falcon* %0, %struct.nvkm_secboot* %1, %struct.nvkm_msgqueue** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_falcon*, align 8
  %6 = alloca %struct.nvkm_secboot*, align 8
  %7 = alloca %struct.nvkm_msgqueue**, align 8
  %8 = alloca %struct.msgqueue_0137bca5*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %5, align 8
  store %struct.nvkm_secboot* %1, %struct.nvkm_secboot** %6, align 8
  store %struct.nvkm_msgqueue** %2, %struct.nvkm_msgqueue*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.msgqueue_0137bca5* @kzalloc(i32 4, i32 %9)
  store %struct.msgqueue_0137bca5* %10, %struct.msgqueue_0137bca5** %8, align 8
  %11 = load %struct.msgqueue_0137bca5*, %struct.msgqueue_0137bca5** %8, align 8
  %12 = icmp ne %struct.msgqueue_0137bca5* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load %struct.msgqueue_0137bca5*, %struct.msgqueue_0137bca5** %8, align 8
  %18 = getelementptr inbounds %struct.msgqueue_0137bca5, %struct.msgqueue_0137bca5* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %7, align 8
  store %struct.nvkm_msgqueue* %19, %struct.nvkm_msgqueue** %20, align 8
  %21 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %5, align 8
  %22 = load %struct.msgqueue_0137bca5*, %struct.msgqueue_0137bca5** %8, align 8
  %23 = getelementptr inbounds %struct.msgqueue_0137bca5, %struct.msgqueue_0137bca5* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @nvkm_msgqueue_ctor(i32* @msgqueue_0137bca5_func, %struct.nvkm_falcon* %21, %struct.nvkm_msgqueue* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.msgqueue_0137bca5* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_msgqueue_ctor(i32*, %struct.nvkm_falcon*, %struct.nvkm_msgqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
