; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_bio_alloc_mddev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_bio_alloc_mddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mddev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_alloc_mddev(i32 %0, i32 %1, %struct.mddev* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mddev*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mddev* %2, %struct.mddev** %7, align 8
  %8 = load %struct.mddev*, %struct.mddev** %7, align 8
  %9 = icmp ne %struct.mddev* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.mddev*, %struct.mddev** %7, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = call i32 @bioset_initialized(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.bio* @bio_alloc(i32 %16, i32 %17)
  store %struct.bio* %18, %struct.bio** %4, align 8
  br label %25

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mddev*, %struct.mddev** %7, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = call %struct.bio* @bio_alloc_bioset(i32 %20, i32 %21, i32* %23)
  store %struct.bio* %24, %struct.bio** %4, align 8
  br label %25

25:                                               ; preds = %19, %15
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %26
}

declare dso_local i32 @bioset_initialized(i32*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
