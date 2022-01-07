; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_hint_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_hint_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r5conf* }
%struct.r5conf = type { %struct.ppl_conf* }
%struct.ppl_conf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*)* @ppl_write_hint_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppl_write_hint_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca %struct.ppl_conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.ppl_conf* null, %struct.ppl_conf** %7, align 8
  %8 = load %struct.mddev*, %struct.mddev** %3, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  store %struct.r5conf* %13, %struct.r5conf** %6, align 8
  %14 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %15 = icmp ne %struct.r5conf* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %18 = call i64 @raid5_has_ppl(%struct.r5conf* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %22 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %21, i32 0, i32 0
  %23 = load %struct.ppl_conf*, %struct.ppl_conf** %22, align 8
  store %struct.ppl_conf* %23, %struct.ppl_conf** %7, align 8
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.ppl_conf*, %struct.ppl_conf** %7, align 8
  %27 = icmp ne %struct.ppl_conf* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.ppl_conf*, %struct.ppl_conf** %7, align 8
  %30 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = call i64 @sprintf(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
