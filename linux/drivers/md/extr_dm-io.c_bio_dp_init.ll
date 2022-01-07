; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_bio_dp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_bio_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpages = type { i32, i32, i32, i32 }
%struct.bio = type { i32, i32 }

@bio_get_page = common dso_local global i32 0, align 4
@bio_next_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpages*, %struct.bio*)* @bio_dp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_dp_init(%struct.dpages* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dpages*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dpages* %0, %struct.dpages** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load i32, i32* @bio_get_page, align 4
  %6 = load %struct.dpages*, %struct.dpages** %3, align 8
  %7 = getelementptr inbounds %struct.dpages, %struct.dpages* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @bio_next_page, align 4
  %9 = load %struct.dpages*, %struct.dpages** %3, align 8
  %10 = getelementptr inbounds %struct.dpages, %struct.dpages* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dpages*, %struct.dpages** %3, align 8
  %15 = getelementptr inbounds %struct.dpages, %struct.dpages* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dpages*, %struct.dpages** %3, align 8
  %20 = getelementptr inbounds %struct.dpages, %struct.dpages* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
