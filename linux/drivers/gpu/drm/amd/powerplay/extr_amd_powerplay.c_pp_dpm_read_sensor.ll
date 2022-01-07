; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amd_powerplay.c_pp_dpm_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*)* @pp_dpm_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_dpm_read_sensor(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pp_hwmgr*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.pp_hwmgr*
  store %struct.pp_hwmgr* %13, %struct.pp_hwmgr** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %15 = icmp ne %struct.pp_hwmgr* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %16, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %57 [
    i32 128, label %29
    i32 129, label %35
    i32 130, label %41
    i32 131, label %49
  ]

29:                                               ; preds = %27
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %75

35:                                               ; preds = %27
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %37 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %75

41:                                               ; preds = %27
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %75

49:                                               ; preds = %27
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %75

57:                                               ; preds = %27
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (%struct.pp_hwmgr*, i32, i8*, i32*)*, i32 (%struct.pp_hwmgr*, i32, i8*, i32*)** %64, align 8
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 %65(%struct.pp_hwmgr* %66, i32 %67, i8* %68, i32* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %10, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %57, %49, %41, %35, %29, %24
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
