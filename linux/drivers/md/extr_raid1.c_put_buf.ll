; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_put_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_put_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { %struct.TYPE_4__*, %struct.bio**, i32 }
%struct.TYPE_4__ = type { %struct.r1conf* }
%struct.r1conf = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @put_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_buf(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %7 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %8 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.r1conf*, %struct.r1conf** %10, align 8
  store %struct.r1conf* %11, %struct.r1conf** %3, align 8
  %12 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %13 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %48, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %18 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 2
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %24 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %23, i32 0, i32 1
  %25 = load %struct.bio**, %struct.bio*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bio*, %struct.bio** %25, i64 %27
  %29 = load %struct.bio*, %struct.bio** %28, align 8
  store %struct.bio* %29, %struct.bio** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %36 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %44 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @rdev_dec_pending(i32 %42, %struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %34, %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %53 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %54 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %53, i32 0, i32 1
  %55 = call i32 @mempool_free(%struct.r1bio* %52, i32* %54)
  %56 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @lower_barrier(%struct.r1conf* %56, i32 %57)
  ret void
}

declare dso_local i32 @rdev_dec_pending(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mempool_free(%struct.r1bio*, i32*) #1

declare dso_local i32 @lower_barrier(%struct.r1conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
