; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_4__*, %struct.pool* }
%struct.TYPE_4__ = type { i32 }
%struct.pool = type { i32, i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32)* @remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap(%struct.thin_c* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pool*, align 8
  %8 = alloca i32, align 4
  store %struct.thin_c* %0, %struct.thin_c** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %10 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %9, i32 0, i32 1
  %11 = load %struct.pool*, %struct.pool** %10, align 8
  store %struct.pool* %11, %struct.pool** %7, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %18 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bio_set_dev(%struct.bio* %16, i32 %21)
  %23 = load %struct.pool*, %struct.pool** %7, align 8
  %24 = call i64 @block_size_is_power_of_two(%struct.pool* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pool*, %struct.pool** %7, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.pool*, %struct.pool** %7, align 8
  %34 = getelementptr inbounds %struct.pool, %struct.pool* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %32, %36
  %38 = or i32 %31, %37
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %57

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pool*, %struct.pool** %7, align 8
  %45 = getelementptr inbounds %struct.pool, %struct.pool* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.pool*, %struct.pool** %7, align 8
  %50 = getelementptr inbounds %struct.pool, %struct.pool* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sector_div(i32 %48, i32 %51)
  %53 = add nsw i32 %47, %52
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %42, %26
  ret void
}

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @block_size_is_power_of_two(%struct.pool*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
