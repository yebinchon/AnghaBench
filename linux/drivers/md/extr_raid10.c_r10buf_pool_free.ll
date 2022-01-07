; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_r10buf_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_r10buf_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32 }
%struct.r10bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bio*, %struct.bio* }
%struct.bio = type { i32 }
%struct.resync_pages = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @r10buf_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r10buf_pool_free(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resync_pages*, align 8
  %9 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.r10conf*
  store %struct.r10conf* %11, %struct.r10conf** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.r10bio*
  store %struct.r10bio* %13, %struct.r10bio** %6, align 8
  store %struct.resync_pages* null, %struct.resync_pages** %8, align 8
  %14 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %15 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %53, %2
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %23 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.bio*, %struct.bio** %28, align 8
  store %struct.bio* %29, %struct.bio** %9, align 8
  %30 = load %struct.bio*, %struct.bio** %9, align 8
  %31 = icmp ne %struct.bio* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = call %struct.resync_pages* @get_resync_pages(%struct.bio* %33)
  store %struct.resync_pages* %34, %struct.resync_pages** %8, align 8
  %35 = load %struct.resync_pages*, %struct.resync_pages** %8, align 8
  %36 = call i32 @resync_free_pages(%struct.resync_pages* %35)
  %37 = load %struct.bio*, %struct.bio** %9, align 8
  %38 = call i32 @bio_put(%struct.bio* %37)
  br label %39

39:                                               ; preds = %32, %21
  %40 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %41 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.bio*, %struct.bio** %46, align 8
  store %struct.bio* %47, %struct.bio** %9, align 8
  %48 = load %struct.bio*, %struct.bio** %9, align 8
  %49 = icmp ne %struct.bio* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.bio*, %struct.bio** %9, align 8
  %52 = call i32 @bio_put(%struct.bio* %51)
  br label %53

53:                                               ; preds = %50, %39
  br label %17

54:                                               ; preds = %17
  %55 = load %struct.resync_pages*, %struct.resync_pages** %8, align 8
  %56 = call i32 @kfree(%struct.resync_pages* %55)
  %57 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %58 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %59 = call i32 @rbio_pool_free(%struct.r10bio* %57, %struct.r10conf* %58)
  ret void
}

declare dso_local %struct.resync_pages* @get_resync_pages(%struct.bio*) #1

declare dso_local i32 @resync_free_pages(%struct.resync_pages*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @kfree(%struct.resync_pages*) #1

declare dso_local i32 @rbio_pool_free(%struct.r10bio*, %struct.r10conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
