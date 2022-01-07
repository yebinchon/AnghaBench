; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_find_bio_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_find_bio_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { %struct.bio**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.r1conf* }
%struct.r1conf = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r1bio*, %struct.bio*)* @find_bio_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_bio_disk(%struct.r1bio* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.r1bio*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r1conf*, align 8
  %7 = alloca i32, align 4
  store %struct.r1bio* %0, %struct.r1bio** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %9 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.r1conf*, %struct.r1conf** %11, align 8
  store %struct.r1conf* %12, %struct.r1conf** %6, align 8
  %13 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %14 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %23 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %22, i32 0, i32 0
  %24 = load %struct.bio**, %struct.bio*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bio*, %struct.bio** %24, i64 %26
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = icmp eq %struct.bio* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %36

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %31, %16
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 2
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %45 = call i32 @update_head_pos(i32 %43, %struct.r1bio* %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @update_head_pos(i32, %struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
