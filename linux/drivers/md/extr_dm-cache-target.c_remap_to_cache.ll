; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_remap_to_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_remap_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*, i32)* @remap_to_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_to_cache(%struct.cache* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @from_cblock(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = load %struct.cache*, %struct.cache** %4, align 8
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bio_set_dev(%struct.bio* %15, i32 %20)
  %22 = load %struct.cache*, %struct.cache** %4, align 8
  %23 = call i32 @block_size_is_power_of_two(%struct.cache* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.cache*, %struct.cache** %4, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.cache*, %struct.cache** %4, align 8
  %33 = getelementptr inbounds %struct.cache, %struct.cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sector_div(i32 %31, i32 %34)
  %36 = add nsw i32 %30, %35
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %56

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.cache*, %struct.cache** %4, align 8
  %43 = getelementptr inbounds %struct.cache, %struct.cache* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.cache*, %struct.cache** %4, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %46, %50
  %52 = or i32 %45, %51
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @block_size_is_power_of_two(%struct.cache*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
