; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c___remap_to_origin_clear_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c___remap_to_origin_clear_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*, i32, i32)* @__remap_to_origin_clear_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remap_to_origin_clear_discard(%struct.cache* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cache*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load %struct.cache*, %struct.cache** %5, align 8
  %13 = load %struct.bio*, %struct.bio** %6, align 8
  %14 = call i32 @check_if_tick_bio_needed(%struct.cache* %12, %struct.bio* %13)
  br label %15

15:                                               ; preds = %11, %4
  %16 = load %struct.cache*, %struct.cache** %5, align 8
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = call i32 @remap_to_origin(%struct.cache* %16, %struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = call i64 @bio_data_dir(%struct.bio* %19)
  %21 = load i64, i64* @WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.cache*, %struct.cache** %5, align 8
  %25 = load %struct.cache*, %struct.cache** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @oblock_to_dblock(%struct.cache* %25, i32 %26)
  %28 = call i32 @clear_discard(%struct.cache* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @check_if_tick_bio_needed(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @remap_to_origin(%struct.cache*, %struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @clear_discard(%struct.cache*, i32) #1

declare dso_local i32 @oblock_to_dblock(%struct.cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
