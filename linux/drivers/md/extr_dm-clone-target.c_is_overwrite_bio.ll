; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_is_overwrite_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_is_overwrite_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { i64 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*, %struct.bio*)* @is_overwrite_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_overwrite_bio(%struct.clone* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = call i64 @bio_data_dir(%struct.bio* %5)
  %7 = load i64, i64* @WRITE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i64 @bio_sectors(%struct.bio* %10)
  %12 = load %struct.clone*, %struct.clone** %3, align 8
  %13 = getelementptr inbounds %struct.clone, %struct.clone* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br label %16

16:                                               ; preds = %9, %2
  %17 = phi i1 [ false, %2 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
