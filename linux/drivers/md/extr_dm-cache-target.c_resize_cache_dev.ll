; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_resize_cache_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_resize_cache_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: could not resize cache metadata\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dm_cache_resize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, i32)* @resize_cache_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_cache_dev(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cache*, %struct.cache** %4, align 8
  %8 = getelementptr inbounds %struct.cache, %struct.cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dm_cache_resize(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.cache*, %struct.cache** %4, align 8
  %16 = call i32 @cache_device_name(%struct.cache* %15)
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.cache*, %struct.cache** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @metadata_operation_failed(%struct.cache* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.cache*, %struct.cache** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @set_cache_size(%struct.cache* %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @dm_cache_resize(i32, i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @metadata_operation_failed(%struct.cache*, i8*, i32) #1

declare dso_local i32 @set_cache_size(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
