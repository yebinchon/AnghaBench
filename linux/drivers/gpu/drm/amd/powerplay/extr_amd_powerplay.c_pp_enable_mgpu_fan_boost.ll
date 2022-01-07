; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_enable_mgpu_fan_boost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_enable_mgpu_fan_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pp_hwmgr*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pp_enable_mgpu_fan_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_enable_mgpu_fan_boost(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pp_hwmgr*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %6, %struct.pp_hwmgr** %4, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %8 = icmp ne %struct.pp_hwmgr* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %21, align 8
  %23 = icmp eq i32 (%struct.pp_hwmgr*)* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %12
  store i32 0, i32* %2, align 4
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.pp_hwmgr*)*, i32 (%struct.pp_hwmgr*)** %32, align 8
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %35 = call i32 %33(%struct.pp_hwmgr* %34)
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %25, %24, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
