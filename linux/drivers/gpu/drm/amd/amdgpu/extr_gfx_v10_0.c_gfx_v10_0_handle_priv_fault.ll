; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_handle_priv_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_handle_priv_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.amdgpu_iv_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_iv_entry*)* @gfx_v10_0_handle_priv_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_handle_priv_fault(%struct.amdgpu_device* %0, %struct.amdgpu_iv_entry* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_iv_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_iv_entry* %1, %struct.amdgpu_iv_entry** %4, align 8
  %10 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 12
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %5, align 4
  %15 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 3
  %19 = ashr i32 %18, 0
  store i32 %19, i32* %6, align 4
  %20 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 112
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %104 [
    i32 0, label %26
    i32 1, label %62
    i32 2, label %62
  ]

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i64 %40
  store %struct.amdgpu_ring* %41, %struct.amdgpu_ring** %8, align 8
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %34
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 3
  %56 = call i32 @drm_sched_fault(i32* %55)
  br label %57

57:                                               ; preds = %53, %47, %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %27

61:                                               ; preds = %27
  br label %106

62:                                               ; preds = %2, %2
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %100, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %63
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %74, i64 %76
  store %struct.amdgpu_ring* %77, %struct.amdgpu_ring** %8, align 8
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %70
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %96, i32 0, i32 3
  %98 = call i32 @drm_sched_fault(i32* %97)
  br label %99

99:                                               ; preds = %95, %89, %83, %70
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %63

103:                                              ; preds = %63
  br label %106

104:                                              ; preds = %2
  %105 = call i32 (...) @BUG()
  br label %106

106:                                              ; preds = %104, %103, %61
  ret void
}

declare dso_local i32 @drm_sched_fault(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
