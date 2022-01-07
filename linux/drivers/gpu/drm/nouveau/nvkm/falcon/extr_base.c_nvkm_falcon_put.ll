; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_base.c_nvkm_falcon_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32, %struct.nvkm_subdev*, i32 }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"released %s falcon\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_falcon_put(%struct.nvkm_falcon* %0, %struct.nvkm_subdev* %1) #0 {
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  store %struct.nvkm_subdev* %1, %struct.nvkm_subdev** %4, align 8
  %5 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %6 = icmp ne %struct.nvkm_falcon* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %16, i32 0, i32 1
  %18 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %17, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %20 = icmp eq %struct.nvkm_subdev* %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %22, i32 0, i32 1
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %23, align 8
  %25 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @nvkm_debug(%struct.nvkm_subdev* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %29, i32 0, i32 1
  store %struct.nvkm_subdev* null, %struct.nvkm_subdev** %30, align 8
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %35

35:                                               ; preds = %31, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
