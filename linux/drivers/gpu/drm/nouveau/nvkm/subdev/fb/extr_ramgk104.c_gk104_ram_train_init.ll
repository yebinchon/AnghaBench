; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_train_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gk104_ram_train = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*)* @gk104_ram_train_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_train_init(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_ram_train*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  %8 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @nvbios_ramcfg_index(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gk104_ram_train* @kzalloc(i32 4, i32 %13)
  store %struct.gk104_ram_train* %14, %struct.gk104_ram_train** %5, align 8
  %15 = icmp ne %struct.gk104_ram_train* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %28 = call i32 @gk104_ram_train_type(%struct.nvkm_ram* %24, i32 %25, i32 %26, %struct.gk104_ram_train* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %20

41:                                               ; preds = %36, %20
  %42 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %43 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %49 [
    i32 128, label %45
  ]

45:                                               ; preds = %41
  %46 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %47 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %48 = call i32 @gk104_ram_train_init_0(%struct.nvkm_ram* %46, %struct.gk104_ram_train* %47)
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.gk104_ram_train*, %struct.gk104_ram_train** %5, align 8
  %52 = call i32 @kfree(%struct.gk104_ram_train* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @nvbios_ramcfg_index(i32*) #1

declare dso_local %struct.gk104_ram_train* @kzalloc(i32, i32) #1

declare dso_local i32 @gk104_ram_train_type(%struct.nvkm_ram*, i32, i32, %struct.gk104_ram_train*) #1

declare dso_local i32 @gk104_ram_train_init_0(%struct.nvkm_ram*, %struct.gk104_ram_train*) #1

declare dso_local i32 @kfree(%struct.gk104_ram_train*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
