; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_sync_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_sync_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: could not write dirty bitset\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: could not write discard bitset\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s: could not write hints\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: could not write cache metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*)* @sync_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_metadata(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %2, align 8
  %7 = load %struct.cache*, %struct.cache** %2, align 8
  %8 = call i32 @write_dirty_bitset(%struct.cache* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.cache*, %struct.cache** %2, align 8
  %13 = call i32 @cache_device_name(%struct.cache* %12)
  %14 = call i32 @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.cache*, %struct.cache** %2, align 8
  %17 = call i32 @write_discard_bitset(%struct.cache* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.cache*, %struct.cache** %2, align 8
  %22 = call i32 @cache_device_name(%struct.cache* %21)
  %23 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.cache*, %struct.cache** %2, align 8
  %26 = call i32 @save_stats(%struct.cache* %25)
  %27 = load %struct.cache*, %struct.cache** %2, align 8
  %28 = call i32 @write_hints(%struct.cache* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.cache*, %struct.cache** %2, align 8
  %33 = call i32 @cache_device_name(%struct.cache* %32)
  %34 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.cache*, %struct.cache** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %42, %39, %35
  %47 = phi i1 [ false, %39 ], [ false, %35 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @commit(%struct.cache* %36, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.cache*, %struct.cache** %2, align 8
  %54 = call i32 @cache_device_name(%struct.cache* %53)
  %55 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %65, %62, %59, %56
  %70 = phi i1 [ false, %62 ], [ false, %59 ], [ false, %56 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

declare dso_local i32 @write_dirty_bitset(%struct.cache*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @write_discard_bitset(%struct.cache*) #1

declare dso_local i32 @save_stats(%struct.cache*) #1

declare dso_local i32 @write_hints(%struct.cache*) #1

declare dso_local i32 @commit(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
