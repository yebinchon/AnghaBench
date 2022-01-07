; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_unmap_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_unmap_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32**)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.packet_manager*, i32*, i32, i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate buffer on kernel queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_send_unmap_queue(%struct.packet_manager* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.packet_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %17 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %22 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %25 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32 (%struct.TYPE_8__*, i32, i32**)*, i32 (%struct.TYPE_8__*, i32, i32**)** %28, align 8
  %30 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %31 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 %29(%struct.TYPE_8__* %32, i32 %36, i32** %13)
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %6
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  br label %83

44:                                               ; preds = %6
  %45 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %46 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32 (%struct.packet_manager*, i32*, i32, i32, i32, i32, i32)*, i32 (%struct.packet_manager*, i32*, i32, i32, i32, i32, i32)** %48, align 8
  %50 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 %49(%struct.packet_manager* %50, i32* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %44
  %61 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %62 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %65, align 8
  %67 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %68 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 %66(%struct.TYPE_8__* %69)
  br label %82

71:                                               ; preds = %44
  %72 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %73 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %76, align 8
  %78 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %79 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 %77(%struct.TYPE_8__* %80)
  br label %82

82:                                               ; preds = %71, %60
  br label %83

83:                                               ; preds = %82, %40
  %84 = load %struct.packet_manager*, %struct.packet_manager** %7, align 8
  %85 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %15, align 4
  ret i32 %87
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
