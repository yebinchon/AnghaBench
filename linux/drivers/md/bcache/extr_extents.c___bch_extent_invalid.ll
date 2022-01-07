; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c___bch_extent_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_extents.c___bch_extent_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bkey = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"spotted extent %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bch_extent_invalid(%struct.cache_set* %0, %struct.bkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca [80 x i8], align 16
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  %7 = load %struct.bkey*, %struct.bkey** %5, align 8
  %8 = call i64 @KEY_SIZE(%struct.bkey* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.bkey*, %struct.bkey** %5, align 8
  %13 = call i64 @KEY_SIZE(%struct.bkey* %12)
  %14 = load %struct.bkey*, %struct.bkey** %5, align 8
  %15 = call i64 @KEY_OFFSET(%struct.bkey* %14)
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %25

18:                                               ; preds = %11
  %19 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %20 = load %struct.bkey*, %struct.bkey** %5, align 8
  %21 = call i64 @__ptr_invalid(%struct.cache_set* %19, %struct.bkey* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

25:                                               ; preds = %23, %17
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %27 = load %struct.bkey*, %struct.bkey** %5, align 8
  %28 = call i32 @bch_extent_to_text(i8* %26, i32 80, %struct.bkey* %27)
  %29 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %31 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %32 = load %struct.bkey*, %struct.bkey** %5, align 8
  %33 = call i32 @bch_ptr_status(%struct.cache_set* %31, %struct.bkey* %32)
  %34 = call i32 @cache_bug(%struct.cache_set* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %24, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @KEY_SIZE(%struct.bkey*) #1

declare dso_local i64 @KEY_OFFSET(%struct.bkey*) #1

declare dso_local i64 @__ptr_invalid(%struct.cache_set*, %struct.bkey*) #1

declare dso_local i32 @bch_extent_to_text(i8*, i32, %struct.bkey*) #1

declare dso_local i32 @cache_bug(%struct.cache_set*, i8*, i8*, i32) #1

declare dso_local i32 @bch_ptr_status(%struct.cache_set*, %struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
