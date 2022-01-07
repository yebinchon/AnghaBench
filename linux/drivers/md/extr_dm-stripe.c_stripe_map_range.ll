; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_map_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_map_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_c = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_c*, %struct.bio*, i64)* @stripe_map_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_map_range(%struct.stripe_c* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stripe_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.stripe_c* %0, %struct.stripe_c** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %6, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @stripe_map_range_sector(%struct.stripe_c* %10, i64 %14, i64 %15, i64* %8)
  %17 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = call i64 @bio_end_sector(%struct.bio* %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @stripe_map_range_sector(%struct.stripe_c* %17, i64 %19, i64 %20, i64* %9)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %3
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  %27 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %28 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bio_set_dev(%struct.bio* %26, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.stripe_c*, %struct.stripe_c** %5, align 8
  %39 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %37, %44
  %46 = load %struct.bio*, %struct.bio** %6, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i32 @to_bytes(i64 %51)
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %3
  %58 = load %struct.bio*, %struct.bio** %6, align 8
  %59 = call i32 @bio_endio(%struct.bio* %58)
  %60 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @stripe_map_range_sector(%struct.stripe_c*, i64, i64, i64*) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @to_bytes(i64) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
