; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_class_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_class_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nvkm_oclass = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.gk104_fifo = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo*, i32, %struct.nvkm_oclass*)* @gk104_fifo_class_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_fifo_class_get(%struct.nvkm_fifo* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.gk104_fifo*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %10 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %5, align 8
  %11 = call %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo* %10)
  store %struct.gk104_fifo* %11, %struct.gk104_fifo** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %26 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %34 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %38 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %37, i32 0, i32 0
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  store i32 0, i32* %4, align 4
  br label %69

39:                                               ; preds = %19, %3
  %40 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %41 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %54 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %60 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.gk104_fifo*, %struct.gk104_fifo** %8, align 8
  %62 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %66 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %65, i32 0, i32 0
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  store i32 0, i32* %4, align 4
  br label %69

67:                                               ; preds = %47, %39
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %52, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.gk104_fifo* @gk104_fifo(%struct.nvkm_fifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
