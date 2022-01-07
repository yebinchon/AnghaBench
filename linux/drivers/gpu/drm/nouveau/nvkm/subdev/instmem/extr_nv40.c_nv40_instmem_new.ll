; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instmem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv40.c_nv40_instmem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)* }
%struct.nvkm_instmem = type { i32 }
%struct.nv40_instmem = type { %struct.nvkm_instmem, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv40_instmem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to map PRAMIN BAR\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_instmem_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_instmem** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_instmem**, align 8
  %8 = alloca %struct.nv40_instmem*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_instmem** %2, %struct.nvkm_instmem*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nv40_instmem* @kzalloc(i32 8, i32 %10)
  store %struct.nv40_instmem* %11, %struct.nv40_instmem** %8, align 8
  %12 = icmp ne %struct.nv40_instmem* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %67

16:                                               ; preds = %3
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.nv40_instmem*, %struct.nv40_instmem** %8, align 8
  %20 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %19, i32 0, i32 0
  %21 = call i32 @nvkm_instmem_ctor(i32* @nv40_instmem, %struct.nvkm_device* %17, i32 %18, %struct.nvkm_instmem* %20)
  %22 = load %struct.nv40_instmem*, %struct.nv40_instmem** %8, align 8
  %23 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %22, i32 0, i32 0
  %24 = load %struct.nvkm_instmem**, %struct.nvkm_instmem*** %7, align 8
  store %struct.nvkm_instmem* %23, %struct.nvkm_instmem** %24, align 8
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %28, align 8
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %31 = call i32 %29(%struct.nvkm_device* %30, i32 2)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i32 2, i32* %9, align 4
  br label %35

34:                                               ; preds = %16
  store i32 3, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %39, align 8
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %40(%struct.nvkm_device* %41, i32 %42)
  %44 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %45 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %47, align 8
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %48(%struct.nvkm_device* %49, i32 %50)
  %52 = call i32 @ioremap_wc(i32 %43, i32 %51)
  %53 = load %struct.nv40_instmem*, %struct.nv40_instmem** %8, align 8
  %54 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nv40_instmem*, %struct.nv40_instmem** %8, align 8
  %56 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %35
  %60 = load %struct.nv40_instmem*, %struct.nv40_instmem** %8, align 8
  %61 = getelementptr inbounds %struct.nv40_instmem, %struct.nv40_instmem* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %61, i32 0, i32 0
  %63 = call i32 @nvkm_error(i32* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EFAULT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %59, %13
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.nv40_instmem* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_instmem_ctor(i32*, %struct.nvkm_device*, i32, %struct.nvkm_instmem*) #1

declare dso_local i32 @ioremap_wc(i32, i32) #1

declare dso_local i32 @nvkm_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
