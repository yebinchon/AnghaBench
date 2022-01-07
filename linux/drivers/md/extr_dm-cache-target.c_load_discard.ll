; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_load_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_load_info = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @load_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_discard(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.discard_load_info*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.discard_load_info*
  store %struct.discard_load_info* %11, %struct.discard_load_info** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %14 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @from_dblock(i32 %18)
  %20 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %21 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %26 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %30 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %44

31:                                               ; preds = %17
  %32 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %33 = call i32 @set_discard_range(%struct.discard_load_info* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @from_dblock(i32 %34)
  %36 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %37 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %39 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  %42 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %43 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %31, %24
  br label %52

45:                                               ; preds = %4
  %46 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %47 = call i32 @set_discard_range(%struct.discard_load_info* %46)
  %48 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %49 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.discard_load_info*, %struct.discard_load_info** %9, align 8
  %51 = getelementptr inbounds %struct.discard_load_info, %struct.discard_load_info* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %44
  ret i32 0
}

declare dso_local i64 @from_dblock(i32) #1

declare dso_local i32 @set_discard_range(%struct.discard_load_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
