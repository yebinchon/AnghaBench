; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_unlock_all_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-cluster.c_unlock_all_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_2__, %struct.md_cluster_info* }
%struct.TYPE_2__ = type { i32 }
%struct.md_cluster_info = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @unlock_all_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_all_bitmaps(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.md_cluster_info*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 1
  %7 = load %struct.md_cluster_info*, %struct.md_cluster_info** %6, align 8
  store %struct.md_cluster_info* %7, %struct.md_cluster_info** %3, align 8
  %8 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %9 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %40, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %23 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %32 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @lockres_free(i64 %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.md_cluster_info*, %struct.md_cluster_info** %3, align 8
  %45 = getelementptr inbounds %struct.md_cluster_info, %struct.md_cluster_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @kfree(i64* %46)
  br label %48

48:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @lockres_free(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
