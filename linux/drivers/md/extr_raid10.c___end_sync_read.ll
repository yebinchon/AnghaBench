; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c___end_sync_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c___end_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bio = type { i32 }

@R10BIO_Uptodate = common dso_local global i32 0, align 4
@R10BIO_IsRecover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*, %struct.bio*, i32)* @__end_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__end_sync_read(%struct.r10bio* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r10conf*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %9 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.r10conf*, %struct.r10conf** %11, align 8
  store %struct.r10conf* %12, %struct.r10conf** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @R10BIO_Uptodate, align 4
  %19 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %20 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %27 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @atomic_add(i32 %25, i32* %34)
  br label %36

36:                                               ; preds = %22, %17
  %37 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %38 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %46 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @rdev_dec_pending(%struct.TYPE_6__* %44, i32 %47)
  %49 = load i32, i32* @R10BIO_IsRecover, align 4
  %50 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %51 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %36
  %55 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %56 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %55, i32 0, i32 0
  %57 = call i64 @atomic_dec_and_test(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %36
  %60 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %61 = call i32 @reschedule_retry(%struct.r10bio* %60)
  br label %62

62:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
