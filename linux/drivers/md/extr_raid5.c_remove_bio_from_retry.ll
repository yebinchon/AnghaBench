; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_remove_bio_from_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_remove_bio_from_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }
%struct.r5conf = type { i32, %struct.bio*, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.r5conf*, i32*)* @remove_bio_from_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @remove_bio_from_retry(%struct.r5conf* %0, i32* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %8 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %7, i32 0, i32 2
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %6, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %18, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %19, %struct.bio** %3, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %22 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %21, i32 0, i32 1
  %23 = load %struct.bio*, %struct.bio** %22, align 8
  store %struct.bio* %23, %struct.bio** %6, align 8
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load %struct.bio*, %struct.bio** %28, align 8
  %30 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 1
  store %struct.bio* %29, %struct.bio** %31, align 8
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %33, align 8
  %34 = load i32*, i32** %5, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %36, %struct.bio** %3, align 8
  br label %37

37:                                               ; preds = %35, %12
  %38 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
