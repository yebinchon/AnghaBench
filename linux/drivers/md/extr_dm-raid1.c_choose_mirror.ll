; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_choose_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_choose_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { i32 }
%struct.mirror_set = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mirror* (%struct.mirror_set*, i32)* @choose_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mirror* @choose_mirror(%struct.mirror_set* %0, i32 %1) #0 {
  %3 = alloca %struct.mirror*, align 8
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mirror*, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %8 = call %struct.mirror* @get_default_mirror(%struct.mirror_set* %7)
  store %struct.mirror* %8, %struct.mirror** %6, align 8
  br label %9

9:                                                ; preds = %37, %2
  %10 = load %struct.mirror*, %struct.mirror** %6, align 8
  %11 = getelementptr inbounds %struct.mirror, %struct.mirror* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load %struct.mirror*, %struct.mirror** %6, align 8
  store %struct.mirror* %19, %struct.mirror** %3, align 8
  br label %43

20:                                               ; preds = %9
  %21 = load %struct.mirror*, %struct.mirror** %6, align 8
  %22 = getelementptr inbounds %struct.mirror, %struct.mirror* %21, i32 -1
  store %struct.mirror* %22, %struct.mirror** %6, align 8
  %23 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %24 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.mirror*
  %28 = icmp eq %struct.mirror* %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %31 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mirror*, %struct.mirror** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.mirror, %struct.mirror* %33, i64 %34
  store %struct.mirror* %35, %struct.mirror** %6, align 8
  br label %36

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.mirror*, %struct.mirror** %6, align 8
  %39 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %40 = call %struct.mirror* @get_default_mirror(%struct.mirror_set* %39)
  %41 = icmp ne %struct.mirror* %38, %40
  br i1 %41, label %9, label %42

42:                                               ; preds = %37
  store %struct.mirror* null, %struct.mirror** %3, align 8
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.mirror*, %struct.mirror** %3, align 8
  ret %struct.mirror* %44
}

declare dso_local %struct.mirror* @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
