; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_cache_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_cache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"%s: unable to read needs_check flag, setting failure mode.\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: unable to switch cache to write mode until repaired.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32)* @set_cache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cache_mode(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = call i32 @get_cache_mode(%struct.cache* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.cache*, %struct.cache** %3, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @dm_cache_metadata_needs_check(i32 %11, i32* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.cache*, %struct.cache** %3, align 8
  %16 = call i32 @cache_device_name(%struct.cache* %15)
  %17 = call i32 @DMERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 130, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.cache*, %struct.cache** %3, align 8
  %26 = call i32 @cache_device_name(%struct.cache* %25)
  %27 = call i32 @DMERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %24
  store i32 129, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %31
  br label %35

35:                                               ; preds = %34, %21, %18
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 130
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 130, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %51 [
    i32 130, label %41
    i32 129, label %41
    i32 128, label %46
  ]

41:                                               ; preds = %39, %39
  %42 = load %struct.cache*, %struct.cache** %3, align 8
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dm_cache_metadata_set_read_only(i32 %44)
  br label %51

46:                                               ; preds = %39
  %47 = load %struct.cache*, %struct.cache** %3, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dm_cache_metadata_set_read_write(i32 %49)
  br label %51

51:                                               ; preds = %39, %46, %41
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.cache*, %struct.cache** %3, align 8
  %54 = getelementptr inbounds %struct.cache, %struct.cache* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.cache*, %struct.cache** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @notify_mode_switch(%struct.cache* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %51
  ret void
}

declare dso_local i32 @get_cache_mode(%struct.cache*) #1

declare dso_local i64 @dm_cache_metadata_needs_check(i32, i32*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @dm_cache_metadata_set_read_only(i32) #1

declare dso_local i32 @dm_cache_metadata_set_read_write(i32) #1

declare dso_local i32 @notify_mode_switch(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
