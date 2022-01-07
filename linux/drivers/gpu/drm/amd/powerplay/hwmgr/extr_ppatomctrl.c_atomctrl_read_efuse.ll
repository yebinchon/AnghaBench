; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_read_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_read_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@COMMAND = common dso_local global i32 0, align 4
@ReadEfuseValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomctrl_read_efuse(%struct.pp_hwmgr* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 32
  %19 = mul nsw i32 %18, 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 32
  %26 = mul nsw i32 %25, 32
  %27 = sub nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @COMMAND, align 4
  %45 = load i32, i32* @ReadEfuseValue, align 4
  %46 = call i32 @GetIndexIntoMasterTable(i32 %44, i32 %45)
  %47 = bitcast %struct.TYPE_6__* %13 to i32*
  %48 = call i32 @amdgpu_atom_execute_table(i32 %43, i32 %46, i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %5
  br label %58

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  br label %58

58:                                               ; preds = %52, %51
  %59 = phi i32 [ 0, %51 ], [ %57, %52 ]
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
