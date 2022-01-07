; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_calc_rlib_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_packet_manager.c_pm_calc_rlib_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_manager = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Over subscribed runlist\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"runlist ib size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_manager*, i32*, i32*)* @pm_calc_rlib_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_calc_rlib_size(%struct.packet_manager* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.packet_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kfd_dev*, align 8
  store %struct.packet_manager* %0, %struct.packet_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %11, align 4
  %13 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %14 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %16, align 8
  store %struct.kfd_dev* %17, %struct.kfd_dev** %12, align 8
  %18 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %19 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %24 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %30 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sub i32 %28, %33
  %35 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %36 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %34, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 0, i32* %41, align 4
  %42 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %43 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load %struct.kfd_dev*, %struct.kfd_dev** %12, align 8
  %48 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %3
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %57 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @get_queues_num(%struct.TYPE_4__* %58)
  %60 = icmp ugt i32 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54, %50
  %62 = load i32*, i32** %6, align 8
  store i32 1, i32* %62, align 4
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %66 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %72 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul i32 %70, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul i32 %77, %78
  %80 = add i32 %76, %79
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %64
  %86 = load %struct.packet_manager*, %struct.packet_manager** %4, align 8
  %87 = getelementptr inbounds %struct.packet_manager, %struct.packet_manager* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %93, %90
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %85, %64
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  ret void
}

declare dso_local i32 @get_queues_num(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
