; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_orphan_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_orphan_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coresight_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.coresight_connection* }
%struct.coresight_connection = type { i64, %struct.coresight_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coresight_orphan_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_orphan_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.coresight_device*, align 8
  %9 = alloca %struct.coresight_device*, align 8
  %10 = alloca %struct.coresight_connection*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.coresight_device*
  store %struct.coresight_device* %12, %struct.coresight_device** %8, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.coresight_device* @to_coresight_device(%struct.device* %13)
  store %struct.coresight_device* %14, %struct.coresight_device** %9, align 8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %16 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %17 = icmp eq %struct.coresight_device* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %21 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %70

25:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %63, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %29 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %26
  %35 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %36 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load %struct.coresight_connection*, %struct.coresight_connection** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %39, i64 %41
  store %struct.coresight_connection* %42, %struct.coresight_connection** %10, align 8
  %43 = load %struct.coresight_connection*, %struct.coresight_connection** %10, align 8
  %44 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %43, i32 0, i32 1
  %45 = load %struct.coresight_device*, %struct.coresight_device** %44, align 8
  %46 = icmp eq %struct.coresight_device* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %34
  %48 = load %struct.coresight_connection*, %struct.coresight_connection** %10, align 8
  %49 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %52 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %58 = load %struct.coresight_connection*, %struct.coresight_connection** %10, align 8
  %59 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %58, i32 0, i32 1
  store %struct.coresight_device* %57, %struct.coresight_device** %59, align 8
  br label %61

60:                                               ; preds = %47
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %69 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %24, %18
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.coresight_device* @to_coresight_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
