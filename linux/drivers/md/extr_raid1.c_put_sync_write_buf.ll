; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_put_sync_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_put_sync_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, i32, %struct.mddev*, i32 }
%struct.mddev = type { i32 }

@R1BIO_MadeGood = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*, i32)* @put_sync_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_sync_write_buf(%struct.r1bio* %0, i32 %1) #0 {
  %3 = alloca %struct.r1bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i32, align 4
  store %struct.r1bio* %0, %struct.r1bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %8 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %7, i32 0, i32 3
  %9 = call i64 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %13 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %12, i32 0, i32 2
  %14 = load %struct.mddev*, %struct.mddev** %13, align 8
  store %struct.mddev* %14, %struct.mddev** %5, align 8
  %15 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @R1BIO_MadeGood, align 4
  %19 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %20 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @R1BIO_WriteError, align 4
  %25 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %26 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %11
  %30 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %31 = call i32 @reschedule_retry(%struct.r1bio* %30)
  br label %39

32:                                               ; preds = %23
  %33 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %34 = call i32 @put_buf(%struct.r1bio* %33)
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @md_done_sync(%struct.mddev* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r1bio*) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local i32 @md_done_sync(%struct.mddev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
