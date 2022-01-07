; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_next_writeset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_next_writeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writeset = type { i32 }
%struct.era_metadata = type { %struct.writeset*, %struct.writeset* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.writeset* (%struct.era_metadata*)* @next_writeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.writeset* @next_writeset(%struct.era_metadata* %0) #0 {
  %2 = alloca %struct.era_metadata*, align 8
  store %struct.era_metadata* %0, %struct.era_metadata** %2, align 8
  %3 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %4 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %3, i32 0, i32 1
  %5 = load %struct.writeset*, %struct.writeset** %4, align 8
  %6 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %6, i32 0, i32 0
  %8 = load %struct.writeset*, %struct.writeset** %7, align 8
  %9 = getelementptr inbounds %struct.writeset, %struct.writeset* %8, i64 0
  %10 = icmp eq %struct.writeset* %5, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %12, i32 0, i32 0
  %14 = load %struct.writeset*, %struct.writeset** %13, align 8
  %15 = getelementptr inbounds %struct.writeset, %struct.writeset* %14, i64 1
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.era_metadata*, %struct.era_metadata** %2, align 8
  %18 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %17, i32 0, i32 0
  %19 = load %struct.writeset*, %struct.writeset** %18, align 8
  %20 = getelementptr inbounds %struct.writeset, %struct.writeset* %19, i64 0
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi %struct.writeset* [ %15, %11 ], [ %20, %16 ]
  ret %struct.writeset* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
