; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_set_asic_baco_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_set_asic_baco_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pp_hwmgr*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pp_set_asic_baco_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_set_asic_baco_state(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %8, %struct.pp_hwmgr** %6, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %10 = icmp ne %struct.pp_hwmgr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.pp_hwmgr*, i32)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %34, align 8
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %35(%struct.pp_hwmgr* %36, i32 %37)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %27, %26, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
