; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_entry_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_get_entry_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.applesmc_entry* }
%struct.applesmc_entry = type { i32, i8*, i32, i8*, i32 }

@smcreg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@APPLESMC_GET_KEY_BY_INDEX_CMD = common dso_local global i32 0, align 4
@APPLESMC_GET_KEY_TYPE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.applesmc_entry* (i32)* @applesmc_get_entry_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.applesmc_entry* @applesmc_get_entry_by_index(i32 %0) #0 {
  %2 = alloca %struct.applesmc_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.applesmc_entry*, align 8
  %5 = alloca [4 x i8*], align 16
  %6 = alloca [6 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load %struct.applesmc_entry*, %struct.applesmc_entry** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 1), align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %9, i64 %11
  store %struct.applesmc_entry* %12, %struct.applesmc_entry** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %14 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  store %struct.applesmc_entry* %18, %struct.applesmc_entry** %2, align 8
  br label %74

19:                                               ; preds = %1
  %20 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0))
  %21 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %22 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %65

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @cpu_to_be32(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @APPLESMC_GET_KEY_BY_INDEX_CMD, align 4
  %30 = bitcast i32* %7 to i8**
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %32 = call i32 @read_smc(i32 %29, i8** %30, i8** %31, i32 4)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %65

36:                                               ; preds = %26
  %37 = load i32, i32* @APPLESMC_GET_KEY_TYPE_CMD, align 4
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %39 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %40 = call i32 @read_smc(i32 %37, i8** %38, i8** %39, i32 6)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %65

44:                                               ; preds = %36
  %45 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %46 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %5, i64 0, i64 0
  %49 = call i32 @memcpy(i32 %47, i8** %48, i32 4)
  %50 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 0
  %51 = load i8*, i8** %50, align 16
  %52 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %53 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %55 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 1
  %58 = call i32 @memcpy(i32 %56, i8** %57, i32 4)
  %59 = getelementptr inbounds [6 x i8*], [6 x i8*]* %6, i64 0, i64 5
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %62 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %64 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %44, %43, %35, %25
  %66 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0))
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.applesmc_entry* @ERR_PTR(i32 %70)
  store %struct.applesmc_entry* %71, %struct.applesmc_entry** %2, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  store %struct.applesmc_entry* %73, %struct.applesmc_entry** %2, align 8
  br label %74

74:                                               ; preds = %72, %69, %17
  %75 = load %struct.applesmc_entry*, %struct.applesmc_entry** %2, align 8
  ret %struct.applesmc_entry* %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @read_smc(i32, i8**, i8**, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.applesmc_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
