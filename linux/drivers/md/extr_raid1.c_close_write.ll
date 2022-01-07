; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_close_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_close_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { %struct.TYPE_2__*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@R1BIO_BehindIO = common dso_local global i32 0, align 4
@R1BIO_Degraded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @close_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_write(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %3 = load i32, i32* @R1BIO_BehindIO, align 4
  %4 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %5 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %10 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @bio_free_pages(i32* %11)
  %13 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %14 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bio_put(i32* %15)
  %17 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %18 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %21 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %26 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %29 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @R1BIO_Degraded, align 4
  %32 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %33 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @R1BIO_BehindIO, align 4
  %39 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %40 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = call i32 @md_bitmap_endwrite(i32 %24, i32 %27, i32 %30, i32 %37, i64 %41)
  %43 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %44 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = call i32 @md_write_end(%struct.TYPE_2__* %45)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_free_pages(i32*) #1

declare dso_local i32 @bio_put(i32*) #1

declare dso_local i32 @md_bitmap_endwrite(i32, i32, i32, i32, i64) #1

declare dso_local i32 @md_write_end(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
