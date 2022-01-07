; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_power_budget.c_nvbios_power_budget_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_power_budget.c_nvbios_power_budget_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvbios_power_budget = type { i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"invalid cap_entry in power budget table found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_power_budget_header(%struct.nvkm_bios* %0, %struct.nvbios_power_budget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvbios_power_budget*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.nvbios_power_budget* %1, %struct.nvbios_power_budget** %5, align 8
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %6, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %16 = icmp ne %struct.nvkm_bios* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %19 = icmp ne %struct.nvbios_power_budget* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %17
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %25 = call i64 @nvbios_power_budget_table(%struct.nvkm_bios* %24, i32* %7, i32* %8, i32* %9, i32* %10)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %46 [
    i32 32, label %36
    i32 48, label %41
  ]

36:                                               ; preds = %34
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %38 = load i64, i64* %12, align 8
  %39 = add nsw i64 %38, 9
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %37, i64 %39)
  store i32 %40, i32* %11, align 4
  br label %47

41:                                               ; preds = %34
  %42 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add nsw i64 %43, 10
  %45 = call i32 @nvbios_rd08(%struct.nvkm_bios* %42, i64 %44)
  store i32 %45, i32* %11, align 4
  br label %47

46:                                               ; preds = %34
  store i32 255, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %41, %36
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 255
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %56 = call i32 @nvkm_warn(%struct.nvkm_subdev* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %58 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %57, i32 0, i32 0
  store i32 255, i32* %58, align 8
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %80

61:                                               ; preds = %51, %47
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %64 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %67 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %70 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %73 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %76 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %5, align 8
  %79 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %61, %54, %31, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @nvbios_power_budget_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
