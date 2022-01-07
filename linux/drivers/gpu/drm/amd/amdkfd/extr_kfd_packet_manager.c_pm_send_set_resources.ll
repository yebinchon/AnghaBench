; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_set_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_set_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32**)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.packet_manager*, i32*, %struct.scheduling_resources*)* }
%struct.scheduling_resources = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate buffer on kernel queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_send_set_resources(%struct.packet_manager* %0, %struct.scheduling_resources* %1) #0 {
  %3 = alloca %struct.packet_manager*, align 8
  %4 = alloca %struct.scheduling_resources*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %3, align 8
  store %struct.scheduling_resources* %1, %struct.scheduling_resources** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %9 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %14 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %17 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32 (%struct.TYPE_8__*, i32, i32**)*, i32 (%struct.TYPE_8__*, i32, i32**)** %20, align 8
  %22 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %23 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32 %21(%struct.TYPE_8__* %24, i32 %28, i32** %5)
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %71

36:                                               ; preds = %2
  %37 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %38 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32 (%struct.packet_manager*, i32*, %struct.scheduling_resources*)*, i32 (%struct.packet_manager*, i32*, %struct.scheduling_resources*)** %40, align 8
  %42 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.scheduling_resources*, %struct.scheduling_resources** %4, align 8
  %45 = call i32 %41(%struct.packet_manager* %42, i32* %43, %struct.scheduling_resources* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %36
  %49 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %50 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %53, align 8
  %55 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %56 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 %54(%struct.TYPE_8__* %57)
  br label %70

59:                                               ; preds = %36
  %60 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %61 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %64, align 8
  %66 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %67 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 %65(%struct.TYPE_8__* %68)
  br label %70

70:                                               ; preds = %59, %48
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.packet_manager*, %struct.packet_manager** %3, align 8
  %73 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
