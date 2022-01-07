; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_finish_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_finish_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity_io = type { i32, %struct.dm_verity* }
%struct.dm_verity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_verity_io*, i32)* @verity_finish_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verity_finish_io(%struct.dm_verity_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_verity_io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.dm_verity_io* %0, %struct.dm_verity_io** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %8 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %7, i32 0, i32 1
  %9 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  store %struct.dm_verity* %9, %struct.dm_verity** %5, align 8
  %10 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %11 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %12 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_verity_io* %10, i32 %15)
  store %struct.bio* %16, %struct.bio** %6, align 8
  %17 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %18 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dm_verity_io*, %struct.dm_verity_io** %3, align 8
  %26 = call i32 @verity_fec_finish_io(%struct.dm_verity_io* %25)
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = call i32 @bio_endio(%struct.bio* %27)
  ret void
}

declare dso_local %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_verity_io*, i32) #1

declare dso_local i32 @verity_fec_finish_io(%struct.dm_verity_io*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
