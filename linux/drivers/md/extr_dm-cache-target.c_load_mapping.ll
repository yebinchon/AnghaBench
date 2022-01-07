; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32)* @load_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_mapping(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cache*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.cache*
  store %struct.cache* %17, %struct.cache** %15, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @from_cblock(i32 %21)
  %23 = load %struct.cache*, %struct.cache** %15, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_bit(i32 %22, i32 %25)
  %27 = load %struct.cache*, %struct.cache** %15, align 8
  %28 = getelementptr inbounds %struct.cache, %struct.cache* %27, i32 0, i32 2
  %29 = call i32 @atomic_inc(i32* %28)
  br label %37

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @from_cblock(i32 %31)
  %33 = load %struct.cache*, %struct.cache** %15, align 8
  %34 = getelementptr inbounds %struct.cache, %struct.cache* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %20
  %38 = load %struct.cache*, %struct.cache** %15, align 8
  %39 = getelementptr inbounds %struct.cache, %struct.cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @policy_load_mapping(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %7, align 4
  br label %52

51:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @policy_load_mapping(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
