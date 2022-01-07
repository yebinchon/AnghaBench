; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_retry_aligned_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_retry_aligned_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, %struct.bio* }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.stripe_head = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@STRIPE_SECTORS = common dso_local global i64 0, align 8
@R5_ReadNoMerge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.bio*, i32)* @retry_aligned_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_aligned_read(%struct.r5conf* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stripe_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @STRIPE_SECTORS, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %20, 1
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @raid5_compute_sector(%struct.r5conf* %24, i32 %25, i32 0, i32* %9, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = call i32 @bio_end_sector(%struct.bio* %27)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %84, %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %84

38:                                               ; preds = %33
  %39 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %39, i32 %40, i32 0, i32 1, i32 1)
  store %struct.stripe_head* %41, %struct.stripe_head** %8, align 8
  %42 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %43 = icmp ne %struct.stripe_head* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.bio*, %struct.bio** %6, align 8
  %46 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 3
  store %struct.bio* %45, %struct.bio** %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %4, align 4
  br label %110

52:                                               ; preds = %38
  %53 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @add_stripe_bio(%struct.stripe_head* %53, %struct.bio* %54, i32 %55, i32 0, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %52
  %59 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %60 = call i32 @raid5_release_stripe(%struct.stripe_head* %59)
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %63 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %62, i32 0, i32 3
  store %struct.bio* %61, %struct.bio** %63, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %66 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %4, align 4
  br label %110

68:                                               ; preds = %52
  %69 = load i32, i32* @R5_ReadNoMerge, align 4
  %70 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %69, i32* %76)
  %78 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %79 = call i32 @handle_stripe(%struct.stripe_head* %78)
  %80 = load %struct.stripe_head*, %struct.stripe_head** %8, align 8
  %81 = call i32 @raid5_release_stripe(%struct.stripe_head* %80)
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %68, %37
  %85 = load i64, i64* @STRIPE_SECTORS, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i64, i64* @STRIPE_SECTORS, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %29

97:                                               ; preds = %29
  %98 = load %struct.bio*, %struct.bio** %6, align 8
  %99 = call i32 @bio_endio(%struct.bio* %98)
  %100 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %101 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %100, i32 0, i32 2
  %102 = call i64 @atomic_dec_and_test(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %106 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %105, i32 0, i32 1
  %107 = call i32 @wake_up(i32* %106)
  br label %108

108:                                              ; preds = %104, %97
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %58, %44
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf*, i32, i32, i32, i32) #1

declare dso_local i32 @add_stripe_bio(%struct.stripe_head*, %struct.bio*, i32, i32, i32) #1

declare dso_local i32 @raid5_release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @handle_stripe(%struct.stripe_head*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
