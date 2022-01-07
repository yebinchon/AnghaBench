; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_init_r1bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_init_r1bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, %struct.mddev*, i64, i32, %struct.bio* }
%struct.mddev = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*, %struct.mddev*, %struct.bio*)* @init_r1bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_r1bio(%struct.r1bio* %0, %struct.mddev* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %4, align 8
  store %struct.mddev* %1, %struct.mddev** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %9 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %8, i32 0, i32 4
  store %struct.bio* %7, %struct.bio** %9, align 8
  %10 = load %struct.bio*, %struct.bio** %6, align 8
  %11 = call i32 @bio_sectors(%struct.bio* %10)
  %12 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %13 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %15 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.mddev*, %struct.mddev** %5, align 8
  %17 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %18 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %17, i32 0, i32 1
  store %struct.mddev* %16, %struct.mddev** %18, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %24 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

declare dso_local i32 @bio_sectors(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
