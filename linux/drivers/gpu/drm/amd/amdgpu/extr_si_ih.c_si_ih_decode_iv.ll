; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_ih.c_si_ih_decode_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_ih.c_si_ih_decode_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32* }
%struct.amdgpu_iv_entry = type { i32, i32*, i32, i32, i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*, %struct.amdgpu_iv_entry*)* @si_ih_decode_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_ih_decode_iv(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ih_ring*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %9 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 2
  store i32 %12, i32* %7, align 4
  %13 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 0
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %54 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = and i32 %57, 255
  %59 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %60 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 268435455
  %64 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %65 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 255
  %71 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %72 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 16
  store i32 %82, i32* %80, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
