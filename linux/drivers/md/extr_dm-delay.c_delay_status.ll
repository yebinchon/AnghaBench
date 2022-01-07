; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.delay_c* }
%struct.delay_c = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%u %u %u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @delay_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delay_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.delay_c*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 0
  %15 = load %struct.delay_c*, %struct.delay_c** %14, align 8
  store %struct.delay_c* %15, %struct.delay_c** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %55 [
    i32 129, label %17
    i32 128, label %31
  ]

17:                                               ; preds = %5
  %18 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %19 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %23 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %27 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29)
  br label %55

31:                                               ; preds = %5
  %32 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %33 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %32, i32 0, i32 3
  %34 = call i32 @DMEMIT_DELAY_CLASS(%struct.TYPE_2__* %33)
  %35 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %36 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 6
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %42 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %41, i32 0, i32 2
  %43 = call i32 @DMEMIT_DELAY_CLASS(%struct.TYPE_2__* %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %46 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 9
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.delay_c*, %struct.delay_c** %11, align 8
  %52 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %51, i32 0, i32 1
  %53 = call i32 @DMEMIT_DELAY_CLASS(%struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %5, %54, %17
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @DMEMIT_DELAY_CLASS(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
