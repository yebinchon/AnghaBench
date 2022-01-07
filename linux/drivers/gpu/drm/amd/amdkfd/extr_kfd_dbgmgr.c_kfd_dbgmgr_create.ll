; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_dbgmgr.c_kfd_dbgmgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dbgmgr = type { %struct.kfd_dbgmgr*, %struct.kfd_dev*, i64 }
%struct.kfd_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@DBGDEV_TYPE_DIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate dbgmgr instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to allocate dbgdev instance\0A\00", align 1
@KFD_SCHED_POLICY_NO_HWS = common dso_local global i64 0, align 8
@DBGDEV_TYPE_NODIQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_dbgmgr_create(%struct.kfd_dbgmgr** %0, %struct.kfd_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kfd_dbgmgr**, align 8
  %5 = alloca %struct.kfd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kfd_dbgmgr*, align 8
  store %struct.kfd_dbgmgr** %0, %struct.kfd_dbgmgr*** %4, align 8
  store %struct.kfd_dev* %1, %struct.kfd_dev** %5, align 8
  %8 = load i32, i32* @DBGDEV_TYPE_DIQ, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %10 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %20 = call i8* @kfd_alloc_struct(%struct.kfd_dbgmgr* %19)
  %21 = bitcast i8* %20 to %struct.kfd_dbgmgr*
  store %struct.kfd_dbgmgr* %21, %struct.kfd_dbgmgr** %7, align 8
  %22 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %23 = icmp ne %struct.kfd_dbgmgr* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %66

26:                                               ; preds = %18
  %27 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %28 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %30 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %31 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %30, i32 0, i32 1
  store %struct.kfd_dev* %29, %struct.kfd_dev** %31, align 8
  %32 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %32, i32 0, i32 0
  %34 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %33, align 8
  %35 = call i8* @kfd_alloc_struct(%struct.kfd_dbgmgr* %34)
  %36 = bitcast i8* %35 to %struct.kfd_dbgmgr*
  %37 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %38 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %37, i32 0, i32 0
  store %struct.kfd_dbgmgr* %36, %struct.kfd_dbgmgr** %38, align 8
  %39 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %40 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %39, i32 0, i32 0
  %41 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %40, align 8
  %42 = icmp ne %struct.kfd_dbgmgr* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %26
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %46 = call i32 @kfree(%struct.kfd_dbgmgr* %45)
  store i32 0, i32* %3, align 4
  br label %66

47:                                               ; preds = %26
  %48 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %49 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @KFD_SCHED_POLICY_NO_HWS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @DBGDEV_TYPE_NODIQ, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %47
  %58 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %59 = getelementptr inbounds %struct.kfd_dbgmgr, %struct.kfd_dbgmgr* %58, i32 0, i32 0
  %60 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %59, align 8
  %61 = load %struct.kfd_dev*, %struct.kfd_dev** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @kfd_dbgdev_init(%struct.kfd_dbgmgr* %60, %struct.kfd_dev* %61, i32 %62)
  %64 = load %struct.kfd_dbgmgr*, %struct.kfd_dbgmgr** %7, align 8
  %65 = load %struct.kfd_dbgmgr**, %struct.kfd_dbgmgr*** %4, align 8
  store %struct.kfd_dbgmgr* %64, %struct.kfd_dbgmgr** %65, align 8
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %43, %24, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @kfd_alloc_struct(%struct.kfd_dbgmgr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.kfd_dbgmgr*) #1

declare dso_local i32 @kfd_dbgdev_init(%struct.kfd_dbgmgr*, %struct.kfd_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
