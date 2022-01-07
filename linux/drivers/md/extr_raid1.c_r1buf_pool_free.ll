; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_r1buf_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_r1buf_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_info = type { i32 }
%struct.r1bio = type { i32* }
%struct.resync_pages = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @r1buf_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r1buf_pool_free(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pool_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r1bio*, align 8
  %8 = alloca %struct.resync_pages*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pool_info*
  store %struct.pool_info* %10, %struct.pool_info** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.r1bio*
  store %struct.r1bio* %12, %struct.r1bio** %7, align 8
  store %struct.resync_pages* null, %struct.resync_pages** %8, align 8
  %13 = load %struct.pool_info*, %struct.pool_info** %5, align 8
  %14 = getelementptr inbounds %struct.pool_info, %struct.pool_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %20, %2
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.r1bio*, %struct.r1bio** %7, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.resync_pages* @get_resync_pages(i32 %27)
  store %struct.resync_pages* %28, %struct.resync_pages** %8, align 8
  %29 = load %struct.resync_pages*, %struct.resync_pages** %8, align 8
  %30 = call i32 @resync_free_pages(%struct.resync_pages* %29)
  %31 = load %struct.r1bio*, %struct.r1bio** %7, align 8
  %32 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bio_put(i32 %37)
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.resync_pages*, %struct.resync_pages** %8, align 8
  %41 = call i32 @kfree(%struct.resync_pages* %40)
  %42 = load %struct.r1bio*, %struct.r1bio** %7, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @rbio_pool_free(%struct.r1bio* %42, i8* %43)
  ret void
}

declare dso_local %struct.resync_pages* @get_resync_pages(i32) #1

declare dso_local i32 @resync_free_pages(%struct.resync_pages*) #1

declare dso_local i32 @bio_put(i32) #1

declare dso_local i32 @kfree(%struct.resync_pages*) #1

declare dso_local i32 @rbio_pool_free(%struct.r1bio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
