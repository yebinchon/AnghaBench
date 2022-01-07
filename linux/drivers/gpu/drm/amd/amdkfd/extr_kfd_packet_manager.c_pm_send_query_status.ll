; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_query_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_send_query_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32**)* }
%struct.TYPE_6__ = type { i32, i32 (%struct.packet_manager*, i32*, i32, i32)* }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate buffer on kernel queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_send_query_status(%struct.packet_manager* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.packet_manager* %0, %struct.packet_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %22 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %27 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %30 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_8__*, i32, i32**)*, i32 (%struct.TYPE_8__*, i32, i32**)** %33, align 8
  %35 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %36 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 %34(%struct.TYPE_8__* %37, i32 %41, i32** %8)
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %20
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %85

49:                                               ; preds = %20
  %50 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %51 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32 (%struct.packet_manager*, i32*, i32, i32)*, i32 (%struct.packet_manager*, i32*, i32, i32)** %53, align 8
  %55 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 %54(%struct.packet_manager* %55, i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %49
  %63 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %64 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %67, align 8
  %69 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %70 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = call i32 %68(%struct.TYPE_8__* %71)
  br label %84

73:                                               ; preds = %49
  %74 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %75 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %78, align 8
  %80 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %81 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 %79(%struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %73, %62
  br label %85

85:                                               ; preds = %84, %45
  %86 = load %struct.packet_manager*, %struct.packet_manager** %5, align 8
  %87 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
