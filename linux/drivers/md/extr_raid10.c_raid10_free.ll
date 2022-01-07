; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }
%struct.r10conf = type { i32, %struct.r10conf*, %struct.r10conf*, %struct.r10conf*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, i8*)* @raid10_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_free(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r10conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.r10conf*
  store %struct.r10conf* %7, %struct.r10conf** %5, align 8
  %8 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 5
  %10 = call i32 @mempool_exit(i32* %9)
  %11 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %12 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @safe_put_page(i32 %13)
  %15 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 3
  %17 = load %struct.r10conf*, %struct.r10conf** %16, align 8
  %18 = call i32 @kfree(%struct.r10conf* %17)
  %19 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 2
  %21 = load %struct.r10conf*, %struct.r10conf** %20, align 8
  %22 = call i32 @kfree(%struct.r10conf* %21)
  %23 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %24 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %23, i32 0, i32 1
  %25 = load %struct.r10conf*, %struct.r10conf** %24, align 8
  %26 = call i32 @kfree(%struct.r10conf* %25)
  %27 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 0
  %29 = call i32 @bioset_exit(i32* %28)
  %30 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %31 = call i32 @kfree(%struct.r10conf* %30)
  ret void
}

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @safe_put_page(i32) #1

declare dso_local i32 @kfree(%struct.r10conf*) #1

declare dso_local i32 @bioset_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
