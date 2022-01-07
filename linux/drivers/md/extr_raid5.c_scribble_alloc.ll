; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_scribble_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_scribble_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid5_percpu = type { i64, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid5_percpu*, i32, i32, i32)* @scribble_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scribble_alloc(%struct.raid5_percpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.raid5_percpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.raid5_percpu* %0, %struct.raid5_percpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = add i64 %15, %19
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @kvmalloc_array(i32 %21, i64 %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %4
  %31 = load %struct.raid5_percpu*, %struct.raid5_percpu** %6, align 8
  %32 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @kvfree(i8* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.raid5_percpu*, %struct.raid5_percpu** %6, align 8
  %37 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.raid5_percpu*, %struct.raid5_percpu** %6, align 8
  %40 = getelementptr inbounds %struct.raid5_percpu, %struct.raid5_percpu* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i8* @kvmalloc_array(i32, i64, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
