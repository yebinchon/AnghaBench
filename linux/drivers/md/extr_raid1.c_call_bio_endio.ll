; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_call_bio_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_call_bio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { %struct.r1conf* }
%struct.r1conf = type { i32 }
%struct.bio = type { i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @call_bio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_bio_endio(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.r1conf*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %5 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %6 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %5, i32 0, i32 3
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %3, align 8
  %8 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %9 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.r1conf*, %struct.r1conf** %11, align 8
  store %struct.r1conf* %12, %struct.r1conf** %4, align 8
  %13 = load i32, i32* @R1BIO_Uptodate, align 4
  %14 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %15 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @BLK_STS_IOERR, align 4
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.bio*, %struct.bio** %3, align 8
  %24 = call i32 @bio_endio(%struct.bio* %23)
  %25 = load %struct.r1conf*, %struct.r1conf** %4, align 8
  %26 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %27 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @allow_barrier(%struct.r1conf* %25, i32 %28)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @allow_barrier(%struct.r1conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
