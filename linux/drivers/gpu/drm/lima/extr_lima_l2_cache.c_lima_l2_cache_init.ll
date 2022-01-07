; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_l2_cache.c_lima_l2_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_l2_cache.c_lima_l2_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i64, %struct.TYPE_4__, %struct.lima_device* }
%struct.TYPE_4__ = type { i32 }
%struct.lima_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@lima_ip_l2_cache2 = common dso_local global i64 0, align 8
@lima_ip_pp4 = common dso_local global i32 0, align 4
@lima_ip_pp7 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LIMA_L2_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"l2 cache %uK, %u-way, %ubyte cache line, %ubit external bus\0A\00", align 1
@LIMA_L2_CACHE_ENABLE = common dso_local global i32 0, align 4
@LIMA_L2_CACHE_ENABLE_ACCESS = common dso_local global i32 0, align 4
@LIMA_L2_CACHE_ENABLE_READ_ALLOCATE = common dso_local global i32 0, align 4
@LIMA_L2_CACHE_MAX_READS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_l2_cache_init(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lima_device*, align 8
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %8 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %9 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %8, i32 0, i32 2
  %10 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  store %struct.lima_device* %10, %struct.lima_device** %7, align 8
  %11 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %12 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @lima_ip_l2_cache2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load i32, i32* @lima_ip_pp4, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %34, %16
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @lima_ip_pp7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  %24 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %18

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @lima_ip_pp7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %86

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %47 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load i32, i32* @LIMA_L2_CACHE_SIZE, align 4
  %51 = call i32 @l2_cache_read(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  %53 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = sub nsw i32 %57, 10
  %59 = shl i32 1, %58
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = shl i32 1, %62
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 255
  %66 = shl i32 1, %65
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  %70 = shl i32 1, %69
  %71 = call i32 @dev_info(i32 %54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %66, i32 %70)
  %72 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %73 = call i32 @lima_l2_cache_flush(%struct.lima_ip* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %45
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %86

78:                                               ; preds = %45
  %79 = load i32, i32* @LIMA_L2_CACHE_ENABLE, align 4
  %80 = load i32, i32* @LIMA_L2_CACHE_ENABLE_ACCESS, align 4
  %81 = load i32, i32* @LIMA_L2_CACHE_ENABLE_READ_ALLOCATE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @l2_cache_write(i32 %79, i32 %82)
  %84 = load i32, i32* @LIMA_L2_CACHE_MAX_READS, align 4
  %85 = call i32 @l2_cache_write(i32 %84, i32 28)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %76, %41
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @l2_cache_read(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @lima_l2_cache_flush(%struct.lima_ip*) #1

declare dso_local i32 @l2_cache_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
