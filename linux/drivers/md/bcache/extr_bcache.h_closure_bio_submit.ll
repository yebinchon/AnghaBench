; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_closure_bio_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bcache.h_closure_bio_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.bio = type { i32 }
%struct.closure = type { i32 }

@CACHE_SET_IO_DISABLE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_set*, %struct.bio*, %struct.closure*)* @closure_bio_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure_bio_submit(%struct.cache_set* %0, %struct.bio* %1, %struct.closure* %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.closure*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.closure* %2, %struct.closure** %6, align 8
  %7 = load %struct.closure*, %struct.closure** %6, align 8
  %8 = call i32 @closure_get(%struct.closure* %7)
  %9 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %10 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %11 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %10, i32 0, i32 0
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @BLK_STS_IOERR, align 4
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i32 @bio_endio(%struct.bio* %19)
  br label %24

21:                                               ; preds = %3
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = call i32 @generic_make_request(%struct.bio* %22)
  br label %24

24:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @closure_get(%struct.closure*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
