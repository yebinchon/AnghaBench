; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_remove_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_remove_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coresight_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.coresight_connection* }
%struct.coresight_connection = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coresight_remove_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_remove_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.coresight_device*, align 8
  %8 = alloca %struct.coresight_device*, align 8
  %9 = alloca %struct.coresight_connection*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.coresight_device*
  store %struct.coresight_device* %11, %struct.coresight_device** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.coresight_device* @to_coresight_device(%struct.device* %12)
  store %struct.coresight_device* %13, %struct.coresight_device** %8, align 8
  %14 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %16 = icmp eq %struct.coresight_device* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %60, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %22 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %19
  %28 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %29 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.coresight_connection*, %struct.coresight_connection** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %32, i64 %34
  store %struct.coresight_connection* %35, %struct.coresight_connection** %9, align 8
  %36 = load %struct.coresight_connection*, %struct.coresight_connection** %9, align 8
  %37 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %60

41:                                               ; preds = %27
  %42 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %43 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.coresight_connection*, %struct.coresight_connection** %9, align 8
  %47 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %52 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.coresight_connection*, %struct.coresight_connection** %9, align 8
  %54 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.coresight_connection*, %struct.coresight_connection** %9, align 8
  %56 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @fwnode_handle_put(i64 %57)
  br label %63

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %19

63:                                               ; preds = %50, %19
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.coresight_device* @to_coresight_device(%struct.device*) #1

declare dso_local i32 @fwnode_handle_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
