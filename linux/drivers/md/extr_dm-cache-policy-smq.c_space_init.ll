; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_space_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_space_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_space = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.entry_space*, i32)* @space_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @space_init(%struct.entry_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry_space*, align 8
  %5 = alloca i32, align 4
  store %struct.entry_space* %0, %struct.entry_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %10 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %12 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  store i32 0, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @array_size(i32 %14, i32 4)
  %16 = call i32* @vzalloc(i32 %15)
  %17 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %18 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %20 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %13
  %27 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %28 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.entry_space*, %struct.entry_space** %4, align 8
  %34 = getelementptr inbounds %struct.entry_space, %struct.entry_space* %33, i32 0, i32 1
  store i32* %32, i32** %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %23, %8
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
