; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_afmt.c_amdgpu_afmt_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_afmt.c_amdgpu_afmt_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_afmt_acr = type { i64, i32, i32, i32, i32, i32, i32 }

@amdgpu_afmt_predefined_acr = common dso_local global %struct.amdgpu_afmt_acr* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_afmt_acr(%struct.amdgpu_afmt_acr* noalias sret %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.amdgpu_afmt_acr, align 8
  %5 = alloca i64, align 8
  store i64 %1, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.amdgpu_afmt_acr*, %struct.amdgpu_afmt_acr** @amdgpu_afmt_predefined_acr, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.amdgpu_afmt_acr* %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.amdgpu_afmt_acr*, %struct.amdgpu_afmt_acr** @amdgpu_afmt_predefined_acr, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %12, i64 %13
  %15 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.amdgpu_afmt_acr*, %struct.amdgpu_afmt_acr** @amdgpu_afmt_predefined_acr, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %20, i64 %21
  %23 = bitcast %struct.amdgpu_afmt_acr* %0 to i8*
  %24 = bitcast %struct.amdgpu_afmt_acr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 32, i1 false)
  br label %44

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 6
  %32 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 5
  %33 = call i32 @amdgpu_afmt_calc_cts(i64 %30, i32* %31, i32* %32, i32 32000)
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 4
  %36 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 3
  %37 = call i32 @amdgpu_afmt_calc_cts(i64 %34, i32* %35, i32* %36, i32 44100)
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.amdgpu_afmt_acr, %struct.amdgpu_afmt_acr* %4, i32 0, i32 1
  %41 = call i32 @amdgpu_afmt_calc_cts(i64 %38, i32* %39, i32* %40, i32 48000)
  %42 = bitcast %struct.amdgpu_afmt_acr* %0 to i8*
  %43 = bitcast %struct.amdgpu_afmt_acr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  br label %44

44:                                               ; preds = %29, %19
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.amdgpu_afmt_acr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_afmt_calc_cts(i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
