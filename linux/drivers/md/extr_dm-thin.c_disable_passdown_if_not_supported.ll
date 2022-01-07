; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_disable_passdown_if_not_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_disable_passdown_if_not_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_c = type { %struct.TYPE_4__, %struct.TYPE_5__*, %struct.pool* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.pool = type { i64 }
%struct.queue_limits = type { i64 }
%struct.TYPE_6__ = type { %struct.queue_limits }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"discard unsupported\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"max discard sectors smaller than a block\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Data device (%s) %s: Disabling discard passdown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool_c*)* @disable_passdown_if_not_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_passdown_if_not_supported(%struct.pool_c* %0) #0 {
  %2 = alloca %struct.pool_c*, align 8
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pool_c* %0, %struct.pool_c** %2, align 8
  %10 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %11 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %10, i32 0, i32 2
  %12 = load %struct.pool*, %struct.pool** %11, align 8
  store %struct.pool* %12, %struct.pool** %3, align 8
  %13 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %14 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.block_device*, %struct.block_device** %16, align 8
  store %struct.block_device* %17, %struct.block_device** %4, align 8
  %18 = load %struct.block_device*, %struct.block_device** %4, align 8
  %19 = call %struct.TYPE_6__* @bdev_get_queue(%struct.block_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.queue_limits* %20, %struct.queue_limits** %5, align 8
  store i8* null, i8** %6, align 8
  %21 = load i32, i32* @BDEVNAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %26 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %58

31:                                               ; preds = %1
  %32 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %33 = call i32 @data_dev_supports_discard(%struct.pool_c* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %46

36:                                               ; preds = %31
  %37 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %38 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pool*, %struct.pool** %3, align 8
  %41 = getelementptr inbounds %struct.pool, %struct.pool* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i8*, i8** %6, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.block_device*, %struct.block_device** %4, align 8
  %51 = call i32 @bdevname(%struct.block_device* %50, i8* %24)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load %struct.pool_c*, %struct.pool_c** %2, align 8
  %55 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %49, %46
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %62 [
    i32 0, label %61
    i32 1, label %61
  ]

61:                                               ; preds = %58, %58
  ret void

62:                                               ; preds = %58
  unreachable
}

declare dso_local %struct.TYPE_6__* @bdev_get_queue(%struct.block_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @data_dev_supports_discard(%struct.pool_c*) #1

declare dso_local i32 @DMWARN(i8*, i32, i8*) #1

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
