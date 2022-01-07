; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_find_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_find_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip_zone = type { i64 }
%struct.r0conf = type { i32, %struct.strip_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strip_zone* (%struct.r0conf*, i64*)* @find_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strip_zone* @find_zone(%struct.r0conf* %0, i64* %1) #0 {
  %3 = alloca %struct.strip_zone*, align 8
  %4 = alloca %struct.r0conf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strip_zone*, align 8
  %8 = alloca i64, align 8
  store %struct.r0conf* %0, %struct.r0conf** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %10 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %9, i32 0, i32 1
  %11 = load %struct.strip_zone*, %struct.strip_zone** %10, align 8
  store %struct.strip_zone* %11, %struct.strip_zone** %7, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %49, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %17 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %22, i64 %24
  %26 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %21, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %34, i64 %37
  %39 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %33, %40
  %42 = load i64*, i64** %5, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %32, %29
  %44 = load %struct.strip_zone*, %struct.strip_zone** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %44, i64 %46
  store %struct.strip_zone* %47, %struct.strip_zone** %3, align 8
  br label %54

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %14

52:                                               ; preds = %14
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %52, %43
  %55 = load %struct.strip_zone*, %struct.strip_zone** %3, align 8
  ret %struct.strip_zone* %55
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
