; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32*, %struct.a6xx_gmu_bo* }
%struct.a6xx_gmu_bo = type { i32, %struct.a6xx_hfi_queue_table_header* }
%struct.a6xx_hfi_queue_table_header = type { i32, i32, i32, i32, i32, i64 }
%struct.a6xx_hfi_queue_header = type { i32, i32, i32, i32, i32, i64 }

@SZ_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a6xx_hfi_init(%struct.a6xx_gmu* %0) #0 {
  %2 = alloca %struct.a6xx_gmu*, align 8
  %3 = alloca %struct.a6xx_gmu_bo*, align 8
  %4 = alloca %struct.a6xx_hfi_queue_table_header*, align 8
  %5 = alloca %struct.a6xx_hfi_queue_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %2, align 8
  %8 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %9 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %8, i32 0, i32 1
  %10 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %9, align 8
  store %struct.a6xx_gmu_bo* %10, %struct.a6xx_gmu_bo** %3, align 8
  %11 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %12 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %11, i32 0, i32 1
  %13 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %12, align 8
  store %struct.a6xx_hfi_queue_table_header* %13, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %14 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %15 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %14, i32 0, i32 1
  %16 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %15, align 8
  %17 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %16, i64 32
  %18 = bitcast %struct.a6xx_hfi_queue_table_header* %17 to %struct.a6xx_hfi_queue_header*
  store %struct.a6xx_hfi_queue_header* %18, %struct.a6xx_hfi_queue_header** %5, align 8
  store i32 32, i32* %7, align 4
  %19 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %20 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 32
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %30 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %33 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %35 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %34, i32 0, i32 1
  store i32 8, i32* %35, align 4
  %36 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %37 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %36, i32 0, i32 2
  store i32 8, i32* %37, align 8
  %38 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %39 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %43 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %45 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %4, align 8
  %49 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @SZ_4K, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %52 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %5, align 8
  %56 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %55, i64 0
  %57 = bitcast %struct.a6xx_hfi_queue_header* %56 to %struct.a6xx_hfi_queue_table_header*
  %58 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %59 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %58, i32 0, i32 1
  %60 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %60, i64 %62
  %64 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %65 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @a6xx_hfi_queue_init(i32* %54, %struct.a6xx_hfi_queue_table_header* %57, %struct.a6xx_hfi_queue_table_header* %63, i32 %68, i32 0)
  %70 = load i32, i32* @SZ_4K, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %2, align 8
  %74 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %5, align 8
  %78 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %77, i64 1
  %79 = bitcast %struct.a6xx_hfi_queue_header* %78 to %struct.a6xx_hfi_queue_table_header*
  %80 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %81 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %80, i32 0, i32 1
  %82 = load %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, %struct.a6xx_hfi_queue_table_header* %82, i64 %84
  %86 = load %struct.a6xx_gmu_bo*, %struct.a6xx_gmu_bo** %3, align 8
  %87 = getelementptr inbounds %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @a6xx_hfi_queue_init(i32* %76, %struct.a6xx_hfi_queue_table_header* %79, %struct.a6xx_hfi_queue_table_header* %85, i32 %90, i32 4)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @a6xx_hfi_queue_init(i32*, %struct.a6xx_hfi_queue_table_header*, %struct.a6xx_hfi_queue_table_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
