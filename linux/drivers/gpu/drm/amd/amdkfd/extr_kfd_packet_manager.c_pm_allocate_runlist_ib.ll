; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_allocate_runlist_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_allocate_runlist_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate runlist IB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_manager*, i32**, i32*, i32*, i32*)* @pm_allocate_runlist_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_allocate_runlist_ib(%struct.packet_manager* %0, i32** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_manager*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %14 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %69

21:                                               ; preds = %5
  %22 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @pm_calc_rlib_size(%struct.packet_manager* %22, i32* %23, i32* %24)
  %26 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %27 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %30 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %37 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %36, i32 0, i32 2
  %38 = call i32 @kfd_gtt_sa_allocate(i32 %33, i32 %35, %struct.TYPE_4__** %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %21
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %64

43:                                               ; preds = %21
  %44 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %45 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32**, i32*** %8, align 8
  %50 = bitcast i32** %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %52 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32* %58, i32 0, i32 %60)
  %62 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %63 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %43, %41
  %65 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %66 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %18
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pm_calc_rlib_size(%struct.packet_manager*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfd_gtt_sa_allocate(i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
