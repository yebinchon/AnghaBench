; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_format_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_format_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era_metadata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.era_metadata*)* @format_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_metadata(%struct.era_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.era_metadata*, align 8
  %4 = alloca i32, align 4
  store %struct.era_metadata* %0, %struct.era_metadata** %3, align 8
  %5 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %6 = call i32 @create_fresh_metadata(%struct.era_metadata* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %13 = call i32 @write_superblock(%struct.era_metadata* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %18 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dm_sm_destroy(i32 %19)
  %21 = load %struct.era_metadata*, %struct.era_metadata** %3, align 8
  %22 = getelementptr inbounds %struct.era_metadata, %struct.era_metadata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dm_tm_destroy(i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %16, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @create_fresh_metadata(%struct.era_metadata*) #1

declare dso_local i32 @write_superblock(%struct.era_metadata*) #1

declare dso_local i32 @dm_sm_destroy(i32) #1

declare dso_local i32 @dm_tm_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
