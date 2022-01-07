; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_power_budget.c_nvbios_power_budget_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_power_budget.c_nvbios_power_budget_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_power_budget = type { i32, i32, i32, i64, i64 }
%struct.nvbios_power_budget_entry = type { i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_power_budget_entry(%struct.nvkm_bios* %0, %struct.nvbios_power_budget* %1, i32 %2, %struct.nvbios_power_budget_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca %struct.nvbios_power_budget*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvbios_power_budget_entry*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store %struct.nvbios_power_budget* %1, %struct.nvbios_power_budget** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvbios_power_budget_entry* %3, %struct.nvbios_power_budget_entry** %9, align 8
  %11 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %12 = icmp ne %struct.nvkm_bios* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %15 = icmp ne %struct.nvbios_power_budget* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %18 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %24 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %29 = icmp ne %struct.nvbios_power_budget_entry* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %21, %16, %13, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %86

33:                                               ; preds = %27
  %34 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %35 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %38 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %43 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  store i64 %47, i64* %10, align 8
  %48 = load %struct.nvbios_power_budget*, %struct.nvbios_power_budget** %7, align 8
  %49 = getelementptr inbounds %struct.nvbios_power_budget, %struct.nvbios_power_budget* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sge i32 %50, 32
  br i1 %51, label %52, label %71

52:                                               ; preds = %33
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 2
  %56 = call i8* @nvbios_rd32(%struct.nvkm_bios* %53, i64 %55)
  %57 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %58 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 6
  %62 = call i8* @nvbios_rd32(%struct.nvkm_bios* %59, i64 %61)
  %63 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %64 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 10
  %68 = call i8* @nvbios_rd32(%struct.nvkm_bios* %65, i64 %67)
  %69 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %70 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %85

71:                                               ; preds = %33
  %72 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %73 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %72, i32 0, i32 2
  store i8* null, i8** %73, align 8
  %74 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 2
  %77 = call i8* @nvbios_rd32(%struct.nvkm_bios* %74, i64 %76)
  %78 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %79 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %81 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.nvbios_power_budget_entry*, %struct.nvbios_power_budget_entry** %9, align 8
  %84 = getelementptr inbounds %struct.nvbios_power_budget_entry, %struct.nvbios_power_budget_entry* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %71, %52
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %30
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i8* @nvbios_rd32(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
