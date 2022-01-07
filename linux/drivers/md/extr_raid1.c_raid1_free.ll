; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.r1conf = type { i32, %struct.r1conf*, %struct.r1conf*, %struct.r1conf*, %struct.r1conf*, %struct.r1conf*, i32, %struct.r1conf*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i8*)* @raid1_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_free(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r1conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.r1conf*
  store %struct.r1conf* %7, %struct.r1conf** %5, align 8
  %8 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %9 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %8, i32 0, i32 8
  %10 = call i32 @mempool_exit(i32* %9)
  %11 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %12 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %11, i32 0, i32 7
  %13 = load %struct.r1conf*, %struct.r1conf** %12, align 8
  %14 = call i32 @kfree(%struct.r1conf* %13)
  %15 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %16 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @safe_put_page(i32 %17)
  %19 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %20 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %19, i32 0, i32 5
  %21 = load %struct.r1conf*, %struct.r1conf** %20, align 8
  %22 = call i32 @kfree(%struct.r1conf* %21)
  %23 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %24 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %23, i32 0, i32 4
  %25 = load %struct.r1conf*, %struct.r1conf** %24, align 8
  %26 = call i32 @kfree(%struct.r1conf* %25)
  %27 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %28 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %27, i32 0, i32 3
  %29 = load %struct.r1conf*, %struct.r1conf** %28, align 8
  %30 = call i32 @kfree(%struct.r1conf* %29)
  %31 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %32 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %31, i32 0, i32 2
  %33 = load %struct.r1conf*, %struct.r1conf** %32, align 8
  %34 = call i32 @kfree(%struct.r1conf* %33)
  %35 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %36 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %35, i32 0, i32 1
  %37 = load %struct.r1conf*, %struct.r1conf** %36, align 8
  %38 = call i32 @kfree(%struct.r1conf* %37)
  %39 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 0
  %41 = call i32 @bioset_exit(i32* %40)
  %42 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %43 = call i32 @kfree(%struct.r1conf* %42)
  ret void
}

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.r1conf*) #1

declare dso_local i32 @safe_put_page(i32) #1

declare dso_local i32 @bioset_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
