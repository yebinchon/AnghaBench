; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_decode_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_decode_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32* }
%struct.amdgpu_iv_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*, %struct.amdgpu_iv_entry*)* @navi10_ih_decode_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @navi10_ih_decode_iv(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ih_ring*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
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
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
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
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
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
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 5
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 %71, i32* %72, align 4
  %73 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 6
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 %81, i32* %82, align 8
  %83 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 7
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = and i32 %94, 255
  %96 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %103 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %109 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = ashr i32 %111, 24
  %113 = and i32 %112, 15
  %114 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %115 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = ashr i32 %117, 31
  %119 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %120 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, 65535
  %126 = shl i32 %125, 32
  %127 = or i32 %122, %126
  %128 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %129 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 31
  %133 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %134 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 65535
  %138 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %139 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 31
  %143 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %144 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 8
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  %146 = load i32, i32* %145, align 16
  %147 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %148 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %147, i32 0, i32 9
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %146, i32* %150, align 4
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %154 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %153, i32 0, i32 9
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %152, i32* %156, align 4
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %160 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %159, i32 0, i32 9
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %158, i32* %162, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %166 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %165, i32 0, i32 9
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 %164, i32* %168, align 4
  %169 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %5, align 8
  %170 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 32
  store i32 %172, i32* %170, align 8
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
