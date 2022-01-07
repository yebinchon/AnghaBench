; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_hfi.c_a6xx_hfi_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_hfi_queue = type { i32, i8*, %struct.a6xx_hfi_queue_header*, i32 }
%struct.a6xx_hfi_queue_header = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32 }

@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue_header*, i8*, i32, i32)* @a6xx_hfi_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_hfi_queue_init(%struct.a6xx_hfi_queue* %0, %struct.a6xx_hfi_queue_header* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.a6xx_hfi_queue*, align 8
  %7 = alloca %struct.a6xx_hfi_queue_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.a6xx_hfi_queue* %0, %struct.a6xx_hfi_queue** %6, align 8
  store %struct.a6xx_hfi_queue_header* %1, %struct.a6xx_hfi_queue_header** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %6, align 8
  %12 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %15 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %6, align 8
  %16 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %15, i32 0, i32 2
  store %struct.a6xx_hfi_queue_header* %14, %struct.a6xx_hfi_queue_header** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %6, align 8
  %19 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.a6xx_hfi_queue*, %struct.a6xx_hfi_queue** %6, align 8
  %21 = getelementptr inbounds %struct.a6xx_hfi_queue, %struct.a6xx_hfi_queue* %20, i32 0, i32 0
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %25 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = or i32 2560, %26
  %28 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %29 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %31 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @SZ_4K, align 4
  %33 = ashr i32 %32, 2
  %34 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %35 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %37 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %39 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %41 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %43 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %42, i32 0, i32 4
  store i32 1, i32* %43, align 8
  %44 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %45 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %44, i32 0, i32 5
  store i32 1, i32* %45, align 4
  %46 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %47 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %49 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.a6xx_hfi_queue_header*, %struct.a6xx_hfi_queue_header** %7, align 8
  %51 = getelementptr inbounds %struct.a6xx_hfi_queue_header, %struct.a6xx_hfi_queue_header* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
