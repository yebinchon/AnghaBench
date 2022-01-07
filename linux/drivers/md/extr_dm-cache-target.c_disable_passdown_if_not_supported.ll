; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_disable_passdown_if_not_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_disable_passdown_if_not_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.block_device* }
%struct.block_device = type { i32 }
%struct.queue_limits = type { i64 }
%struct.TYPE_6__ = type { %struct.queue_limits }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"discard unsupported\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"max discard sectors smaller than a block\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Origin device (%s) %s: Disabling discard passdown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @disable_passdown_if_not_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_passdown_if_not_supported(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %2, align 8
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.block_device*, %struct.block_device** %12, align 8
  store %struct.block_device* %13, %struct.block_device** %3, align 8
  %14 = load %struct.block_device*, %struct.block_device** %3, align 8
  %15 = call %struct.TYPE_6__* @bdev_get_queue(%struct.block_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.queue_limits* %16, %struct.queue_limits** %4, align 8
  store i8* null, i8** %5, align 8
  %17 = load i32, i32* @BDEVNAME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.cache*, %struct.cache** %2, align 8
  %22 = getelementptr inbounds %struct.cache, %struct.cache* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %54

27:                                               ; preds = %1
  %28 = load %struct.block_device*, %struct.block_device** %3, align 8
  %29 = call i32 @origin_dev_supports_discard(%struct.block_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %42

32:                                               ; preds = %27
  %33 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %34 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cache*, %struct.cache** %2, align 8
  %37 = getelementptr inbounds %struct.cache, %struct.cache* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %41

41:                                               ; preds = %40, %32
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.block_device*, %struct.block_device** %3, align 8
  %47 = call i32 @bdevname(%struct.block_device* %46, i8* %20)
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %48)
  %50 = load %struct.cache*, %struct.cache** %2, align 8
  %51 = getelementptr inbounds %struct.cache, %struct.cache* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %42
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %58 [
    i32 0, label %57
    i32 1, label %57
  ]

57:                                               ; preds = %54, %54
  ret void

58:                                               ; preds = %54
  unreachable
}

declare dso_local %struct.TYPE_6__* @bdev_get_queue(%struct.block_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @origin_dev_supports_discard(%struct.block_device*) #1

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
