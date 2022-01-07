; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5dev*, i32, %struct.r5conf*, i32, i32, i32, i32, i32, i32, i32 }
%struct.r5dev = type { i32, i32, i32, i32 }
%struct.kmem_cache = type { i32 }
%struct.r5conf = type { i32 }

@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe_head* (%struct.kmem_cache*, i32, i32, %struct.r5conf*)* @alloc_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe_head* @alloc_stripe(%struct.kmem_cache* %0, i32 %1, i32 %2, %struct.r5conf* %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca %struct.stripe_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.r5dev*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.r5conf* %3, %struct.r5conf** %8, align 8
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.stripe_head* @kmem_cache_zalloc(%struct.kmem_cache* %12, i32 %13)
  store %struct.stripe_head* %14, %struct.stripe_head** %9, align 8
  %15 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %16 = icmp ne %struct.stripe_head* %15, null
  br i1 %16, label %17, label %88

17:                                               ; preds = %4
  %18 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 10
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 9
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 8
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %28 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %27, i32 0, i32 7
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 6
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %37 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %36, i32 0, i32 4
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  %39 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %40 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %41 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %40, i32 0, i32 3
  store %struct.r5conf* %39, %struct.r5conf** %41, align 8
  %42 = load i32, i32* @MaxSector, align 4
  %43 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %44 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %66, %17
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %51 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %50, i32 0, i32 1
  %52 = load %struct.r5dev*, %struct.r5dev** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %52, i64 %54
  store %struct.r5dev* %55, %struct.r5dev** %11, align 8
  %56 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %57 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %56, i32 0, i32 3
  %58 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %59 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %58, i32 0, i32 2
  %60 = call i32 @bio_init(i32* %57, i32* %59, i32 1)
  %61 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %62 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %61, i32 0, i32 1
  %63 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %64 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %63, i32 0, i32 0
  %65 = call i32 @bio_init(i32* %62, i32* %64, i32 1)
  br label %66

66:                                               ; preds = %49
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %71 = call i64 @raid5_has_ppl(%struct.r5conf* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @alloc_page(i32 %74)
  %76 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %77 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %79 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %84 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  %85 = call i32 @free_stripe(%struct.kmem_cache* %83, %struct.stripe_head* %84)
  store %struct.stripe_head* null, %struct.stripe_head** %9, align 8
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %4
  %89 = load %struct.stripe_head*, %struct.stripe_head** %9, align 8
  ret %struct.stripe_head* %89
}

declare dso_local %struct.stripe_head* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_init(i32*, i32*, i32) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @free_stripe(%struct.kmem_cache*, %struct.stripe_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
