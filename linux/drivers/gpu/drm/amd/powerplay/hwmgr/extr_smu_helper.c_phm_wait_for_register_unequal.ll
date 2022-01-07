; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_wait_for_register_unequal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_wait_for_register_unequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_wait_for_register_unequal(%struct.pp_hwmgr* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %13 = icmp eq %struct.pp_hwmgr* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @cgs_read_register(i32* %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %48

43:                                               ; preds = %29
  %44 = call i32 @udelay(i32 1)
  br label %45

45:                                               ; preds = %43
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %23

48:                                               ; preds = %42, %23
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ETIME, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @cgs_read_register(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
