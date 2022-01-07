; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_smu_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_smu_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32*, i64 }
%struct.smu7_smumgr = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_smu_fini(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %7, %struct.smu7_smumgr** %3, align 8
  %8 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %9 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %12 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @amdgpu_bo_free_kernel(i32* %10, i32* %13, i32* %16)
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %24 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %27 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %30 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @amdgpu_bo_free_kernel(i32* %25, i32* %28, i32* %31)
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %35 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %3, align 8
  %39 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  ret i32 0
}

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
