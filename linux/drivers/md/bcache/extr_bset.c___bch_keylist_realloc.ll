; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___bch_keylist_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___bch_keylist_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keylist = type { i32*, i32*, i32* }

@KEYLIST_INLINE = common dso_local global i64 0, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bch_keylist_realloc(%struct.keylist* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.keylist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.keylist* %0, %struct.keylist** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.keylist*, %struct.keylist** %4, align 8
  %11 = call i64 @bch_keylist_nkeys(%struct.keylist* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %12, %14
  store i64 %15, i64* %7, align 8
  %16 = load %struct.keylist*, %struct.keylist** %4, align 8
  %17 = getelementptr inbounds %struct.keylist, %struct.keylist* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.keylist*, %struct.keylist** %4, align 8
  %20 = getelementptr inbounds %struct.keylist, %struct.keylist* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.keylist*, %struct.keylist** %4, align 8
  %26 = getelementptr inbounds %struct.keylist, %struct.keylist* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32* [ null, %23 ], [ %27, %24 ]
  store i32* %29, i32** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @roundup_pow_of_two(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @KEYLIST_INLINE, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @roundup_pow_of_two(i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %28
  store i32 0, i32* %3, align 4
  br label %74

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = mul i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call i32* @krealloc(i32* %42, i32 %45, i32 %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %41
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.keylist*, %struct.keylist** %4, align 8
  %59 = getelementptr inbounds %struct.keylist, %struct.keylist* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %57, i32* %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %53
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.keylist*, %struct.keylist** %4, align 8
  %68 = getelementptr inbounds %struct.keylist, %struct.keylist* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load %struct.keylist*, %struct.keylist** %4, align 8
  %73 = getelementptr inbounds %struct.keylist, %struct.keylist* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %50, %40
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @bch_keylist_nkeys(%struct.keylist*) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
