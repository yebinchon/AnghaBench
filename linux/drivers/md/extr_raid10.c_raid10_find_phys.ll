; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_find_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_find_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, %struct.geom, %struct.TYPE_2__*, %struct.geom }
%struct.TYPE_2__ = type { i32 }
%struct.geom = type { i32 }
%struct.r10bio = type { i64, i32 }

@MaxSector = common dso_local global i64 0, align 8
@R10BIO_Previous = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*, %struct.r10bio*)* @raid10_find_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_find_phys(%struct.r10conf* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.geom*, align 8
  store %struct.r10conf* %0, %struct.r10conf** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %6 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %7 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %6, i32 0, i32 3
  store %struct.geom* %7, %struct.geom** %5, align 8
  %8 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MaxSector, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %15 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %18 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load i32, i32* @R10BIO_Previous, align 4
  %30 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %31 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 1
  store %struct.geom* %34, %struct.geom** %5, align 8
  br label %40

35:                                               ; preds = %13, %2
  %36 = load i32, i32* @R10BIO_Previous, align 4
  %37 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %38 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.geom*, %struct.geom** %5, align 8
  %42 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %43 = call i32 @__raid10_find_phys(%struct.geom* %41, %struct.r10bio* %42)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__raid10_find_phys(%struct.geom*, %struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
