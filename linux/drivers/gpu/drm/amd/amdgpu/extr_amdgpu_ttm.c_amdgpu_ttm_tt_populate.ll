; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_tt_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i8*, i32, i32, i64, i32 }
%struct.ttm_operation_ctx = type { i32 }
%struct.amdgpu_device = type { i32, i64 }
%struct.amdgpu_ttm_tt = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_operation_ctx*)* @amdgpu_ttm_tt_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_tt_populate(%struct.ttm_tt* %0, %struct.ttm_operation_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_operation_ctx*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ttm_tt*, align 8
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %5, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %10 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %11)
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %14 = bitcast %struct.ttm_tt* %13 to i8*
  %15 = bitcast i8* %14 to %struct.amdgpu_ttm_tt*
  store %struct.amdgpu_ttm_tt* %15, %struct.amdgpu_ttm_tt** %7, align 8
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %17 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %7, align 8
  %26 = icmp ne %struct.amdgpu_ttm_tt* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64 @kzalloc(i32 4, i32 %33)
  %35 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %36 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %35, i32 0, i32 4
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %32
  %45 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %46 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %47 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i8*, i8** @tt_unbound, align 8
  %51 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %52 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  store i32 0, i32* %3, align 4
  br label %87

53:                                               ; preds = %27, %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %58 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %63 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %7, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %73 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @drm_prime_sg_to_page_addr_arrays(i64 %64, i32 %67, i32 %71, i32 %74)
  %76 = load i8*, i8** @tt_unbound, align 8
  %77 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %78 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %87

79:                                               ; preds = %56, %53
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.amdgpu_ttm_tt*, %struct.amdgpu_ttm_tt** %7, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ttm_tt, %struct.amdgpu_ttm_tt* %83, i32 0, i32 0
  %85 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %5, align 8
  %86 = call i32 @ttm_populate_and_map_pages(i32 %82, %struct.TYPE_3__* %84, %struct.ttm_operation_ctx* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %61, %44, %41
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(i64, i32, i32, i32) #1

declare dso_local i32 @ttm_populate_and_map_pages(i32, %struct.TYPE_3__*, %struct.ttm_operation_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
