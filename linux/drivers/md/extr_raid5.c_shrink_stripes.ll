; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_shrink_stripes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_shrink_stripes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*)* @shrink_stripes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_stripes(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %10 = call i64 @drop_one_stripe(%struct.r5conf* %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i1 [ false, %3 ], [ %11, %8 ]
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %3

15:                                               ; preds = %12
  %16 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kmem_cache_destroy(i32* %18)
  %20 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local i64 @drop_one_stripe(%struct.r5conf*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
