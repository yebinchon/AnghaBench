; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_cache_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_parse_cache_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_args = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_args*, i32, i8**, i8**)* @parse_cache_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cache_args(%struct.cache_args* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_arg_set, align 8
  store %struct.cache_args* %0, %struct.cache_args** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %11, i32 0, i32 1
  store i8** %14, i8*** %15, align 8
  %16 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = call i32 @parse_metadata_dev(%struct.cache_args* %16, %struct.dm_arg_set* %11, i8** %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = call i32 @parse_cache_dev(%struct.cache_args* %24, %struct.dm_arg_set* %11, i8** %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %23
  %32 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = call i32 @parse_origin_dev(%struct.cache_args* %32, %struct.dm_arg_set* %11, i8** %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %64

39:                                               ; preds = %31
  %40 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = call i32 @parse_block_size(%struct.cache_args* %40, %struct.dm_arg_set* %11, i8** %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %64

47:                                               ; preds = %39
  %48 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %49 = load i8**, i8*** %9, align 8
  %50 = call i32 @parse_features(%struct.cache_args* %48, %struct.dm_arg_set* %11, i8** %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load %struct.cache_args*, %struct.cache_args** %6, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = call i32 @parse_policy(%struct.cache_args* %56, %struct.dm_arg_set* %11, i8** %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %61, %53, %45, %37, %29, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @parse_metadata_dev(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

declare dso_local i32 @parse_cache_dev(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

declare dso_local i32 @parse_origin_dev(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

declare dso_local i32 @parse_block_size(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

declare dso_local i32 @parse_features(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

declare dso_local i32 @parse_policy(%struct.cache_args*, %struct.dm_arg_set*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
