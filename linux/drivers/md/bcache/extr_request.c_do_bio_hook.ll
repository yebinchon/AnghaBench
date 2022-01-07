; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_do_bio_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_do_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio }
%struct.bio = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.search*, %struct.bio*, i32*)* @do_bio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bio_hook(%struct.search* %0, %struct.bio* %1, i32* %2) #0 {
  %4 = alloca %struct.search*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.search* %0, %struct.search** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.search*, %struct.search** %4, align 8
  %9 = getelementptr inbounds %struct.search, %struct.search* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %7, align 8
  %12 = call i32 @bio_init(%struct.bio* %11, i32* null, i32 0)
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = call i32 @__bio_clone_fast(%struct.bio* %13, %struct.bio* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.search*, %struct.search** %4, align 8
  %20 = getelementptr inbounds %struct.search, %struct.search* %19, i32 0, i32 0
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.bio*, %struct.bio** %7, align 8
  %24 = call i32 @bio_cnt_set(%struct.bio* %23, i32 3)
  ret void
}

declare dso_local i32 @bio_init(%struct.bio*, i32*, i32) #1

declare dso_local i32 @__bio_clone_fast(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @bio_cnt_set(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
