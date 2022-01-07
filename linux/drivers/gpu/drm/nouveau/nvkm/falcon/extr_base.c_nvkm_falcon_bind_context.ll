; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_bind_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_bind_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)* }
%struct.nvkm_memory = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Context binding not supported on this falcon!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_falcon_bind_context(%struct.nvkm_falcon* %0, %struct.nvkm_memory* %1) #0 {
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %4, align 8
  %5 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)*, i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)** %8, align 8
  %10 = icmp ne i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nvkm_error(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)*, i32 (%struct.nvkm_falcon*, %struct.nvkm_memory*)** %20, align 8
  %22 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %23 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %24 = call i32 %21(%struct.nvkm_falcon* %22, %struct.nvkm_memory* %23)
  br label %25

25:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @nvkm_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
