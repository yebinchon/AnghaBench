; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_scratch_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_scratch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32, i32 }
%struct.raid5_percpu = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, %struct.raid5_percpu*)* @alloc_scratch_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_scratch_buffer(%struct.r5conf* %0, %struct.raid5_percpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.raid5_percpu*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.raid5_percpu* %1, %struct.raid5_percpu** %5, align 8
  %6 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %7 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.raid5_percpu*, %struct.raid5_percpu** %5, align 8
  %12 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @alloc_page(i32 %16)
  %18 = load %struct.raid5_percpu*, %struct.raid5_percpu** %5, align 8
  %19 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.raid5_percpu*, %struct.raid5_percpu** %5, align 8
  %21 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %10, %2
  %29 = load %struct.raid5_percpu*, %struct.raid5_percpu** %5, align 8
  %30 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %34 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max(i32 %32, i32 %35)
  %37 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %38 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %41 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @max(i32 %39, i32 %42)
  %44 = load i32, i32* @STRIPE_SECTORS, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i64 @scribble_alloc(%struct.raid5_percpu* %29, i32 %36, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %28
  %50 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %51 = load %struct.raid5_percpu*, %struct.raid5_percpu** %5, align 8
  %52 = call i32 @free_scratch_buffer(%struct.r5conf* %50, %struct.raid5_percpu* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i64 @scribble_alloc(%struct.raid5_percpu*, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @free_scratch_buffer(%struct.r5conf*, %struct.raid5_percpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
