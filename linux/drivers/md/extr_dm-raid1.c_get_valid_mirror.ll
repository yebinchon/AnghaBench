; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_valid_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_valid_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { i32 }
%struct.mirror_set = type { i32, %struct.mirror* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mirror* (%struct.mirror_set*)* @get_valid_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mirror* @get_valid_mirror(%struct.mirror_set* %0) #0 {
  %2 = alloca %struct.mirror*, align 8
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.mirror*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  %5 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %6 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %5, i32 0, i32 1
  %7 = load %struct.mirror*, %struct.mirror** %6, align 8
  store %struct.mirror* %7, %struct.mirror** %4, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.mirror*, %struct.mirror** %4, align 8
  %10 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %11 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %10, i32 0, i32 1
  %12 = load %struct.mirror*, %struct.mirror** %11, align 8
  %13 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mirror, %struct.mirror* %12, i64 %16
  %18 = icmp ult %struct.mirror* %9, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = load %struct.mirror*, %struct.mirror** %4, align 8
  %21 = getelementptr inbounds %struct.mirror, %struct.mirror* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load %struct.mirror*, %struct.mirror** %4, align 8
  store %struct.mirror* %25, %struct.mirror** %2, align 8
  br label %31

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.mirror*, %struct.mirror** %4, align 8
  %29 = getelementptr inbounds %struct.mirror, %struct.mirror* %28, i32 1
  store %struct.mirror* %29, %struct.mirror** %4, align 8
  br label %8

30:                                               ; preds = %8
  store %struct.mirror* null, %struct.mirror** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.mirror*, %struct.mirror** %2, align 8
  ret %struct.mirror* %32
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
