; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.nouveau_cli*, i32 }
%struct.nouveau_cli = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @nouveau_drm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_open(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_cli*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %13)
  store %struct.nouveau_drm* %14, %struct.nouveau_drm** %6, align 8
  %15 = load i32, i32* @TASK_COMM_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @get_task_comm(i8* %18, i32 %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %36 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %37 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pid_nr(i32 %38)
  %40 = call i32 @snprintf(i8* %35, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.nouveau_cli* @kzalloc(i32 8, i32 %41)
  store %struct.nouveau_cli* %42, %struct.nouveau_cli** %7, align 8
  %43 = icmp ne %struct.nouveau_cli* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %75

47:                                               ; preds = %32
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %50 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %51 = call i32 @nouveau_cli_init(%struct.nouveau_drm* %48, i8* %49, %struct.nouveau_cli* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %75

55:                                               ; preds = %47
  %56 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %57 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  %59 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %61 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %60, i32 0, i32 0
  store %struct.nouveau_cli* %59, %struct.nouveau_cli** %61, align 8
  %62 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %63 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %67 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %66, i32 0, i32 0
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %69 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %68, i32 0, i32 1
  %70 = call i32 @list_add(i32* %67, i32* %69)
  %71 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %55, %54, %44
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %80 = icmp ne %struct.nouveau_cli* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %83 = call i32 @nouveau_cli_fini(%struct.nouveau_cli* %82)
  %84 = load %struct.nouveau_cli*, %struct.nouveau_cli** %7, align 8
  %85 = call i32 @kfree(%struct.nouveau_cli* %84)
  br label %86

86:                                               ; preds = %81, %78, %75
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pm_runtime_mark_last_busy(i32 %89)
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pm_runtime_put_autosuspend(i32 %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %86, %30
  %97 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @get_task_comm(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @pid_nr(i32) #1

declare dso_local %struct.nouveau_cli* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_cli_init(%struct.nouveau_drm*, i8*, %struct.nouveau_cli*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_cli_fini(%struct.nouveau_cli*) #1

declare dso_local i32 @kfree(%struct.nouveau_cli*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
