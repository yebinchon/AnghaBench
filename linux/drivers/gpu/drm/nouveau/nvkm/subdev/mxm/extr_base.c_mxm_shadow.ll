; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_mxm_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_mxm_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxm_shadow_h = type { i64 (%struct.nvkm_mxm*, i32)*, i64 }
%struct.nvkm_mxm = type { i32*, i32 }

@_mxm_shadow = common dso_local global %struct.mxm_shadow_h* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"checking %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mxm*, i32)* @mxm_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_shadow(%struct.nvkm_mxm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_mxm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxm_shadow_h*, align 8
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** @_mxm_shadow, align 8
  store %struct.mxm_shadow_h* %7, %struct.mxm_shadow_h** %6, align 8
  br label %8

8:                                                ; preds = %35, %2
  %9 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %9, i32 0, i32 1
  %11 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %12 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @nvkm_debug(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %16 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %15, i32 0, i32 0
  %17 = load i64 (%struct.nvkm_mxm*, i32)*, i64 (%struct.nvkm_mxm*, i32)** %16, align 8
  %18 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 %17(%struct.nvkm_mxm* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %8
  %23 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %24 = call i64 @mxms_valid(%struct.nvkm_mxm* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

27:                                               ; preds = %22
  %28 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %8
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.mxm_shadow_h*, %struct.mxm_shadow_h** %6, align 8
  %37 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %36, i32 1
  store %struct.mxm_shadow_h* %37, %struct.mxm_shadow_h** %6, align 8
  %38 = getelementptr inbounds %struct.mxm_shadow_h, %struct.mxm_shadow_h* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %8, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @nvkm_debug(i32*, i8*, i64) #1

declare dso_local i64 @mxms_valid(%struct.nvkm_mxm*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
