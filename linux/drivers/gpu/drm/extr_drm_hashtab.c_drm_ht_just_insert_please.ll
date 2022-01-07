; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_just_insert_please.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_just_insert_please.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32 }
%struct.drm_hash_item = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Available key bit space exhausted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ht_just_insert_please(%struct.drm_open_hash* %0, %struct.drm_hash_item* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_open_hash*, align 8
  %9 = alloca %struct.drm_hash_item*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %8, align 8
  store %struct.drm_hash_item* %1, %struct.drm_hash_item** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = sub i64 %20, 1
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @hash_long(i64 %22, i32 %23)
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %17, align 8
  store i64 %25, i64* %16, align 8
  br label %26

26:                                               ; preds = %53, %6
  %27 = load i64, i64* %17, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 %27, %29
  %31 = load i64, i64* %13, align 8
  %32 = add i64 %30, %31
  %33 = load %struct.drm_hash_item*, %struct.drm_hash_item** %9, align 8
  %34 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.drm_open_hash*, %struct.drm_open_hash** %8, align 8
  %36 = load %struct.drm_hash_item*, %struct.drm_hash_item** %9, align 8
  %37 = call i32 @drm_ht_insert_item(%struct.drm_open_hash* %35, %struct.drm_hash_item* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load i64, i64* %17, align 8
  %42 = add i64 %41, 1
  %43 = load i64, i64* %15, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %40, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %26, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @hash_long(i64, i32) #1

declare dso_local i32 @drm_ht_insert_item(%struct.drm_open_hash*, %struct.drm_hash_item*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
