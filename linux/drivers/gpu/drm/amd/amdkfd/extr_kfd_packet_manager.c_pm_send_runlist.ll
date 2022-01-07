; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_runlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_runlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i64, i32**)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.packet_manager*, i32*, i32, i64, i32)* }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"runlist IB address: 0x%llX\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_send_runlist(%struct.packet_manager* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %11 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call i32 @pm_create_runlist_ib(%struct.packet_manager* %11, %struct.list_head* %12, i32* %6, i64* %8)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %89

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %21 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  store i64 %26, i64* %9, align 8
  %27 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %28 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %31 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*, i64, i32**)*, i32 (%struct.TYPE_8__*, i64, i32**)** %34, align 8
  %36 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %37 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 %35(%struct.TYPE_8__* %38, i64 %39, i32** %7)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %17
  br label %85

44:                                               ; preds = %17
  %45 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %46 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32 (%struct.packet_manager*, i32*, i32, i64, i32)*, i32 (%struct.packet_manager*, i32*, i32, i64, i32)** %48, align 8
  %50 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %8, align 8
  %54 = udiv i64 %53, 4
  %55 = call i32 %49(%struct.packet_manager* %50, i32* %51, i32 %52, i64 %54, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %74

59:                                               ; preds = %44
  %60 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %61 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %64, align 8
  %66 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %67 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 %65(%struct.TYPE_8__* %68)
  %70 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %71 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %93

74:                                               ; preds = %58
  %75 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %76 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %79, align 8
  %81 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %82 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 %80(%struct.TYPE_8__* %83)
  br label %85

85:                                               ; preds = %74, %43
  %86 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %87 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %85, %16
  %90 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %91 = call i32 @pm_release_ib(%struct.packet_manager* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %59
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pm_create_runlist_ib(%struct.packet_manager*, %struct.list_head*, i32*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_release_ib(%struct.packet_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
