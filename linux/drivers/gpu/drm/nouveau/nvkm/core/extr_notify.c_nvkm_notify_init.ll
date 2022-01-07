; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_notify.c_nvkm_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_event = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_object*, i8*, i64, %struct.nvkm_notify*)* }
%struct.nvkm_notify = type { i64, i32, i32 (%struct.nvkm_notify*)*, %struct.nvkm_event*, i32, i32*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nvkm_notify_work = common dso_local global i32 0, align 4
@NVKM_NOTIFY_WORK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_notify_init(%struct.nvkm_object* %0, %struct.nvkm_event* %1, i32 (%struct.nvkm_notify*)* %2, i32 %3, i8* %4, i64 %5, i64 %6, %struct.nvkm_notify* %7) #0 {
  %9 = alloca %struct.nvkm_object*, align 8
  %10 = alloca %struct.nvkm_event*, align 8
  %11 = alloca i32 (%struct.nvkm_notify*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.nvkm_notify*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %9, align 8
  store %struct.nvkm_event* %1, %struct.nvkm_event** %10, align 8
  store i32 (%struct.nvkm_notify*)* %2, i32 (%struct.nvkm_notify*)** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.nvkm_notify* %7, %struct.nvkm_notify** %16, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %18, align 4
  %21 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %22 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %23 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %22, i32 0, i32 3
  store %struct.nvkm_event* %21, %struct.nvkm_event** %23, align 8
  %24 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %25 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %102

28:                                               ; preds = %8
  %29 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %30 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nvkm_object*, i8*, i64, %struct.nvkm_notify*)*, i32 (%struct.nvkm_object*, i8*, i64, %struct.nvkm_notify*)** %32, align 8
  %34 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %38 = call i32 %33(%struct.nvkm_object* %34, i8* %35, i64 %36, %struct.nvkm_notify* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %18, align 4
  %44 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %45 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %15, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %41
  %50 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %51 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %53 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  %54 = load i32 (%struct.nvkm_notify*)*, i32 (%struct.nvkm_notify*)** %11, align 8
  %55 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %56 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %55, i32 0, i32 2
  store i32 (%struct.nvkm_notify*)* %54, i32 (%struct.nvkm_notify*)** %56, align 8
  %57 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %58 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  store i32 0, i32* %18, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %49
  %62 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %63 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %62, i32 0, i32 7
  %64 = load i32, i32* @nvkm_notify_work, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load i32, i32* @NVKM_NOTIFY_WORK, align 4
  %67 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %68 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %67, i32 0, i32 6
  %69 = call i32 @set_bit(i32 %66, i64* %68)
  %70 = load i64, i64* %15, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32* @kmalloc(i64 %70, i32 %71)
  %73 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %74 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %76 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %61
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %79, %61
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %41, %28
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %89 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %88, i32 0, i32 0
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %93 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %92, i32 0, i32 4
  %94 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %95 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %94, i32 0, i32 1
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  %97 = load %struct.nvkm_event*, %struct.nvkm_event** %10, align 8
  %98 = getelementptr inbounds %struct.nvkm_event, %struct.nvkm_event* %97, i32 0, i32 0
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %87, %84
  br label %102

102:                                              ; preds = %101, %8
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.nvkm_notify*, %struct.nvkm_notify** %16, align 8
  %107 = getelementptr inbounds %struct.nvkm_notify, %struct.nvkm_notify* %106, i32 0, i32 3
  store %struct.nvkm_event* null, %struct.nvkm_event** %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %18, align 4
  ret i32 %109
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
