; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Falcon mem scrubbing timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_falcon*)* @nvkm_falcon_v1_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_falcon_v1_enable(%struct.nvkm_falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_falcon*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %3, align 8
  %6 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 268
  %16 = call i32 @nvkm_wait_msec(%struct.nvkm_device* %11, i32 10, i64 %15, i32 6, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nvkm_error(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %27 = call i32 @falcon_v1_wait_idle(%struct.nvkm_falcon* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %3, align 8
  %34 = call i32 @nvkm_falcon_wr32(%struct.nvkm_falcon* %33, i32 16, i32 255)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %30, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nvkm_wait_msec(%struct.nvkm_device*, i32, i64, i32, i32) #1

declare dso_local i32 @nvkm_error(i32, i8*) #1

declare dso_local i32 @falcon_v1_wait_idle(%struct.nvkm_falcon*) #1

declare dso_local i32 @nvkm_falcon_wr32(%struct.nvkm_falcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
